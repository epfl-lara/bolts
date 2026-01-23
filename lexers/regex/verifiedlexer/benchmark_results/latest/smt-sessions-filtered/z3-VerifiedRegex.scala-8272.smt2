; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429766 () Bool)

(assert start!429766)

(declare-fun b!4414095 () Bool)

(declare-fun res!1822676 () Bool)

(declare-fun e!2748742 () Bool)

(assert (=> b!4414095 (=> (not res!1822676) (not e!2748742))))

(declare-datatypes ((K!10765 0))(
  ( (K!10766 (val!16883 Int)) )
))
(declare-fun key!3717 () K!10765)

(declare-datatypes ((Hashable!5071 0))(
  ( (HashableExt!5070 (__x!30774 Int)) )
))
(declare-fun hashF!1220 () Hashable!5071)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1984 (Hashable!5071 K!10765) (_ BitVec 64))

(assert (=> b!4414095 (= res!1822676 (= (hash!1984 hashF!1220 key!3717) hash!366))))

(declare-fun b!4414096 () Bool)

(declare-fun res!1822667 () Bool)

(declare-fun e!2748745 () Bool)

(assert (=> b!4414096 (=> res!1822667 e!2748745)))

(declare-datatypes ((V!11011 0))(
  ( (V!11012 (val!16884 Int)) )
))
(declare-datatypes ((tuple2!49086 0))(
  ( (tuple2!49087 (_1!27837 K!10765) (_2!27837 V!11011)) )
))
(declare-datatypes ((List!49531 0))(
  ( (Nil!49407) (Cons!49407 (h!55060 tuple2!49086) (t!356469 List!49531)) )
))
(declare-datatypes ((tuple2!49088 0))(
  ( (tuple2!49089 (_1!27838 (_ BitVec 64)) (_2!27838 List!49531)) )
))
(declare-datatypes ((List!49532 0))(
  ( (Nil!49408) (Cons!49408 (h!55061 tuple2!49088) (t!356470 List!49532)) )
))
(declare-datatypes ((ListLongMap!1991 0))(
  ( (ListLongMap!1992 (toList!3341 List!49532)) )
))
(declare-fun lt!1615972 () ListLongMap!1991)

(declare-fun lm!1616 () ListLongMap!1991)

(declare-fun tail!7165 (List!49532) List!49532)

(assert (=> b!4414096 (= res!1822667 (not (= (tail!7165 (toList!3341 lt!1615972)) (t!356470 (toList!3341 lm!1616)))))))

(declare-fun e!2748740 () Bool)

(declare-fun tp_is_empty!25955 () Bool)

(declare-fun tp_is_empty!25953 () Bool)

(declare-fun tp!1332433 () Bool)

(declare-fun b!4414097 () Bool)

(assert (=> b!4414097 (= e!2748740 (and tp_is_empty!25955 tp_is_empty!25953 tp!1332433))))

(declare-fun b!4414098 () Bool)

(declare-fun e!2748739 () Bool)

(assert (=> b!4414098 (= e!2748745 e!2748739)))

(declare-fun res!1822668 () Bool)

(assert (=> b!4414098 (=> res!1822668 e!2748739)))

(declare-datatypes ((ListMap!2585 0))(
  ( (ListMap!2586 (toList!3342 List!49531)) )
))
(declare-fun lt!1615970 () ListMap!2585)

(declare-fun lt!1615975 () ListMap!2585)

(assert (=> b!4414098 (= res!1822668 (not (= lt!1615970 lt!1615975)))))

(declare-fun newBucket!194 () List!49531)

(declare-fun lt!1615968 () ListMap!2585)

(declare-fun addToMapMapFromBucket!331 (List!49531 ListMap!2585) ListMap!2585)

(assert (=> b!4414098 (= lt!1615975 (addToMapMapFromBucket!331 newBucket!194 lt!1615968))))

(declare-fun extractMap!738 (List!49532) ListMap!2585)

(assert (=> b!4414098 (= lt!1615970 (extractMap!738 (toList!3341 lt!1615972)))))

(assert (=> b!4414098 (= lt!1615968 (extractMap!738 (t!356470 (toList!3341 lm!1616))))))

(declare-fun b!4414099 () Bool)

(declare-fun res!1822681 () Bool)

(assert (=> b!4414099 (=> res!1822681 e!2748745)))

(declare-fun lt!1615973 () Bool)

(get-info :version)

(assert (=> b!4414099 (= res!1822681 (or (not ((_ is Cons!49408) (toList!3341 lm!1616))) (not (= (_1!27838 (h!55061 (toList!3341 lm!1616))) hash!366)) lt!1615973))))

(declare-fun b!4414100 () Bool)

(declare-fun e!2748738 () Bool)

(assert (=> b!4414100 (= e!2748742 e!2748738)))

(declare-fun res!1822678 () Bool)

(assert (=> b!4414100 (=> (not res!1822678) (not e!2748738))))

(declare-fun e!2748744 () Bool)

(assert (=> b!4414100 (= res!1822678 e!2748744)))

(declare-fun res!1822675 () Bool)

(assert (=> b!4414100 (=> res!1822675 e!2748744)))

(declare-fun e!2748741 () Bool)

(assert (=> b!4414100 (= res!1822675 e!2748741)))

(declare-fun res!1822669 () Bool)

(assert (=> b!4414100 (=> (not res!1822669) (not e!2748741))))

(assert (=> b!4414100 (= res!1822669 (not lt!1615973))))

(declare-fun lt!1615969 () Bool)

(assert (=> b!4414100 (= lt!1615973 (not lt!1615969))))

(declare-fun contains!11849 (ListLongMap!1991 (_ BitVec 64)) Bool)

(assert (=> b!4414100 (= lt!1615969 (contains!11849 lm!1616 hash!366))))

(declare-fun b!4414101 () Bool)

(assert (=> b!4414101 (= e!2748738 (not e!2748745))))

(declare-fun res!1822673 () Bool)

(assert (=> b!4414101 (=> res!1822673 e!2748745)))

(declare-fun lambda!151414 () Int)

(declare-fun forall!9452 (List!49532 Int) Bool)

(assert (=> b!4414101 (= res!1822673 (not (forall!9452 (toList!3341 lt!1615972) lambda!151414)))))

(assert (=> b!4414101 (forall!9452 (toList!3341 lt!1615972) lambda!151414)))

(declare-fun lt!1615976 () tuple2!49088)

(declare-fun +!954 (ListLongMap!1991 tuple2!49088) ListLongMap!1991)

(assert (=> b!4414101 (= lt!1615972 (+!954 lm!1616 lt!1615976))))

(assert (=> b!4414101 (= lt!1615976 (tuple2!49089 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80601 0))(
  ( (Unit!80602) )
))
(declare-fun lt!1615971 () Unit!80601)

(declare-fun addValidProp!321 (ListLongMap!1991 Int (_ BitVec 64) List!49531) Unit!80601)

(assert (=> b!4414101 (= lt!1615971 (addValidProp!321 lm!1616 lambda!151414 hash!366 newBucket!194))))

(declare-fun b!4414102 () Bool)

(declare-fun e!2748743 () Bool)

(declare-fun tp!1332434 () Bool)

(assert (=> b!4414102 (= e!2748743 tp!1332434)))

(declare-fun b!4414103 () Bool)

(declare-fun res!1822674 () Bool)

(assert (=> b!4414103 (=> res!1822674 e!2748745)))

(declare-fun head!9156 (List!49532) tuple2!49088)

(assert (=> b!4414103 (= res!1822674 (not (= (head!9156 (toList!3341 lt!1615972)) lt!1615976)))))

(declare-fun b!4414104 () Bool)

(declare-fun newValue!93 () V!11011)

(declare-fun apply!11529 (ListLongMap!1991 (_ BitVec 64)) List!49531)

(assert (=> b!4414104 (= e!2748741 (= newBucket!194 (Cons!49407 (tuple2!49087 key!3717 newValue!93) (apply!11529 lm!1616 hash!366))))))

(declare-fun b!4414105 () Bool)

(assert (=> b!4414105 (= e!2748744 (and (not lt!1615969) (= newBucket!194 (Cons!49407 (tuple2!49087 key!3717 newValue!93) Nil!49407))))))

(declare-fun b!4414106 () Bool)

(declare-fun e!2748746 () Bool)

(assert (=> b!4414106 (= e!2748746 (forall!9452 (t!356470 (toList!3341 lm!1616)) lambda!151414))))

(declare-fun b!4414107 () Bool)

(declare-fun res!1822672 () Bool)

(assert (=> b!4414107 (=> res!1822672 e!2748746)))

(declare-fun lt!1615977 () tuple2!49086)

(declare-fun lt!1615974 () List!49531)

(declare-fun +!955 (ListMap!2585 tuple2!49086) ListMap!2585)

(assert (=> b!4414107 (= res!1822672 (not (= lt!1615975 (addToMapMapFromBucket!331 lt!1615974 (+!955 lt!1615968 lt!1615977)))))))

(declare-fun b!4414108 () Bool)

(declare-fun res!1822679 () Bool)

(assert (=> b!4414108 (=> (not res!1822679) (not e!2748742))))

(declare-fun allKeysSameHash!637 (List!49531 (_ BitVec 64) Hashable!5071) Bool)

(assert (=> b!4414108 (= res!1822679 (allKeysSameHash!637 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4414109 () Bool)

(assert (=> b!4414109 (= e!2748739 e!2748746)))

(declare-fun res!1822670 () Bool)

(assert (=> b!4414109 (=> res!1822670 e!2748746)))

(assert (=> b!4414109 (= res!1822670 (not (= newBucket!194 (Cons!49407 lt!1615977 lt!1615974))))))

(assert (=> b!4414109 (= lt!1615974 (apply!11529 lm!1616 hash!366))))

(assert (=> b!4414109 (= lt!1615977 (tuple2!49087 key!3717 newValue!93))))

(declare-fun res!1822683 () Bool)

(assert (=> start!429766 (=> (not res!1822683) (not e!2748742))))

(assert (=> start!429766 (= res!1822683 (forall!9452 (toList!3341 lm!1616) lambda!151414))))

(assert (=> start!429766 e!2748742))

(assert (=> start!429766 tp_is_empty!25953))

(assert (=> start!429766 tp_is_empty!25955))

(assert (=> start!429766 e!2748740))

(declare-fun inv!64951 (ListLongMap!1991) Bool)

(assert (=> start!429766 (and (inv!64951 lm!1616) e!2748743)))

(assert (=> start!429766 true))

(declare-fun b!4414110 () Bool)

(declare-fun res!1822671 () Bool)

(assert (=> b!4414110 (=> (not res!1822671) (not e!2748742))))

(declare-fun allKeysSameHashInMap!783 (ListLongMap!1991 Hashable!5071) Bool)

(assert (=> b!4414110 (= res!1822671 (allKeysSameHashInMap!783 lm!1616 hashF!1220))))

(declare-fun b!4414111 () Bool)

(declare-fun res!1822682 () Bool)

(assert (=> b!4414111 (=> (not res!1822682) (not e!2748738))))

(declare-fun noDuplicateKeys!677 (List!49531) Bool)

(assert (=> b!4414111 (= res!1822682 (noDuplicateKeys!677 newBucket!194))))

(declare-fun b!4414112 () Bool)

(declare-fun res!1822680 () Bool)

(assert (=> b!4414112 (=> (not res!1822680) (not e!2748738))))

(assert (=> b!4414112 (= res!1822680 (forall!9452 (toList!3341 lm!1616) lambda!151414))))

(declare-fun b!4414113 () Bool)

(declare-fun res!1822677 () Bool)

(assert (=> b!4414113 (=> (not res!1822677) (not e!2748742))))

(declare-fun contains!11850 (ListMap!2585 K!10765) Bool)

(assert (=> b!4414113 (= res!1822677 (not (contains!11850 (extractMap!738 (toList!3341 lm!1616)) key!3717)))))

(assert (= (and start!429766 res!1822683) b!4414110))

(assert (= (and b!4414110 res!1822671) b!4414095))

(assert (= (and b!4414095 res!1822676) b!4414108))

(assert (= (and b!4414108 res!1822679) b!4414113))

(assert (= (and b!4414113 res!1822677) b!4414100))

(assert (= (and b!4414100 res!1822669) b!4414104))

(assert (= (and b!4414100 (not res!1822675)) b!4414105))

(assert (= (and b!4414100 res!1822678) b!4414111))

(assert (= (and b!4414111 res!1822682) b!4414112))

(assert (= (and b!4414112 res!1822680) b!4414101))

(assert (= (and b!4414101 (not res!1822673)) b!4414099))

(assert (= (and b!4414099 (not res!1822681)) b!4414103))

(assert (= (and b!4414103 (not res!1822674)) b!4414096))

(assert (= (and b!4414096 (not res!1822667)) b!4414098))

(assert (= (and b!4414098 (not res!1822668)) b!4414109))

(assert (= (and b!4414109 (not res!1822670)) b!4414107))

(assert (= (and b!4414107 (not res!1822672)) b!4414106))

(assert (= (and start!429766 ((_ is Cons!49407) newBucket!194)) b!4414097))

(assert (= start!429766 b!4414102))

(declare-fun m!5089721 () Bool)

(assert (=> b!4414100 m!5089721))

(declare-fun m!5089723 () Bool)

(assert (=> start!429766 m!5089723))

(declare-fun m!5089725 () Bool)

(assert (=> start!429766 m!5089725))

(assert (=> b!4414112 m!5089723))

(declare-fun m!5089727 () Bool)

(assert (=> b!4414113 m!5089727))

(assert (=> b!4414113 m!5089727))

(declare-fun m!5089729 () Bool)

(assert (=> b!4414113 m!5089729))

(declare-fun m!5089731 () Bool)

(assert (=> b!4414109 m!5089731))

(assert (=> b!4414104 m!5089731))

(declare-fun m!5089733 () Bool)

(assert (=> b!4414103 m!5089733))

(declare-fun m!5089735 () Bool)

(assert (=> b!4414110 m!5089735))

(declare-fun m!5089737 () Bool)

(assert (=> b!4414096 m!5089737))

(declare-fun m!5089739 () Bool)

(assert (=> b!4414101 m!5089739))

(assert (=> b!4414101 m!5089739))

(declare-fun m!5089741 () Bool)

(assert (=> b!4414101 m!5089741))

(declare-fun m!5089743 () Bool)

(assert (=> b!4414101 m!5089743))

(declare-fun m!5089745 () Bool)

(assert (=> b!4414108 m!5089745))

(declare-fun m!5089747 () Bool)

(assert (=> b!4414098 m!5089747))

(declare-fun m!5089749 () Bool)

(assert (=> b!4414098 m!5089749))

(declare-fun m!5089751 () Bool)

(assert (=> b!4414098 m!5089751))

(declare-fun m!5089753 () Bool)

(assert (=> b!4414107 m!5089753))

(assert (=> b!4414107 m!5089753))

(declare-fun m!5089755 () Bool)

(assert (=> b!4414107 m!5089755))

(declare-fun m!5089757 () Bool)

(assert (=> b!4414095 m!5089757))

(declare-fun m!5089759 () Bool)

(assert (=> b!4414111 m!5089759))

(declare-fun m!5089761 () Bool)

(assert (=> b!4414106 m!5089761))

(check-sat (not b!4414106) (not b!4414103) (not b!4414102) (not b!4414100) (not b!4414098) (not b!4414095) tp_is_empty!25953 (not b!4414109) (not start!429766) (not b!4414096) (not b!4414108) (not b!4414111) (not b!4414110) tp_is_empty!25955 (not b!4414107) (not b!4414101) (not b!4414104) (not b!4414113) (not b!4414097) (not b!4414112))
(check-sat)
(get-model)

(declare-fun b!4414229 () Bool)

(assert (=> b!4414229 true))

(declare-fun bs!753087 () Bool)

(declare-fun b!4414230 () Bool)

(assert (= bs!753087 (and b!4414230 b!4414229)))

(declare-fun lambda!151489 () Int)

(declare-fun lambda!151488 () Int)

(assert (=> bs!753087 (= lambda!151489 lambda!151488)))

(assert (=> b!4414230 true))

(declare-fun lambda!151490 () Int)

(declare-fun lt!1616181 () ListMap!2585)

(assert (=> bs!753087 (= (= lt!1616181 (+!955 lt!1615968 lt!1615977)) (= lambda!151490 lambda!151488))))

(assert (=> b!4414230 (= (= lt!1616181 (+!955 lt!1615968 lt!1615977)) (= lambda!151490 lambda!151489))))

(assert (=> b!4414230 true))

(declare-fun bs!753088 () Bool)

(declare-fun d!1337567 () Bool)

(assert (= bs!753088 (and d!1337567 b!4414229)))

(declare-fun lt!1616179 () ListMap!2585)

(declare-fun lambda!151491 () Int)

(assert (=> bs!753088 (= (= lt!1616179 (+!955 lt!1615968 lt!1615977)) (= lambda!151491 lambda!151488))))

(declare-fun bs!753089 () Bool)

(assert (= bs!753089 (and d!1337567 b!4414230)))

(assert (=> bs!753089 (= (= lt!1616179 (+!955 lt!1615968 lt!1615977)) (= lambda!151491 lambda!151489))))

(assert (=> bs!753089 (= (= lt!1616179 lt!1616181) (= lambda!151491 lambda!151490))))

(assert (=> d!1337567 true))

(declare-fun e!2748819 () Bool)

(declare-fun b!4414226 () Bool)

(declare-fun forall!9454 (List!49531 Int) Bool)

(assert (=> b!4414226 (= e!2748819 (forall!9454 (toList!3342 (+!955 lt!1615968 lt!1615977)) lambda!151490))))

(declare-fun e!2748818 () Bool)

(assert (=> d!1337567 e!2748818))

(declare-fun res!1822747 () Bool)

(assert (=> d!1337567 (=> (not res!1822747) (not e!2748818))))

(assert (=> d!1337567 (= res!1822747 (forall!9454 lt!1615974 lambda!151491))))

(declare-fun e!2748817 () ListMap!2585)

(assert (=> d!1337567 (= lt!1616179 e!2748817)))

(declare-fun c!751691 () Bool)

(assert (=> d!1337567 (= c!751691 ((_ is Nil!49407) lt!1615974))))

(assert (=> d!1337567 (noDuplicateKeys!677 lt!1615974)))

(assert (=> d!1337567 (= (addToMapMapFromBucket!331 lt!1615974 (+!955 lt!1615968 lt!1615977)) lt!1616179)))

(declare-fun b!4414227 () Bool)

(declare-fun invariantList!774 (List!49531) Bool)

(assert (=> b!4414227 (= e!2748818 (invariantList!774 (toList!3342 lt!1616179)))))

(declare-fun b!4414228 () Bool)

(declare-fun res!1822746 () Bool)

(assert (=> b!4414228 (=> (not res!1822746) (not e!2748818))))

(assert (=> b!4414228 (= res!1822746 (forall!9454 (toList!3342 (+!955 lt!1615968 lt!1615977)) lambda!151491))))

(declare-fun bm!307215 () Bool)

(declare-fun call!307221 () Bool)

(declare-fun lt!1616182 () ListMap!2585)

(assert (=> bm!307215 (= call!307221 (forall!9454 (ite c!751691 (toList!3342 (+!955 lt!1615968 lt!1615977)) (toList!3342 lt!1616182)) (ite c!751691 lambda!151488 lambda!151490)))))

(assert (=> b!4414229 (= e!2748817 (+!955 lt!1615968 lt!1615977))))

(declare-fun lt!1616190 () Unit!80601)

(declare-fun call!307220 () Unit!80601)

(assert (=> b!4414229 (= lt!1616190 call!307220)))

(declare-fun call!307222 () Bool)

(assert (=> b!4414229 call!307222))

(declare-fun lt!1616187 () Unit!80601)

(assert (=> b!4414229 (= lt!1616187 lt!1616190)))

(assert (=> b!4414229 call!307221))

(declare-fun lt!1616175 () Unit!80601)

(declare-fun Unit!80617 () Unit!80601)

(assert (=> b!4414229 (= lt!1616175 Unit!80617)))

(declare-fun bm!307216 () Bool)

(assert (=> bm!307216 (= call!307222 (forall!9454 (ite c!751691 (toList!3342 (+!955 lt!1615968 lt!1615977)) (t!356469 lt!1615974)) (ite c!751691 lambda!151488 lambda!151490)))))

(assert (=> b!4414230 (= e!2748817 lt!1616181)))

(assert (=> b!4414230 (= lt!1616182 (+!955 (+!955 lt!1615968 lt!1615977) (h!55060 lt!1615974)))))

(assert (=> b!4414230 (= lt!1616181 (addToMapMapFromBucket!331 (t!356469 lt!1615974) (+!955 (+!955 lt!1615968 lt!1615977) (h!55060 lt!1615974))))))

(declare-fun lt!1616174 () Unit!80601)

(assert (=> b!4414230 (= lt!1616174 call!307220)))

(assert (=> b!4414230 (forall!9454 (toList!3342 (+!955 lt!1615968 lt!1615977)) lambda!151489)))

(declare-fun lt!1616176 () Unit!80601)

(assert (=> b!4414230 (= lt!1616176 lt!1616174)))

(assert (=> b!4414230 (forall!9454 (toList!3342 lt!1616182) lambda!151490)))

(declare-fun lt!1616177 () Unit!80601)

(declare-fun Unit!80618 () Unit!80601)

(assert (=> b!4414230 (= lt!1616177 Unit!80618)))

(assert (=> b!4414230 call!307222))

(declare-fun lt!1616188 () Unit!80601)

(declare-fun Unit!80619 () Unit!80601)

(assert (=> b!4414230 (= lt!1616188 Unit!80619)))

(declare-fun lt!1616184 () Unit!80601)

(declare-fun Unit!80620 () Unit!80601)

(assert (=> b!4414230 (= lt!1616184 Unit!80620)))

(declare-fun lt!1616173 () Unit!80601)

(declare-fun forallContained!2061 (List!49531 Int tuple2!49086) Unit!80601)

(assert (=> b!4414230 (= lt!1616173 (forallContained!2061 (toList!3342 lt!1616182) lambda!151490 (h!55060 lt!1615974)))))

(assert (=> b!4414230 (contains!11850 lt!1616182 (_1!27837 (h!55060 lt!1615974)))))

(declare-fun lt!1616171 () Unit!80601)

(declare-fun Unit!80621 () Unit!80601)

(assert (=> b!4414230 (= lt!1616171 Unit!80621)))

(assert (=> b!4414230 (contains!11850 lt!1616181 (_1!27837 (h!55060 lt!1615974)))))

(declare-fun lt!1616185 () Unit!80601)

(declare-fun Unit!80622 () Unit!80601)

(assert (=> b!4414230 (= lt!1616185 Unit!80622)))

(assert (=> b!4414230 (forall!9454 lt!1615974 lambda!151490)))

(declare-fun lt!1616186 () Unit!80601)

(declare-fun Unit!80623 () Unit!80601)

(assert (=> b!4414230 (= lt!1616186 Unit!80623)))

(assert (=> b!4414230 call!307221))

(declare-fun lt!1616172 () Unit!80601)

(declare-fun Unit!80624 () Unit!80601)

(assert (=> b!4414230 (= lt!1616172 Unit!80624)))

(declare-fun lt!1616170 () Unit!80601)

(declare-fun Unit!80625 () Unit!80601)

(assert (=> b!4414230 (= lt!1616170 Unit!80625)))

(declare-fun lt!1616178 () Unit!80601)

(declare-fun addForallContainsKeyThenBeforeAdding!151 (ListMap!2585 ListMap!2585 K!10765 V!11011) Unit!80601)

(assert (=> b!4414230 (= lt!1616178 (addForallContainsKeyThenBeforeAdding!151 (+!955 lt!1615968 lt!1615977) lt!1616181 (_1!27837 (h!55060 lt!1615974)) (_2!27837 (h!55060 lt!1615974))))))

(assert (=> b!4414230 (forall!9454 (toList!3342 (+!955 lt!1615968 lt!1615977)) lambda!151490)))

(declare-fun lt!1616180 () Unit!80601)

(assert (=> b!4414230 (= lt!1616180 lt!1616178)))

(assert (=> b!4414230 (forall!9454 (toList!3342 (+!955 lt!1615968 lt!1615977)) lambda!151490)))

(declare-fun lt!1616189 () Unit!80601)

(declare-fun Unit!80626 () Unit!80601)

(assert (=> b!4414230 (= lt!1616189 Unit!80626)))

(declare-fun res!1822745 () Bool)

(assert (=> b!4414230 (= res!1822745 (forall!9454 lt!1615974 lambda!151490))))

(assert (=> b!4414230 (=> (not res!1822745) (not e!2748819))))

(assert (=> b!4414230 e!2748819))

(declare-fun lt!1616183 () Unit!80601)

(declare-fun Unit!80627 () Unit!80601)

(assert (=> b!4414230 (= lt!1616183 Unit!80627)))

(declare-fun bm!307217 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!151 (ListMap!2585) Unit!80601)

(assert (=> bm!307217 (= call!307220 (lemmaContainsAllItsOwnKeys!151 (+!955 lt!1615968 lt!1615977)))))

(assert (= (and d!1337567 c!751691) b!4414229))

(assert (= (and d!1337567 (not c!751691)) b!4414230))

(assert (= (and b!4414230 res!1822745) b!4414226))

(assert (= (or b!4414229 b!4414230) bm!307217))

(assert (= (or b!4414229 b!4414230) bm!307216))

(assert (= (or b!4414229 b!4414230) bm!307215))

(assert (= (and d!1337567 res!1822747) b!4414228))

(assert (= (and b!4414228 res!1822746) b!4414227))

(declare-fun m!5089927 () Bool)

(assert (=> b!4414227 m!5089927))

(assert (=> bm!307217 m!5089753))

(declare-fun m!5089929 () Bool)

(assert (=> bm!307217 m!5089929))

(declare-fun m!5089931 () Bool)

(assert (=> bm!307215 m!5089931))

(assert (=> b!4414230 m!5089753))

(declare-fun m!5089933 () Bool)

(assert (=> b!4414230 m!5089933))

(declare-fun m!5089935 () Bool)

(assert (=> b!4414230 m!5089935))

(assert (=> b!4414230 m!5089935))

(declare-fun m!5089939 () Bool)

(assert (=> b!4414230 m!5089939))

(declare-fun m!5089943 () Bool)

(assert (=> b!4414230 m!5089943))

(declare-fun m!5089947 () Bool)

(assert (=> b!4414230 m!5089947))

(declare-fun m!5089949 () Bool)

(assert (=> b!4414230 m!5089949))

(declare-fun m!5089953 () Bool)

(assert (=> b!4414230 m!5089953))

(declare-fun m!5089955 () Bool)

(assert (=> b!4414230 m!5089955))

(assert (=> b!4414230 m!5089753))

(assert (=> b!4414230 m!5089939))

(declare-fun m!5089957 () Bool)

(assert (=> b!4414230 m!5089957))

(declare-fun m!5089959 () Bool)

(assert (=> b!4414230 m!5089959))

(assert (=> b!4414230 m!5089959))

(assert (=> b!4414226 m!5089935))

(declare-fun m!5089961 () Bool)

(assert (=> d!1337567 m!5089961))

(declare-fun m!5089963 () Bool)

(assert (=> d!1337567 m!5089963))

(declare-fun m!5089965 () Bool)

(assert (=> bm!307216 m!5089965))

(declare-fun m!5089967 () Bool)

(assert (=> b!4414228 m!5089967))

(assert (=> b!4414107 d!1337567))

(declare-fun d!1337601 () Bool)

(declare-fun e!2748830 () Bool)

(assert (=> d!1337601 e!2748830))

(declare-fun res!1822752 () Bool)

(assert (=> d!1337601 (=> (not res!1822752) (not e!2748830))))

(declare-fun lt!1616204 () ListMap!2585)

(assert (=> d!1337601 (= res!1822752 (contains!11850 lt!1616204 (_1!27837 lt!1615977)))))

(declare-fun lt!1616201 () List!49531)

(assert (=> d!1337601 (= lt!1616204 (ListMap!2586 lt!1616201))))

(declare-fun lt!1616202 () Unit!80601)

(declare-fun lt!1616203 () Unit!80601)

(assert (=> d!1337601 (= lt!1616202 lt!1616203)))

(declare-datatypes ((Option!10663 0))(
  ( (None!10662) (Some!10662 (v!43822 V!11011)) )
))
(declare-fun getValueByKey!649 (List!49531 K!10765) Option!10663)

(assert (=> d!1337601 (= (getValueByKey!649 lt!1616201 (_1!27837 lt!1615977)) (Some!10662 (_2!27837 lt!1615977)))))

(declare-fun lemmaContainsTupThenGetReturnValue!387 (List!49531 K!10765 V!11011) Unit!80601)

(assert (=> d!1337601 (= lt!1616203 (lemmaContainsTupThenGetReturnValue!387 lt!1616201 (_1!27837 lt!1615977) (_2!27837 lt!1615977)))))

(declare-fun insertNoDuplicatedKeys!167 (List!49531 K!10765 V!11011) List!49531)

(assert (=> d!1337601 (= lt!1616201 (insertNoDuplicatedKeys!167 (toList!3342 lt!1615968) (_1!27837 lt!1615977) (_2!27837 lt!1615977)))))

(assert (=> d!1337601 (= (+!955 lt!1615968 lt!1615977) lt!1616204)))

(declare-fun b!4414251 () Bool)

(declare-fun res!1822753 () Bool)

(assert (=> b!4414251 (=> (not res!1822753) (not e!2748830))))

(assert (=> b!4414251 (= res!1822753 (= (getValueByKey!649 (toList!3342 lt!1616204) (_1!27837 lt!1615977)) (Some!10662 (_2!27837 lt!1615977))))))

(declare-fun b!4414252 () Bool)

(declare-fun contains!11854 (List!49531 tuple2!49086) Bool)

(assert (=> b!4414252 (= e!2748830 (contains!11854 (toList!3342 lt!1616204) lt!1615977))))

(assert (= (and d!1337601 res!1822752) b!4414251))

(assert (= (and b!4414251 res!1822753) b!4414252))

(declare-fun m!5089977 () Bool)

(assert (=> d!1337601 m!5089977))

(declare-fun m!5089979 () Bool)

(assert (=> d!1337601 m!5089979))

(declare-fun m!5089981 () Bool)

(assert (=> d!1337601 m!5089981))

(declare-fun m!5089983 () Bool)

(assert (=> d!1337601 m!5089983))

(declare-fun m!5089985 () Bool)

(assert (=> b!4414251 m!5089985))

(declare-fun m!5089987 () Bool)

(assert (=> b!4414252 m!5089987))

(assert (=> b!4414107 d!1337601))

(declare-fun d!1337611 () Bool)

(assert (=> d!1337611 (= (tail!7165 (toList!3341 lt!1615972)) (t!356470 (toList!3341 lt!1615972)))))

(assert (=> b!4414096 d!1337611))

(declare-fun bs!753101 () Bool)

(declare-fun b!4414256 () Bool)

(assert (= bs!753101 (and b!4414256 b!4414229)))

(declare-fun lambda!151494 () Int)

(assert (=> bs!753101 (= (= lt!1615968 (+!955 lt!1615968 lt!1615977)) (= lambda!151494 lambda!151488))))

(declare-fun bs!753102 () Bool)

(assert (= bs!753102 (and b!4414256 b!4414230)))

(assert (=> bs!753102 (= (= lt!1615968 (+!955 lt!1615968 lt!1615977)) (= lambda!151494 lambda!151489))))

(assert (=> bs!753102 (= (= lt!1615968 lt!1616181) (= lambda!151494 lambda!151490))))

(declare-fun bs!753103 () Bool)

(assert (= bs!753103 (and b!4414256 d!1337567)))

(assert (=> bs!753103 (= (= lt!1615968 lt!1616179) (= lambda!151494 lambda!151491))))

(assert (=> b!4414256 true))

(declare-fun bs!753104 () Bool)

(declare-fun b!4414257 () Bool)

(assert (= bs!753104 (and b!4414257 b!4414256)))

(declare-fun lambda!151495 () Int)

(assert (=> bs!753104 (= lambda!151495 lambda!151494)))

(declare-fun bs!753105 () Bool)

(assert (= bs!753105 (and b!4414257 b!4414230)))

(assert (=> bs!753105 (= (= lt!1615968 (+!955 lt!1615968 lt!1615977)) (= lambda!151495 lambda!151489))))

(declare-fun bs!753106 () Bool)

(assert (= bs!753106 (and b!4414257 b!4414229)))

(assert (=> bs!753106 (= (= lt!1615968 (+!955 lt!1615968 lt!1615977)) (= lambda!151495 lambda!151488))))

(assert (=> bs!753105 (= (= lt!1615968 lt!1616181) (= lambda!151495 lambda!151490))))

(declare-fun bs!753107 () Bool)

(assert (= bs!753107 (and b!4414257 d!1337567)))

(assert (=> bs!753107 (= (= lt!1615968 lt!1616179) (= lambda!151495 lambda!151491))))

(assert (=> b!4414257 true))

(declare-fun lt!1616216 () ListMap!2585)

(declare-fun lambda!151496 () Int)

(assert (=> bs!753104 (= (= lt!1616216 lt!1615968) (= lambda!151496 lambda!151494))))

(assert (=> bs!753105 (= (= lt!1616216 (+!955 lt!1615968 lt!1615977)) (= lambda!151496 lambda!151489))))

(assert (=> bs!753106 (= (= lt!1616216 (+!955 lt!1615968 lt!1615977)) (= lambda!151496 lambda!151488))))

(assert (=> b!4414257 (= (= lt!1616216 lt!1615968) (= lambda!151496 lambda!151495))))

(assert (=> bs!753105 (= (= lt!1616216 lt!1616181) (= lambda!151496 lambda!151490))))

(assert (=> bs!753107 (= (= lt!1616216 lt!1616179) (= lambda!151496 lambda!151491))))

(assert (=> b!4414257 true))

(declare-fun bs!753108 () Bool)

(declare-fun d!1337613 () Bool)

(assert (= bs!753108 (and d!1337613 b!4414257)))

(declare-fun lt!1616214 () ListMap!2585)

(declare-fun lambda!151497 () Int)

(assert (=> bs!753108 (= (= lt!1616214 lt!1616216) (= lambda!151497 lambda!151496))))

(declare-fun bs!753109 () Bool)

(assert (= bs!753109 (and d!1337613 b!4414256)))

(assert (=> bs!753109 (= (= lt!1616214 lt!1615968) (= lambda!151497 lambda!151494))))

(declare-fun bs!753110 () Bool)

(assert (= bs!753110 (and d!1337613 b!4414230)))

(assert (=> bs!753110 (= (= lt!1616214 (+!955 lt!1615968 lt!1615977)) (= lambda!151497 lambda!151489))))

(declare-fun bs!753111 () Bool)

(assert (= bs!753111 (and d!1337613 b!4414229)))

(assert (=> bs!753111 (= (= lt!1616214 (+!955 lt!1615968 lt!1615977)) (= lambda!151497 lambda!151488))))

(assert (=> bs!753108 (= (= lt!1616214 lt!1615968) (= lambda!151497 lambda!151495))))

(assert (=> bs!753110 (= (= lt!1616214 lt!1616181) (= lambda!151497 lambda!151490))))

(declare-fun bs!753112 () Bool)

(assert (= bs!753112 (and d!1337613 d!1337567)))

(assert (=> bs!753112 (= (= lt!1616214 lt!1616179) (= lambda!151497 lambda!151491))))

(assert (=> d!1337613 true))

(declare-fun b!4414253 () Bool)

(declare-fun e!2748833 () Bool)

(assert (=> b!4414253 (= e!2748833 (forall!9454 (toList!3342 lt!1615968) lambda!151496))))

(declare-fun e!2748832 () Bool)

(assert (=> d!1337613 e!2748832))

(declare-fun res!1822756 () Bool)

(assert (=> d!1337613 (=> (not res!1822756) (not e!2748832))))

(assert (=> d!1337613 (= res!1822756 (forall!9454 newBucket!194 lambda!151497))))

(declare-fun e!2748831 () ListMap!2585)

(assert (=> d!1337613 (= lt!1616214 e!2748831)))

(declare-fun c!751694 () Bool)

(assert (=> d!1337613 (= c!751694 ((_ is Nil!49407) newBucket!194))))

(assert (=> d!1337613 (noDuplicateKeys!677 newBucket!194)))

(assert (=> d!1337613 (= (addToMapMapFromBucket!331 newBucket!194 lt!1615968) lt!1616214)))

(declare-fun b!4414254 () Bool)

(assert (=> b!4414254 (= e!2748832 (invariantList!774 (toList!3342 lt!1616214)))))

(declare-fun b!4414255 () Bool)

(declare-fun res!1822755 () Bool)

(assert (=> b!4414255 (=> (not res!1822755) (not e!2748832))))

(assert (=> b!4414255 (= res!1822755 (forall!9454 (toList!3342 lt!1615968) lambda!151497))))

(declare-fun lt!1616217 () ListMap!2585)

(declare-fun call!307224 () Bool)

(declare-fun bm!307218 () Bool)

(assert (=> bm!307218 (= call!307224 (forall!9454 (ite c!751694 (toList!3342 lt!1615968) (toList!3342 lt!1616217)) (ite c!751694 lambda!151494 lambda!151496)))))

(assert (=> b!4414256 (= e!2748831 lt!1615968)))

(declare-fun lt!1616225 () Unit!80601)

(declare-fun call!307223 () Unit!80601)

(assert (=> b!4414256 (= lt!1616225 call!307223)))

(declare-fun call!307225 () Bool)

(assert (=> b!4414256 call!307225))

(declare-fun lt!1616222 () Unit!80601)

(assert (=> b!4414256 (= lt!1616222 lt!1616225)))

(assert (=> b!4414256 call!307224))

(declare-fun lt!1616210 () Unit!80601)

(declare-fun Unit!80639 () Unit!80601)

(assert (=> b!4414256 (= lt!1616210 Unit!80639)))

(declare-fun bm!307219 () Bool)

(assert (=> bm!307219 (= call!307225 (forall!9454 (ite c!751694 (toList!3342 lt!1615968) (t!356469 newBucket!194)) (ite c!751694 lambda!151494 lambda!151496)))))

(assert (=> b!4414257 (= e!2748831 lt!1616216)))

(assert (=> b!4414257 (= lt!1616217 (+!955 lt!1615968 (h!55060 newBucket!194)))))

(assert (=> b!4414257 (= lt!1616216 (addToMapMapFromBucket!331 (t!356469 newBucket!194) (+!955 lt!1615968 (h!55060 newBucket!194))))))

(declare-fun lt!1616209 () Unit!80601)

(assert (=> b!4414257 (= lt!1616209 call!307223)))

(assert (=> b!4414257 (forall!9454 (toList!3342 lt!1615968) lambda!151495)))

(declare-fun lt!1616211 () Unit!80601)

(assert (=> b!4414257 (= lt!1616211 lt!1616209)))

(assert (=> b!4414257 (forall!9454 (toList!3342 lt!1616217) lambda!151496)))

(declare-fun lt!1616212 () Unit!80601)

(declare-fun Unit!80640 () Unit!80601)

(assert (=> b!4414257 (= lt!1616212 Unit!80640)))

(assert (=> b!4414257 call!307225))

(declare-fun lt!1616223 () Unit!80601)

(declare-fun Unit!80641 () Unit!80601)

(assert (=> b!4414257 (= lt!1616223 Unit!80641)))

(declare-fun lt!1616219 () Unit!80601)

(declare-fun Unit!80642 () Unit!80601)

(assert (=> b!4414257 (= lt!1616219 Unit!80642)))

(declare-fun lt!1616208 () Unit!80601)

(assert (=> b!4414257 (= lt!1616208 (forallContained!2061 (toList!3342 lt!1616217) lambda!151496 (h!55060 newBucket!194)))))

(assert (=> b!4414257 (contains!11850 lt!1616217 (_1!27837 (h!55060 newBucket!194)))))

(declare-fun lt!1616206 () Unit!80601)

(declare-fun Unit!80643 () Unit!80601)

(assert (=> b!4414257 (= lt!1616206 Unit!80643)))

(assert (=> b!4414257 (contains!11850 lt!1616216 (_1!27837 (h!55060 newBucket!194)))))

(declare-fun lt!1616220 () Unit!80601)

(declare-fun Unit!80644 () Unit!80601)

(assert (=> b!4414257 (= lt!1616220 Unit!80644)))

(assert (=> b!4414257 (forall!9454 newBucket!194 lambda!151496)))

(declare-fun lt!1616221 () Unit!80601)

(declare-fun Unit!80645 () Unit!80601)

(assert (=> b!4414257 (= lt!1616221 Unit!80645)))

(assert (=> b!4414257 call!307224))

(declare-fun lt!1616207 () Unit!80601)

(declare-fun Unit!80646 () Unit!80601)

(assert (=> b!4414257 (= lt!1616207 Unit!80646)))

(declare-fun lt!1616205 () Unit!80601)

(declare-fun Unit!80647 () Unit!80601)

(assert (=> b!4414257 (= lt!1616205 Unit!80647)))

(declare-fun lt!1616213 () Unit!80601)

(assert (=> b!4414257 (= lt!1616213 (addForallContainsKeyThenBeforeAdding!151 lt!1615968 lt!1616216 (_1!27837 (h!55060 newBucket!194)) (_2!27837 (h!55060 newBucket!194))))))

(assert (=> b!4414257 (forall!9454 (toList!3342 lt!1615968) lambda!151496)))

(declare-fun lt!1616215 () Unit!80601)

(assert (=> b!4414257 (= lt!1616215 lt!1616213)))

(assert (=> b!4414257 (forall!9454 (toList!3342 lt!1615968) lambda!151496)))

(declare-fun lt!1616224 () Unit!80601)

(declare-fun Unit!80648 () Unit!80601)

(assert (=> b!4414257 (= lt!1616224 Unit!80648)))

(declare-fun res!1822754 () Bool)

(assert (=> b!4414257 (= res!1822754 (forall!9454 newBucket!194 lambda!151496))))

(assert (=> b!4414257 (=> (not res!1822754) (not e!2748833))))

(assert (=> b!4414257 e!2748833))

(declare-fun lt!1616218 () Unit!80601)

(declare-fun Unit!80649 () Unit!80601)

(assert (=> b!4414257 (= lt!1616218 Unit!80649)))

(declare-fun bm!307220 () Bool)

(assert (=> bm!307220 (= call!307223 (lemmaContainsAllItsOwnKeys!151 lt!1615968))))

(assert (= (and d!1337613 c!751694) b!4414256))

(assert (= (and d!1337613 (not c!751694)) b!4414257))

(assert (= (and b!4414257 res!1822754) b!4414253))

(assert (= (or b!4414256 b!4414257) bm!307220))

(assert (= (or b!4414256 b!4414257) bm!307219))

(assert (= (or b!4414256 b!4414257) bm!307218))

(assert (= (and d!1337613 res!1822756) b!4414255))

(assert (= (and b!4414255 res!1822755) b!4414254))

(declare-fun m!5089989 () Bool)

(assert (=> b!4414254 m!5089989))

(declare-fun m!5089991 () Bool)

(assert (=> bm!307220 m!5089991))

(declare-fun m!5089993 () Bool)

(assert (=> bm!307218 m!5089993))

(declare-fun m!5089995 () Bool)

(assert (=> b!4414257 m!5089995))

(declare-fun m!5089997 () Bool)

(assert (=> b!4414257 m!5089997))

(assert (=> b!4414257 m!5089997))

(declare-fun m!5089999 () Bool)

(assert (=> b!4414257 m!5089999))

(declare-fun m!5090001 () Bool)

(assert (=> b!4414257 m!5090001))

(declare-fun m!5090003 () Bool)

(assert (=> b!4414257 m!5090003))

(declare-fun m!5090005 () Bool)

(assert (=> b!4414257 m!5090005))

(declare-fun m!5090007 () Bool)

(assert (=> b!4414257 m!5090007))

(declare-fun m!5090009 () Bool)

(assert (=> b!4414257 m!5090009))

(assert (=> b!4414257 m!5089999))

(declare-fun m!5090011 () Bool)

(assert (=> b!4414257 m!5090011))

(declare-fun m!5090013 () Bool)

(assert (=> b!4414257 m!5090013))

(assert (=> b!4414257 m!5090013))

(assert (=> b!4414253 m!5089997))

(declare-fun m!5090015 () Bool)

(assert (=> d!1337613 m!5090015))

(assert (=> d!1337613 m!5089759))

(declare-fun m!5090017 () Bool)

(assert (=> bm!307219 m!5090017))

(declare-fun m!5090019 () Bool)

(assert (=> b!4414255 m!5090019))

(assert (=> b!4414098 d!1337613))

(declare-fun bs!753113 () Bool)

(declare-fun d!1337615 () Bool)

(assert (= bs!753113 (and d!1337615 start!429766)))

(declare-fun lambda!151500 () Int)

(assert (=> bs!753113 (= lambda!151500 lambda!151414)))

(declare-fun lt!1616228 () ListMap!2585)

(assert (=> d!1337615 (invariantList!774 (toList!3342 lt!1616228))))

(declare-fun e!2748836 () ListMap!2585)

(assert (=> d!1337615 (= lt!1616228 e!2748836)))

(declare-fun c!751697 () Bool)

(assert (=> d!1337615 (= c!751697 ((_ is Cons!49408) (toList!3341 lt!1615972)))))

(assert (=> d!1337615 (forall!9452 (toList!3341 lt!1615972) lambda!151500)))

(assert (=> d!1337615 (= (extractMap!738 (toList!3341 lt!1615972)) lt!1616228)))

(declare-fun b!4414262 () Bool)

(assert (=> b!4414262 (= e!2748836 (addToMapMapFromBucket!331 (_2!27838 (h!55061 (toList!3341 lt!1615972))) (extractMap!738 (t!356470 (toList!3341 lt!1615972)))))))

(declare-fun b!4414263 () Bool)

(assert (=> b!4414263 (= e!2748836 (ListMap!2586 Nil!49407))))

(assert (= (and d!1337615 c!751697) b!4414262))

(assert (= (and d!1337615 (not c!751697)) b!4414263))

(declare-fun m!5090021 () Bool)

(assert (=> d!1337615 m!5090021))

(declare-fun m!5090023 () Bool)

(assert (=> d!1337615 m!5090023))

(declare-fun m!5090025 () Bool)

(assert (=> b!4414262 m!5090025))

(assert (=> b!4414262 m!5090025))

(declare-fun m!5090027 () Bool)

(assert (=> b!4414262 m!5090027))

(assert (=> b!4414098 d!1337615))

(declare-fun bs!753114 () Bool)

(declare-fun d!1337617 () Bool)

(assert (= bs!753114 (and d!1337617 start!429766)))

(declare-fun lambda!151501 () Int)

(assert (=> bs!753114 (= lambda!151501 lambda!151414)))

(declare-fun bs!753115 () Bool)

(assert (= bs!753115 (and d!1337617 d!1337615)))

(assert (=> bs!753115 (= lambda!151501 lambda!151500)))

(declare-fun lt!1616229 () ListMap!2585)

(assert (=> d!1337617 (invariantList!774 (toList!3342 lt!1616229))))

(declare-fun e!2748837 () ListMap!2585)

(assert (=> d!1337617 (= lt!1616229 e!2748837)))

(declare-fun c!751698 () Bool)

(assert (=> d!1337617 (= c!751698 ((_ is Cons!49408) (t!356470 (toList!3341 lm!1616))))))

(assert (=> d!1337617 (forall!9452 (t!356470 (toList!3341 lm!1616)) lambda!151501)))

(assert (=> d!1337617 (= (extractMap!738 (t!356470 (toList!3341 lm!1616))) lt!1616229)))

(declare-fun b!4414264 () Bool)

(assert (=> b!4414264 (= e!2748837 (addToMapMapFromBucket!331 (_2!27838 (h!55061 (t!356470 (toList!3341 lm!1616)))) (extractMap!738 (t!356470 (t!356470 (toList!3341 lm!1616))))))))

(declare-fun b!4414265 () Bool)

(assert (=> b!4414265 (= e!2748837 (ListMap!2586 Nil!49407))))

(assert (= (and d!1337617 c!751698) b!4414264))

(assert (= (and d!1337617 (not c!751698)) b!4414265))

(declare-fun m!5090029 () Bool)

(assert (=> d!1337617 m!5090029))

(declare-fun m!5090031 () Bool)

(assert (=> d!1337617 m!5090031))

(declare-fun m!5090033 () Bool)

(assert (=> b!4414264 m!5090033))

(assert (=> b!4414264 m!5090033))

(declare-fun m!5090035 () Bool)

(assert (=> b!4414264 m!5090035))

(assert (=> b!4414098 d!1337617))

(declare-fun bs!753116 () Bool)

(declare-fun d!1337619 () Bool)

(assert (= bs!753116 (and d!1337619 b!4414257)))

(declare-fun lambda!151504 () Int)

(assert (=> bs!753116 (not (= lambda!151504 lambda!151496))))

(declare-fun bs!753117 () Bool)

(assert (= bs!753117 (and d!1337619 b!4414256)))

(assert (=> bs!753117 (not (= lambda!151504 lambda!151494))))

(declare-fun bs!753118 () Bool)

(assert (= bs!753118 (and d!1337619 b!4414230)))

(assert (=> bs!753118 (not (= lambda!151504 lambda!151489))))

(declare-fun bs!753119 () Bool)

(assert (= bs!753119 (and d!1337619 b!4414229)))

(assert (=> bs!753119 (not (= lambda!151504 lambda!151488))))

(assert (=> bs!753116 (not (= lambda!151504 lambda!151495))))

(declare-fun bs!753120 () Bool)

(assert (= bs!753120 (and d!1337619 d!1337567)))

(assert (=> bs!753120 (not (= lambda!151504 lambda!151491))))

(assert (=> bs!753118 (not (= lambda!151504 lambda!151490))))

(declare-fun bs!753121 () Bool)

(assert (= bs!753121 (and d!1337619 d!1337613)))

(assert (=> bs!753121 (not (= lambda!151504 lambda!151497))))

(assert (=> d!1337619 true))

(assert (=> d!1337619 true))

(assert (=> d!1337619 (= (allKeysSameHash!637 newBucket!194 hash!366 hashF!1220) (forall!9454 newBucket!194 lambda!151504))))

(declare-fun bs!753122 () Bool)

(assert (= bs!753122 d!1337619))

(declare-fun m!5090037 () Bool)

(assert (=> bs!753122 m!5090037))

(assert (=> b!4414108 d!1337619))

(declare-fun bs!753123 () Bool)

(declare-fun d!1337621 () Bool)

(assert (= bs!753123 (and d!1337621 start!429766)))

(declare-fun lambda!151507 () Int)

(assert (=> bs!753123 (not (= lambda!151507 lambda!151414))))

(declare-fun bs!753124 () Bool)

(assert (= bs!753124 (and d!1337621 d!1337615)))

(assert (=> bs!753124 (not (= lambda!151507 lambda!151500))))

(declare-fun bs!753125 () Bool)

(assert (= bs!753125 (and d!1337621 d!1337617)))

(assert (=> bs!753125 (not (= lambda!151507 lambda!151501))))

(assert (=> d!1337621 true))

(assert (=> d!1337621 (= (allKeysSameHashInMap!783 lm!1616 hashF!1220) (forall!9452 (toList!3341 lm!1616) lambda!151507))))

(declare-fun bs!753126 () Bool)

(assert (= bs!753126 d!1337621))

(declare-fun m!5090039 () Bool)

(assert (=> bs!753126 m!5090039))

(assert (=> b!4414110 d!1337621))

(declare-fun d!1337623 () Bool)

(declare-datatypes ((Option!10664 0))(
  ( (None!10663) (Some!10663 (v!43823 List!49531)) )
))
(declare-fun get!16093 (Option!10664) List!49531)

(declare-fun getValueByKey!650 (List!49532 (_ BitVec 64)) Option!10664)

(assert (=> d!1337623 (= (apply!11529 lm!1616 hash!366) (get!16093 (getValueByKey!650 (toList!3341 lm!1616) hash!366)))))

(declare-fun bs!753127 () Bool)

(assert (= bs!753127 d!1337623))

(declare-fun m!5090041 () Bool)

(assert (=> bs!753127 m!5090041))

(assert (=> bs!753127 m!5090041))

(declare-fun m!5090043 () Bool)

(assert (=> bs!753127 m!5090043))

(assert (=> b!4414109 d!1337623))

(declare-fun d!1337625 () Bool)

(declare-fun res!1822761 () Bool)

(declare-fun e!2748842 () Bool)

(assert (=> d!1337625 (=> res!1822761 e!2748842)))

(assert (=> d!1337625 (= res!1822761 (not ((_ is Cons!49407) newBucket!194)))))

(assert (=> d!1337625 (= (noDuplicateKeys!677 newBucket!194) e!2748842)))

(declare-fun b!4414276 () Bool)

(declare-fun e!2748843 () Bool)

(assert (=> b!4414276 (= e!2748842 e!2748843)))

(declare-fun res!1822762 () Bool)

(assert (=> b!4414276 (=> (not res!1822762) (not e!2748843))))

(declare-fun containsKey!1019 (List!49531 K!10765) Bool)

(assert (=> b!4414276 (= res!1822762 (not (containsKey!1019 (t!356469 newBucket!194) (_1!27837 (h!55060 newBucket!194)))))))

(declare-fun b!4414277 () Bool)

(assert (=> b!4414277 (= e!2748843 (noDuplicateKeys!677 (t!356469 newBucket!194)))))

(assert (= (and d!1337625 (not res!1822761)) b!4414276))

(assert (= (and b!4414276 res!1822762) b!4414277))

(declare-fun m!5090045 () Bool)

(assert (=> b!4414276 m!5090045))

(declare-fun m!5090047 () Bool)

(assert (=> b!4414277 m!5090047))

(assert (=> b!4414111 d!1337625))

(declare-fun d!1337627 () Bool)

(declare-fun e!2748848 () Bool)

(assert (=> d!1337627 e!2748848))

(declare-fun res!1822765 () Bool)

(assert (=> d!1337627 (=> res!1822765 e!2748848)))

(declare-fun lt!1616240 () Bool)

(assert (=> d!1337627 (= res!1822765 (not lt!1616240))))

(declare-fun lt!1616238 () Bool)

(assert (=> d!1337627 (= lt!1616240 lt!1616238)))

(declare-fun lt!1616239 () Unit!80601)

(declare-fun e!2748849 () Unit!80601)

(assert (=> d!1337627 (= lt!1616239 e!2748849)))

(declare-fun c!751701 () Bool)

(assert (=> d!1337627 (= c!751701 lt!1616238)))

(declare-fun containsKey!1020 (List!49532 (_ BitVec 64)) Bool)

(assert (=> d!1337627 (= lt!1616238 (containsKey!1020 (toList!3341 lm!1616) hash!366))))

(assert (=> d!1337627 (= (contains!11849 lm!1616 hash!366) lt!1616240)))

(declare-fun b!4414284 () Bool)

(declare-fun lt!1616241 () Unit!80601)

(assert (=> b!4414284 (= e!2748849 lt!1616241)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!559 (List!49532 (_ BitVec 64)) Unit!80601)

(assert (=> b!4414284 (= lt!1616241 (lemmaContainsKeyImpliesGetValueByKeyDefined!559 (toList!3341 lm!1616) hash!366))))

(declare-fun isDefined!7956 (Option!10664) Bool)

(assert (=> b!4414284 (isDefined!7956 (getValueByKey!650 (toList!3341 lm!1616) hash!366))))

(declare-fun b!4414285 () Bool)

(declare-fun Unit!80650 () Unit!80601)

(assert (=> b!4414285 (= e!2748849 Unit!80650)))

(declare-fun b!4414286 () Bool)

(assert (=> b!4414286 (= e!2748848 (isDefined!7956 (getValueByKey!650 (toList!3341 lm!1616) hash!366)))))

(assert (= (and d!1337627 c!751701) b!4414284))

(assert (= (and d!1337627 (not c!751701)) b!4414285))

(assert (= (and d!1337627 (not res!1822765)) b!4414286))

(declare-fun m!5090049 () Bool)

(assert (=> d!1337627 m!5090049))

(declare-fun m!5090051 () Bool)

(assert (=> b!4414284 m!5090051))

(assert (=> b!4414284 m!5090041))

(assert (=> b!4414284 m!5090041))

(declare-fun m!5090053 () Bool)

(assert (=> b!4414284 m!5090053))

(assert (=> b!4414286 m!5090041))

(assert (=> b!4414286 m!5090041))

(assert (=> b!4414286 m!5090053))

(assert (=> b!4414100 d!1337627))

(declare-fun d!1337629 () Bool)

(declare-fun res!1822770 () Bool)

(declare-fun e!2748854 () Bool)

(assert (=> d!1337629 (=> res!1822770 e!2748854)))

(assert (=> d!1337629 (= res!1822770 ((_ is Nil!49408) (toList!3341 lt!1615972)))))

(assert (=> d!1337629 (= (forall!9452 (toList!3341 lt!1615972) lambda!151414) e!2748854)))

(declare-fun b!4414291 () Bool)

(declare-fun e!2748855 () Bool)

(assert (=> b!4414291 (= e!2748854 e!2748855)))

(declare-fun res!1822771 () Bool)

(assert (=> b!4414291 (=> (not res!1822771) (not e!2748855))))

(declare-fun dynLambda!20805 (Int tuple2!49088) Bool)

(assert (=> b!4414291 (= res!1822771 (dynLambda!20805 lambda!151414 (h!55061 (toList!3341 lt!1615972))))))

(declare-fun b!4414292 () Bool)

(assert (=> b!4414292 (= e!2748855 (forall!9452 (t!356470 (toList!3341 lt!1615972)) lambda!151414))))

(assert (= (and d!1337629 (not res!1822770)) b!4414291))

(assert (= (and b!4414291 res!1822771) b!4414292))

(declare-fun b_lambda!142103 () Bool)

(assert (=> (not b_lambda!142103) (not b!4414291)))

(declare-fun m!5090055 () Bool)

(assert (=> b!4414291 m!5090055))

(declare-fun m!5090057 () Bool)

(assert (=> b!4414292 m!5090057))

(assert (=> b!4414101 d!1337629))

(declare-fun d!1337631 () Bool)

(declare-fun e!2748858 () Bool)

(assert (=> d!1337631 e!2748858))

(declare-fun res!1822777 () Bool)

(assert (=> d!1337631 (=> (not res!1822777) (not e!2748858))))

(declare-fun lt!1616251 () ListLongMap!1991)

(assert (=> d!1337631 (= res!1822777 (contains!11849 lt!1616251 (_1!27838 lt!1615976)))))

(declare-fun lt!1616253 () List!49532)

(assert (=> d!1337631 (= lt!1616251 (ListLongMap!1992 lt!1616253))))

(declare-fun lt!1616252 () Unit!80601)

(declare-fun lt!1616250 () Unit!80601)

(assert (=> d!1337631 (= lt!1616252 lt!1616250)))

(assert (=> d!1337631 (= (getValueByKey!650 lt!1616253 (_1!27838 lt!1615976)) (Some!10663 (_2!27838 lt!1615976)))))

(declare-fun lemmaContainsTupThenGetReturnValue!388 (List!49532 (_ BitVec 64) List!49531) Unit!80601)

(assert (=> d!1337631 (= lt!1616250 (lemmaContainsTupThenGetReturnValue!388 lt!1616253 (_1!27838 lt!1615976) (_2!27838 lt!1615976)))))

(declare-fun insertStrictlySorted!229 (List!49532 (_ BitVec 64) List!49531) List!49532)

(assert (=> d!1337631 (= lt!1616253 (insertStrictlySorted!229 (toList!3341 lm!1616) (_1!27838 lt!1615976) (_2!27838 lt!1615976)))))

(assert (=> d!1337631 (= (+!954 lm!1616 lt!1615976) lt!1616251)))

(declare-fun b!4414297 () Bool)

(declare-fun res!1822776 () Bool)

(assert (=> b!4414297 (=> (not res!1822776) (not e!2748858))))

(assert (=> b!4414297 (= res!1822776 (= (getValueByKey!650 (toList!3341 lt!1616251) (_1!27838 lt!1615976)) (Some!10663 (_2!27838 lt!1615976))))))

(declare-fun b!4414298 () Bool)

(declare-fun contains!11855 (List!49532 tuple2!49088) Bool)

(assert (=> b!4414298 (= e!2748858 (contains!11855 (toList!3341 lt!1616251) lt!1615976))))

(assert (= (and d!1337631 res!1822777) b!4414297))

(assert (= (and b!4414297 res!1822776) b!4414298))

(declare-fun m!5090059 () Bool)

(assert (=> d!1337631 m!5090059))

(declare-fun m!5090061 () Bool)

(assert (=> d!1337631 m!5090061))

(declare-fun m!5090063 () Bool)

(assert (=> d!1337631 m!5090063))

(declare-fun m!5090065 () Bool)

(assert (=> d!1337631 m!5090065))

(declare-fun m!5090067 () Bool)

(assert (=> b!4414297 m!5090067))

(declare-fun m!5090069 () Bool)

(assert (=> b!4414298 m!5090069))

(assert (=> b!4414101 d!1337631))

(declare-fun d!1337633 () Bool)

(assert (=> d!1337633 (forall!9452 (toList!3341 (+!954 lm!1616 (tuple2!49089 hash!366 newBucket!194))) lambda!151414)))

(declare-fun lt!1616256 () Unit!80601)

(declare-fun choose!27780 (ListLongMap!1991 Int (_ BitVec 64) List!49531) Unit!80601)

(assert (=> d!1337633 (= lt!1616256 (choose!27780 lm!1616 lambda!151414 hash!366 newBucket!194))))

(declare-fun e!2748861 () Bool)

(assert (=> d!1337633 e!2748861))

(declare-fun res!1822780 () Bool)

(assert (=> d!1337633 (=> (not res!1822780) (not e!2748861))))

(assert (=> d!1337633 (= res!1822780 (forall!9452 (toList!3341 lm!1616) lambda!151414))))

(assert (=> d!1337633 (= (addValidProp!321 lm!1616 lambda!151414 hash!366 newBucket!194) lt!1616256)))

(declare-fun b!4414302 () Bool)

(assert (=> b!4414302 (= e!2748861 (dynLambda!20805 lambda!151414 (tuple2!49089 hash!366 newBucket!194)))))

(assert (= (and d!1337633 res!1822780) b!4414302))

(declare-fun b_lambda!142105 () Bool)

(assert (=> (not b_lambda!142105) (not b!4414302)))

(declare-fun m!5090071 () Bool)

(assert (=> d!1337633 m!5090071))

(declare-fun m!5090073 () Bool)

(assert (=> d!1337633 m!5090073))

(declare-fun m!5090075 () Bool)

(assert (=> d!1337633 m!5090075))

(assert (=> d!1337633 m!5089723))

(declare-fun m!5090077 () Bool)

(assert (=> b!4414302 m!5090077))

(assert (=> b!4414101 d!1337633))

(declare-fun d!1337635 () Bool)

(declare-fun res!1822781 () Bool)

(declare-fun e!2748862 () Bool)

(assert (=> d!1337635 (=> res!1822781 e!2748862)))

(assert (=> d!1337635 (= res!1822781 ((_ is Nil!49408) (toList!3341 lm!1616)))))

(assert (=> d!1337635 (= (forall!9452 (toList!3341 lm!1616) lambda!151414) e!2748862)))

(declare-fun b!4414303 () Bool)

(declare-fun e!2748863 () Bool)

(assert (=> b!4414303 (= e!2748862 e!2748863)))

(declare-fun res!1822782 () Bool)

(assert (=> b!4414303 (=> (not res!1822782) (not e!2748863))))

(assert (=> b!4414303 (= res!1822782 (dynLambda!20805 lambda!151414 (h!55061 (toList!3341 lm!1616))))))

(declare-fun b!4414304 () Bool)

(assert (=> b!4414304 (= e!2748863 (forall!9452 (t!356470 (toList!3341 lm!1616)) lambda!151414))))

(assert (= (and d!1337635 (not res!1822781)) b!4414303))

(assert (= (and b!4414303 res!1822782) b!4414304))

(declare-fun b_lambda!142107 () Bool)

(assert (=> (not b_lambda!142107) (not b!4414303)))

(declare-fun m!5090079 () Bool)

(assert (=> b!4414303 m!5090079))

(assert (=> b!4414304 m!5089761))

(assert (=> b!4414112 d!1337635))

(declare-fun d!1337637 () Bool)

(assert (=> d!1337637 (= (head!9156 (toList!3341 lt!1615972)) (h!55061 (toList!3341 lt!1615972)))))

(assert (=> b!4414103 d!1337637))

(declare-fun b!4414323 () Bool)

(declare-fun e!2748876 () Unit!80601)

(declare-fun e!2748881 () Unit!80601)

(assert (=> b!4414323 (= e!2748876 e!2748881)))

(declare-fun c!751709 () Bool)

(declare-fun call!307228 () Bool)

(assert (=> b!4414323 (= c!751709 call!307228)))

(declare-fun b!4414324 () Bool)

(declare-fun e!2748879 () Bool)

(declare-datatypes ((List!49534 0))(
  ( (Nil!49410) (Cons!49410 (h!55065 K!10765) (t!356472 List!49534)) )
))
(declare-fun contains!11856 (List!49534 K!10765) Bool)

(declare-fun keys!16826 (ListMap!2585) List!49534)

(assert (=> b!4414324 (= e!2748879 (not (contains!11856 (keys!16826 (extractMap!738 (toList!3341 lm!1616))) key!3717)))))

(declare-fun b!4414326 () Bool)

(declare-fun e!2748878 () List!49534)

(declare-fun getKeysList!222 (List!49531) List!49534)

(assert (=> b!4414326 (= e!2748878 (getKeysList!222 (toList!3342 (extractMap!738 (toList!3341 lm!1616)))))))

(declare-fun b!4414327 () Bool)

(assert (=> b!4414327 false))

(declare-fun lt!1616277 () Unit!80601)

(declare-fun lt!1616273 () Unit!80601)

(assert (=> b!4414327 (= lt!1616277 lt!1616273)))

(declare-fun containsKey!1021 (List!49531 K!10765) Bool)

(assert (=> b!4414327 (containsKey!1021 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!220 (List!49531 K!10765) Unit!80601)

(assert (=> b!4414327 (= lt!1616273 (lemmaInGetKeysListThenContainsKey!220 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(declare-fun Unit!80651 () Unit!80601)

(assert (=> b!4414327 (= e!2748881 Unit!80651)))

(declare-fun b!4414328 () Bool)

(declare-fun e!2748880 () Bool)

(assert (=> b!4414328 (= e!2748880 (contains!11856 (keys!16826 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(declare-fun b!4414329 () Bool)

(assert (=> b!4414329 (= e!2748878 (keys!16826 (extractMap!738 (toList!3341 lm!1616))))))

(declare-fun b!4414330 () Bool)

(declare-fun Unit!80652 () Unit!80601)

(assert (=> b!4414330 (= e!2748881 Unit!80652)))

(declare-fun b!4414325 () Bool)

(declare-fun lt!1616274 () Unit!80601)

(assert (=> b!4414325 (= e!2748876 lt!1616274)))

(declare-fun lt!1616279 () Unit!80601)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!560 (List!49531 K!10765) Unit!80601)

(assert (=> b!4414325 (= lt!1616279 (lemmaContainsKeyImpliesGetValueByKeyDefined!560 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(declare-fun isDefined!7957 (Option!10663) Bool)

(assert (=> b!4414325 (isDefined!7957 (getValueByKey!649 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(declare-fun lt!1616278 () Unit!80601)

(assert (=> b!4414325 (= lt!1616278 lt!1616279)))

(declare-fun lemmaInListThenGetKeysListContains!219 (List!49531 K!10765) Unit!80601)

(assert (=> b!4414325 (= lt!1616274 (lemmaInListThenGetKeysListContains!219 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(assert (=> b!4414325 call!307228))

(declare-fun d!1337639 () Bool)

(declare-fun e!2748877 () Bool)

(assert (=> d!1337639 e!2748877))

(declare-fun res!1822790 () Bool)

(assert (=> d!1337639 (=> res!1822790 e!2748877)))

(assert (=> d!1337639 (= res!1822790 e!2748879)))

(declare-fun res!1822789 () Bool)

(assert (=> d!1337639 (=> (not res!1822789) (not e!2748879))))

(declare-fun lt!1616276 () Bool)

(assert (=> d!1337639 (= res!1822789 (not lt!1616276))))

(declare-fun lt!1616275 () Bool)

(assert (=> d!1337639 (= lt!1616276 lt!1616275)))

(declare-fun lt!1616280 () Unit!80601)

(assert (=> d!1337639 (= lt!1616280 e!2748876)))

(declare-fun c!751708 () Bool)

(assert (=> d!1337639 (= c!751708 lt!1616275)))

(assert (=> d!1337639 (= lt!1616275 (containsKey!1021 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717))))

(assert (=> d!1337639 (= (contains!11850 (extractMap!738 (toList!3341 lm!1616)) key!3717) lt!1616276)))

(declare-fun b!4414331 () Bool)

(assert (=> b!4414331 (= e!2748877 e!2748880)))

(declare-fun res!1822791 () Bool)

(assert (=> b!4414331 (=> (not res!1822791) (not e!2748880))))

(assert (=> b!4414331 (= res!1822791 (isDefined!7957 (getValueByKey!649 (toList!3342 (extractMap!738 (toList!3341 lm!1616))) key!3717)))))

(declare-fun bm!307223 () Bool)

(assert (=> bm!307223 (= call!307228 (contains!11856 e!2748878 key!3717))))

(declare-fun c!751710 () Bool)

(assert (=> bm!307223 (= c!751710 c!751708)))

(assert (= (and d!1337639 c!751708) b!4414325))

(assert (= (and d!1337639 (not c!751708)) b!4414323))

(assert (= (and b!4414323 c!751709) b!4414327))

(assert (= (and b!4414323 (not c!751709)) b!4414330))

(assert (= (or b!4414325 b!4414323) bm!307223))

(assert (= (and bm!307223 c!751710) b!4414326))

(assert (= (and bm!307223 (not c!751710)) b!4414329))

(assert (= (and d!1337639 res!1822789) b!4414324))

(assert (= (and d!1337639 (not res!1822790)) b!4414331))

(assert (= (and b!4414331 res!1822791) b!4414328))

(declare-fun m!5090081 () Bool)

(assert (=> d!1337639 m!5090081))

(assert (=> b!4414329 m!5089727))

(declare-fun m!5090083 () Bool)

(assert (=> b!4414329 m!5090083))

(declare-fun m!5090085 () Bool)

(assert (=> b!4414326 m!5090085))

(assert (=> b!4414327 m!5090081))

(declare-fun m!5090087 () Bool)

(assert (=> b!4414327 m!5090087))

(declare-fun m!5090089 () Bool)

(assert (=> b!4414325 m!5090089))

(declare-fun m!5090091 () Bool)

(assert (=> b!4414325 m!5090091))

(assert (=> b!4414325 m!5090091))

(declare-fun m!5090093 () Bool)

(assert (=> b!4414325 m!5090093))

(declare-fun m!5090095 () Bool)

(assert (=> b!4414325 m!5090095))

(assert (=> b!4414331 m!5090091))

(assert (=> b!4414331 m!5090091))

(assert (=> b!4414331 m!5090093))

(assert (=> b!4414324 m!5089727))

(assert (=> b!4414324 m!5090083))

(assert (=> b!4414324 m!5090083))

(declare-fun m!5090097 () Bool)

(assert (=> b!4414324 m!5090097))

(assert (=> b!4414328 m!5089727))

(assert (=> b!4414328 m!5090083))

(assert (=> b!4414328 m!5090083))

(assert (=> b!4414328 m!5090097))

(declare-fun m!5090099 () Bool)

(assert (=> bm!307223 m!5090099))

(assert (=> b!4414113 d!1337639))

(declare-fun bs!753128 () Bool)

(declare-fun d!1337641 () Bool)

(assert (= bs!753128 (and d!1337641 start!429766)))

(declare-fun lambda!151508 () Int)

(assert (=> bs!753128 (= lambda!151508 lambda!151414)))

(declare-fun bs!753129 () Bool)

(assert (= bs!753129 (and d!1337641 d!1337615)))

(assert (=> bs!753129 (= lambda!151508 lambda!151500)))

(declare-fun bs!753130 () Bool)

(assert (= bs!753130 (and d!1337641 d!1337617)))

(assert (=> bs!753130 (= lambda!151508 lambda!151501)))

(declare-fun bs!753131 () Bool)

(assert (= bs!753131 (and d!1337641 d!1337621)))

(assert (=> bs!753131 (not (= lambda!151508 lambda!151507))))

(declare-fun lt!1616281 () ListMap!2585)

(assert (=> d!1337641 (invariantList!774 (toList!3342 lt!1616281))))

(declare-fun e!2748882 () ListMap!2585)

(assert (=> d!1337641 (= lt!1616281 e!2748882)))

(declare-fun c!751711 () Bool)

(assert (=> d!1337641 (= c!751711 ((_ is Cons!49408) (toList!3341 lm!1616)))))

(assert (=> d!1337641 (forall!9452 (toList!3341 lm!1616) lambda!151508)))

(assert (=> d!1337641 (= (extractMap!738 (toList!3341 lm!1616)) lt!1616281)))

(declare-fun b!4414332 () Bool)

(assert (=> b!4414332 (= e!2748882 (addToMapMapFromBucket!331 (_2!27838 (h!55061 (toList!3341 lm!1616))) (extractMap!738 (t!356470 (toList!3341 lm!1616)))))))

(declare-fun b!4414333 () Bool)

(assert (=> b!4414333 (= e!2748882 (ListMap!2586 Nil!49407))))

(assert (= (and d!1337641 c!751711) b!4414332))

(assert (= (and d!1337641 (not c!751711)) b!4414333))

(declare-fun m!5090101 () Bool)

(assert (=> d!1337641 m!5090101))

(declare-fun m!5090103 () Bool)

(assert (=> d!1337641 m!5090103))

(assert (=> b!4414332 m!5089751))

(assert (=> b!4414332 m!5089751))

(declare-fun m!5090105 () Bool)

(assert (=> b!4414332 m!5090105))

(assert (=> b!4414113 d!1337641))

(assert (=> b!4414104 d!1337623))

(assert (=> start!429766 d!1337635))

(declare-fun d!1337643 () Bool)

(declare-fun isStrictlySorted!201 (List!49532) Bool)

(assert (=> d!1337643 (= (inv!64951 lm!1616) (isStrictlySorted!201 (toList!3341 lm!1616)))))

(declare-fun bs!753132 () Bool)

(assert (= bs!753132 d!1337643))

(declare-fun m!5090107 () Bool)

(assert (=> bs!753132 m!5090107))

(assert (=> start!429766 d!1337643))

(declare-fun d!1337645 () Bool)

(declare-fun hash!1986 (Hashable!5071 K!10765) (_ BitVec 64))

(assert (=> d!1337645 (= (hash!1984 hashF!1220 key!3717) (hash!1986 hashF!1220 key!3717))))

(declare-fun bs!753133 () Bool)

(assert (= bs!753133 d!1337645))

(declare-fun m!5090109 () Bool)

(assert (=> bs!753133 m!5090109))

(assert (=> b!4414095 d!1337645))

(declare-fun d!1337647 () Bool)

(declare-fun res!1822792 () Bool)

(declare-fun e!2748883 () Bool)

(assert (=> d!1337647 (=> res!1822792 e!2748883)))

(assert (=> d!1337647 (= res!1822792 ((_ is Nil!49408) (t!356470 (toList!3341 lm!1616))))))

(assert (=> d!1337647 (= (forall!9452 (t!356470 (toList!3341 lm!1616)) lambda!151414) e!2748883)))

(declare-fun b!4414334 () Bool)

(declare-fun e!2748884 () Bool)

(assert (=> b!4414334 (= e!2748883 e!2748884)))

(declare-fun res!1822793 () Bool)

(assert (=> b!4414334 (=> (not res!1822793) (not e!2748884))))

(assert (=> b!4414334 (= res!1822793 (dynLambda!20805 lambda!151414 (h!55061 (t!356470 (toList!3341 lm!1616)))))))

(declare-fun b!4414335 () Bool)

(assert (=> b!4414335 (= e!2748884 (forall!9452 (t!356470 (t!356470 (toList!3341 lm!1616))) lambda!151414))))

(assert (= (and d!1337647 (not res!1822792)) b!4414334))

(assert (= (and b!4414334 res!1822793) b!4414335))

(declare-fun b_lambda!142109 () Bool)

(assert (=> (not b_lambda!142109) (not b!4414334)))

(declare-fun m!5090111 () Bool)

(assert (=> b!4414334 m!5090111))

(declare-fun m!5090113 () Bool)

(assert (=> b!4414335 m!5090113))

(assert (=> b!4414106 d!1337647))

(declare-fun b!4414340 () Bool)

(declare-fun e!2748887 () Bool)

(declare-fun tp!1332448 () Bool)

(declare-fun tp!1332449 () Bool)

(assert (=> b!4414340 (= e!2748887 (and tp!1332448 tp!1332449))))

(assert (=> b!4414102 (= tp!1332434 e!2748887)))

(assert (= (and b!4414102 ((_ is Cons!49408) (toList!3341 lm!1616))) b!4414340))

(declare-fun e!2748890 () Bool)

(declare-fun b!4414345 () Bool)

(declare-fun tp!1332452 () Bool)

(assert (=> b!4414345 (= e!2748890 (and tp_is_empty!25955 tp_is_empty!25953 tp!1332452))))

(assert (=> b!4414097 (= tp!1332433 e!2748890)))

(assert (= (and b!4414097 ((_ is Cons!49407) (t!356469 newBucket!194))) b!4414345))

(declare-fun b_lambda!142111 () Bool)

(assert (= b_lambda!142109 (or start!429766 b_lambda!142111)))

(declare-fun bs!753134 () Bool)

(declare-fun d!1337649 () Bool)

(assert (= bs!753134 (and d!1337649 start!429766)))

(assert (=> bs!753134 (= (dynLambda!20805 lambda!151414 (h!55061 (t!356470 (toList!3341 lm!1616)))) (noDuplicateKeys!677 (_2!27838 (h!55061 (t!356470 (toList!3341 lm!1616))))))))

(declare-fun m!5090115 () Bool)

(assert (=> bs!753134 m!5090115))

(assert (=> b!4414334 d!1337649))

(declare-fun b_lambda!142113 () Bool)

(assert (= b_lambda!142107 (or start!429766 b_lambda!142113)))

(declare-fun bs!753135 () Bool)

(declare-fun d!1337651 () Bool)

(assert (= bs!753135 (and d!1337651 start!429766)))

(assert (=> bs!753135 (= (dynLambda!20805 lambda!151414 (h!55061 (toList!3341 lm!1616))) (noDuplicateKeys!677 (_2!27838 (h!55061 (toList!3341 lm!1616)))))))

(declare-fun m!5090117 () Bool)

(assert (=> bs!753135 m!5090117))

(assert (=> b!4414303 d!1337651))

(declare-fun b_lambda!142115 () Bool)

(assert (= b_lambda!142103 (or start!429766 b_lambda!142115)))

(declare-fun bs!753136 () Bool)

(declare-fun d!1337653 () Bool)

(assert (= bs!753136 (and d!1337653 start!429766)))

(assert (=> bs!753136 (= (dynLambda!20805 lambda!151414 (h!55061 (toList!3341 lt!1615972))) (noDuplicateKeys!677 (_2!27838 (h!55061 (toList!3341 lt!1615972)))))))

(declare-fun m!5090119 () Bool)

(assert (=> bs!753136 m!5090119))

(assert (=> b!4414291 d!1337653))

(declare-fun b_lambda!142117 () Bool)

(assert (= b_lambda!142105 (or start!429766 b_lambda!142117)))

(declare-fun bs!753137 () Bool)

(declare-fun d!1337655 () Bool)

(assert (= bs!753137 (and d!1337655 start!429766)))

(assert (=> bs!753137 (= (dynLambda!20805 lambda!151414 (tuple2!49089 hash!366 newBucket!194)) (noDuplicateKeys!677 (_2!27838 (tuple2!49089 hash!366 newBucket!194))))))

(declare-fun m!5090121 () Bool)

(assert (=> bs!753137 m!5090121))

(assert (=> b!4414302 d!1337655))

(check-sat (not d!1337631) (not bs!753137) (not b!4414329) (not b!4414332) (not b!4414252) (not d!1337613) (not bm!307216) (not b!4414304) (not d!1337645) (not b_lambda!142111) (not b!4414253) (not bm!307217) (not b!4414230) (not b!4414255) (not d!1337623) (not bm!307220) (not d!1337633) (not bm!307223) (not b!4414326) (not b!4414297) (not b!4414251) (not b!4414277) (not b!4414286) (not b!4414298) (not bm!307219) (not d!1337567) (not d!1337619) (not b!4414262) (not bs!753134) (not d!1337643) (not b!4414228) tp_is_empty!25955 (not b!4414227) (not bm!307215) (not b!4414325) (not b!4414328) (not d!1337641) (not b!4414324) (not b!4414276) (not b!4414340) (not b!4414331) (not d!1337621) (not b!4414264) (not bs!753136) (not b!4414254) (not b!4414292) (not b_lambda!142115) (not d!1337627) (not b!4414345) (not bm!307218) (not b!4414226) (not b!4414335) (not b!4414257) (not d!1337601) (not d!1337639) (not b!4414327) tp_is_empty!25953 (not b_lambda!142117) (not bs!753135) (not d!1337617) (not b_lambda!142113) (not b!4414284) (not d!1337615))
(check-sat)
