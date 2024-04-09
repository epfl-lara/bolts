; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43800 () Bool)

(assert start!43800)

(declare-fun res!288323 () Bool)

(declare-fun e!284763 () Bool)

(assert (=> start!43800 (=> (not res!288323) (not e!284763))))

(declare-datatypes ((B!1120 0))(
  ( (B!1121 (val!7012 Int)) )
))
(declare-datatypes ((tuple2!9222 0))(
  ( (tuple2!9223 (_1!4621 (_ BitVec 64)) (_2!4621 B!1120)) )
))
(declare-datatypes ((List!9311 0))(
  ( (Nil!9308) (Cons!9307 (h!10163 tuple2!9222) (t!15541 List!9311)) )
))
(declare-fun l!956 () List!9311)

(declare-fun isStrictlySorted!411 (List!9311) Bool)

(assert (=> start!43800 (= res!288323 (isStrictlySorted!411 l!956))))

(assert (=> start!43800 e!284763))

(declare-fun e!284764 () Bool)

(assert (=> start!43800 e!284764))

(assert (=> start!43800 true))

(declare-fun b!483786 () Bool)

(declare-fun res!288322 () Bool)

(assert (=> b!483786 (=> (not res!288322) (not e!284763))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!377 (List!9311 (_ BitVec 64)) Bool)

(assert (=> b!483786 (= res!288322 (not (containsKey!377 l!956 key!251)))))

(declare-fun b!483787 () Bool)

(declare-fun ListPrimitiveSize!62 (List!9311) Int)

(assert (=> b!483787 (= e!284763 (< (ListPrimitiveSize!62 l!956) 0))))

(declare-fun b!483788 () Bool)

(declare-fun tp_is_empty!13929 () Bool)

(declare-fun tp!43483 () Bool)

(assert (=> b!483788 (= e!284764 (and tp_is_empty!13929 tp!43483))))

(assert (= (and start!43800 res!288323) b!483786))

(assert (= (and b!483786 res!288322) b!483787))

(get-info :version)

(assert (= (and start!43800 ((_ is Cons!9307) l!956)) b!483788))

(declare-fun m!464689 () Bool)

(assert (=> start!43800 m!464689))

(declare-fun m!464691 () Bool)

(assert (=> b!483786 m!464691))

(declare-fun m!464693 () Bool)

(assert (=> b!483787 m!464693))

(check-sat (not b!483788) (not b!483786) (not start!43800) tp_is_empty!13929 (not b!483787))
(check-sat)
(get-model)

(declare-fun d!76899 () Bool)

(declare-fun res!288338 () Bool)

(declare-fun e!284782 () Bool)

(assert (=> d!76899 (=> res!288338 e!284782)))

(assert (=> d!76899 (= res!288338 (and ((_ is Cons!9307) l!956) (= (_1!4621 (h!10163 l!956)) key!251)))))

(assert (=> d!76899 (= (containsKey!377 l!956 key!251) e!284782)))

(declare-fun b!483812 () Bool)

(declare-fun e!284783 () Bool)

(assert (=> b!483812 (= e!284782 e!284783)))

(declare-fun res!288339 () Bool)

(assert (=> b!483812 (=> (not res!288339) (not e!284783))))

(assert (=> b!483812 (= res!288339 (and (or (not ((_ is Cons!9307) l!956)) (bvsle (_1!4621 (h!10163 l!956)) key!251)) ((_ is Cons!9307) l!956) (bvslt (_1!4621 (h!10163 l!956)) key!251)))))

(declare-fun b!483813 () Bool)

(assert (=> b!483813 (= e!284783 (containsKey!377 (t!15541 l!956) key!251))))

(assert (= (and d!76899 (not res!288338)) b!483812))

(assert (= (and b!483812 res!288339) b!483813))

(declare-fun m!464703 () Bool)

(assert (=> b!483813 m!464703))

(assert (=> b!483786 d!76899))

(declare-fun d!76907 () Bool)

(declare-fun res!288352 () Bool)

(declare-fun e!284798 () Bool)

(assert (=> d!76907 (=> res!288352 e!284798)))

(assert (=> d!76907 (= res!288352 (or ((_ is Nil!9308) l!956) ((_ is Nil!9308) (t!15541 l!956))))))

(assert (=> d!76907 (= (isStrictlySorted!411 l!956) e!284798)))

(declare-fun b!483830 () Bool)

(declare-fun e!284799 () Bool)

(assert (=> b!483830 (= e!284798 e!284799)))

(declare-fun res!288353 () Bool)

(assert (=> b!483830 (=> (not res!288353) (not e!284799))))

(assert (=> b!483830 (= res!288353 (bvslt (_1!4621 (h!10163 l!956)) (_1!4621 (h!10163 (t!15541 l!956)))))))

(declare-fun b!483831 () Bool)

(assert (=> b!483831 (= e!284799 (isStrictlySorted!411 (t!15541 l!956)))))

(assert (= (and d!76907 (not res!288352)) b!483830))

(assert (= (and b!483830 res!288353) b!483831))

(declare-fun m!464709 () Bool)

(assert (=> b!483831 m!464709))

(assert (=> start!43800 d!76907))

(declare-fun d!76913 () Bool)

(declare-fun lt!219302 () Int)

(assert (=> d!76913 (>= lt!219302 0)))

(declare-fun e!284811 () Int)

(assert (=> d!76913 (= lt!219302 e!284811)))

(declare-fun c!58097 () Bool)

(assert (=> d!76913 (= c!58097 ((_ is Nil!9308) l!956))))

(assert (=> d!76913 (= (ListPrimitiveSize!62 l!956) lt!219302)))

(declare-fun b!483846 () Bool)

(assert (=> b!483846 (= e!284811 0)))

(declare-fun b!483847 () Bool)

(assert (=> b!483847 (= e!284811 (+ 1 (ListPrimitiveSize!62 (t!15541 l!956))))))

(assert (= (and d!76913 c!58097) b!483846))

(assert (= (and d!76913 (not c!58097)) b!483847))

(declare-fun m!464713 () Bool)

(assert (=> b!483847 m!464713))

(assert (=> b!483787 d!76913))

(declare-fun b!483859 () Bool)

(declare-fun e!284819 () Bool)

(declare-fun tp!43492 () Bool)

(assert (=> b!483859 (= e!284819 (and tp_is_empty!13929 tp!43492))))

(assert (=> b!483788 (= tp!43483 e!284819)))

(assert (= (and b!483788 ((_ is Cons!9307) (t!15541 l!956))) b!483859))

(check-sat (not b!483847) (not b!483831) (not b!483859) tp_is_empty!13929 (not b!483813))
(check-sat)
