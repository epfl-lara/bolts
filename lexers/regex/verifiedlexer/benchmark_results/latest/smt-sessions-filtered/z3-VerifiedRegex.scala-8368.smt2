; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436060 () Bool)

(assert start!436060)

(declare-datatypes ((V!11491 0))(
  ( (V!11492 (val!17267 Int)) )
))
(declare-fun newValue!93 () V!11491)

(declare-datatypes ((K!11245 0))(
  ( (K!11246 (val!17268 Int)) )
))
(declare-fun key!3717 () K!11245)

(declare-fun b!4452876 () Bool)

(declare-datatypes ((tuple2!49854 0))(
  ( (tuple2!49855 (_1!28221 K!11245) (_2!28221 V!11491)) )
))
(declare-datatypes ((List!50001 0))(
  ( (Nil!49877) (Cons!49877 (h!55622 tuple2!49854) (t!356951 List!50001)) )
))
(declare-datatypes ((tuple2!49856 0))(
  ( (tuple2!49857 (_1!28222 (_ BitVec 64)) (_2!28222 List!50001)) )
))
(declare-datatypes ((List!50002 0))(
  ( (Nil!49878) (Cons!49878 (h!55623 tuple2!49856) (t!356952 List!50002)) )
))
(declare-datatypes ((ListLongMap!2375 0))(
  ( (ListLongMap!2376 (toList!3725 List!50002)) )
))
(declare-fun lm!1616 () ListLongMap!2375)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!50001)

(declare-fun e!2772894 () Bool)

(declare-fun apply!11721 (ListLongMap!2375 (_ BitVec 64)) List!50001)

(assert (=> b!4452876 (= e!2772894 (= newBucket!194 (Cons!49877 (tuple2!49855 key!3717 newValue!93) (apply!11721 lm!1616 hash!366))))))

(declare-fun b!4452877 () Bool)

(declare-fun res!1845385 () Bool)

(declare-fun e!2772890 () Bool)

(assert (=> b!4452877 (=> (not res!1845385) (not e!2772890))))

(declare-datatypes ((Hashable!5263 0))(
  ( (HashableExt!5262 (__x!30966 Int)) )
))
(declare-fun hashF!1220 () Hashable!5263)

(declare-fun hash!2360 (Hashable!5263 K!11245) (_ BitVec 64))

(assert (=> b!4452877 (= res!1845385 (= (hash!2360 hashF!1220 key!3717) hash!366))))

(declare-fun b!4452878 () Bool)

(declare-fun res!1845391 () Bool)

(assert (=> b!4452878 (=> (not res!1845391) (not e!2772890))))

(declare-fun allKeysSameHash!829 (List!50001 (_ BitVec 64) Hashable!5263) Bool)

(assert (=> b!4452878 (= res!1845391 (allKeysSameHash!829 newBucket!194 hash!366 hashF!1220))))

(declare-datatypes ((ListMap!2969 0))(
  ( (ListMap!2970 (toList!3726 List!50001)) )
))
(declare-fun lt!1645088 () ListMap!2969)

(declare-fun b!4452879 () Bool)

(declare-fun e!2772889 () Bool)

(declare-fun lt!1645087 () ListLongMap!2375)

(declare-fun eq!467 (ListMap!2969 ListMap!2969) Bool)

(declare-fun extractMap!930 (List!50002) ListMap!2969)

(declare-fun +!1273 (ListMap!2969 tuple2!49854) ListMap!2969)

(assert (=> b!4452879 (= e!2772889 (eq!467 (extractMap!930 (toList!3725 lt!1645087)) (+!1273 lt!1645088 (tuple2!49855 key!3717 newValue!93))))))

(declare-fun b!4452880 () Bool)

(declare-fun res!1845389 () Bool)

(declare-fun e!2772896 () Bool)

(assert (=> b!4452880 (=> (not res!1845389) (not e!2772896))))

(declare-fun noDuplicateKeys!869 (List!50001) Bool)

(assert (=> b!4452880 (= res!1845389 (noDuplicateKeys!869 newBucket!194))))

(declare-fun b!4452881 () Bool)

(declare-fun res!1845387 () Bool)

(assert (=> b!4452881 (=> res!1845387 e!2772889)))

(get-info :version)

(assert (=> b!4452881 (= res!1845387 (or (and ((_ is Cons!49878) (toList!3725 lm!1616)) (= (_1!28222 (h!55623 (toList!3725 lm!1616))) hash!366)) (and ((_ is Cons!49878) (toList!3725 lm!1616)) (not (= (_1!28222 (h!55623 (toList!3725 lm!1616))) hash!366))) ((_ is Nil!49878) (toList!3725 lm!1616))))))

(declare-fun b!4452882 () Bool)

(declare-fun e!2772892 () Bool)

(assert (=> b!4452882 (= e!2772890 e!2772892)))

(declare-fun res!1845386 () Bool)

(assert (=> b!4452882 (=> (not res!1845386) (not e!2772892))))

(declare-fun contains!12475 (ListMap!2969 K!11245) Bool)

(assert (=> b!4452882 (= res!1845386 (not (contains!12475 lt!1645088 key!3717)))))

(assert (=> b!4452882 (= lt!1645088 (extractMap!930 (toList!3725 lm!1616)))))

(declare-fun res!1845390 () Bool)

(assert (=> start!436060 (=> (not res!1845390) (not e!2772890))))

(declare-fun lambda!159336 () Int)

(declare-fun forall!9764 (List!50002 Int) Bool)

(assert (=> start!436060 (= res!1845390 (forall!9764 (toList!3725 lm!1616) lambda!159336))))

(assert (=> start!436060 e!2772890))

(declare-fun tp_is_empty!26721 () Bool)

(assert (=> start!436060 tp_is_empty!26721))

(declare-fun tp_is_empty!26723 () Bool)

(assert (=> start!436060 tp_is_empty!26723))

(declare-fun e!2772895 () Bool)

(assert (=> start!436060 e!2772895))

(declare-fun e!2772893 () Bool)

(declare-fun inv!65431 (ListLongMap!2375) Bool)

(assert (=> start!436060 (and (inv!65431 lm!1616) e!2772893)))

(assert (=> start!436060 true))

(declare-fun b!4452883 () Bool)

(declare-fun res!1845388 () Bool)

(assert (=> b!4452883 (=> (not res!1845388) (not e!2772896))))

(assert (=> b!4452883 (= res!1845388 (forall!9764 (toList!3725 lm!1616) lambda!159336))))

(declare-fun b!4452884 () Bool)

(assert (=> b!4452884 (= e!2772896 (not e!2772889))))

(declare-fun res!1845384 () Bool)

(assert (=> b!4452884 (=> res!1845384 e!2772889)))

(assert (=> b!4452884 (= res!1845384 (not (forall!9764 (toList!3725 lt!1645087) lambda!159336)))))

(assert (=> b!4452884 (forall!9764 (toList!3725 lt!1645087) lambda!159336)))

(declare-fun +!1274 (ListLongMap!2375 tuple2!49856) ListLongMap!2375)

(assert (=> b!4452884 (= lt!1645087 (+!1274 lm!1616 (tuple2!49857 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!85681 0))(
  ( (Unit!85682) )
))
(declare-fun lt!1645086 () Unit!85681)

(declare-fun addValidProp!507 (ListLongMap!2375 Int (_ BitVec 64) List!50001) Unit!85681)

(assert (=> b!4452884 (= lt!1645086 (addValidProp!507 lm!1616 lambda!159336 hash!366 newBucket!194))))

(declare-fun lt!1645089 () Bool)

(declare-fun e!2772891 () Bool)

(declare-fun b!4452885 () Bool)

(assert (=> b!4452885 (= e!2772891 (and (not lt!1645089) (= newBucket!194 (Cons!49877 (tuple2!49855 key!3717 newValue!93) Nil!49877))))))

(declare-fun b!4452886 () Bool)

(assert (=> b!4452886 (= e!2772892 e!2772896)))

(declare-fun res!1845392 () Bool)

(assert (=> b!4452886 (=> (not res!1845392) (not e!2772896))))

(assert (=> b!4452886 (= res!1845392 e!2772891)))

(declare-fun res!1845383 () Bool)

(assert (=> b!4452886 (=> res!1845383 e!2772891)))

(assert (=> b!4452886 (= res!1845383 e!2772894)))

(declare-fun res!1845393 () Bool)

(assert (=> b!4452886 (=> (not res!1845393) (not e!2772894))))

(assert (=> b!4452886 (= res!1845393 lt!1645089)))

(declare-fun contains!12476 (ListLongMap!2375 (_ BitVec 64)) Bool)

(assert (=> b!4452886 (= lt!1645089 (contains!12476 lm!1616 hash!366))))

(declare-fun b!4452887 () Bool)

(declare-fun tp!1334598 () Bool)

(assert (=> b!4452887 (= e!2772895 (and tp_is_empty!26723 tp_is_empty!26721 tp!1334598))))

(declare-fun b!4452888 () Bool)

(declare-fun tp!1334597 () Bool)

(assert (=> b!4452888 (= e!2772893 tp!1334597)))

(declare-fun b!4452889 () Bool)

(declare-fun res!1845382 () Bool)

(assert (=> b!4452889 (=> (not res!1845382) (not e!2772890))))

(declare-fun allKeysSameHashInMap!975 (ListLongMap!2375 Hashable!5263) Bool)

(assert (=> b!4452889 (= res!1845382 (allKeysSameHashInMap!975 lm!1616 hashF!1220))))

(assert (= (and start!436060 res!1845390) b!4452889))

(assert (= (and b!4452889 res!1845382) b!4452877))

(assert (= (and b!4452877 res!1845385) b!4452878))

(assert (= (and b!4452878 res!1845391) b!4452882))

(assert (= (and b!4452882 res!1845386) b!4452886))

(assert (= (and b!4452886 res!1845393) b!4452876))

(assert (= (and b!4452886 (not res!1845383)) b!4452885))

(assert (= (and b!4452886 res!1845392) b!4452880))

(assert (= (and b!4452880 res!1845389) b!4452883))

(assert (= (and b!4452883 res!1845388) b!4452884))

(assert (= (and b!4452884 (not res!1845384)) b!4452881))

(assert (= (and b!4452881 (not res!1845387)) b!4452879))

(assert (= (and start!436060 ((_ is Cons!49877) newBucket!194)) b!4452887))

(assert (= start!436060 b!4452888))

(declare-fun m!5153689 () Bool)

(assert (=> b!4452876 m!5153689))

(declare-fun m!5153691 () Bool)

(assert (=> b!4452886 m!5153691))

(declare-fun m!5153693 () Bool)

(assert (=> b!4452884 m!5153693))

(assert (=> b!4452884 m!5153693))

(declare-fun m!5153695 () Bool)

(assert (=> b!4452884 m!5153695))

(declare-fun m!5153697 () Bool)

(assert (=> b!4452884 m!5153697))

(declare-fun m!5153699 () Bool)

(assert (=> b!4452878 m!5153699))

(declare-fun m!5153701 () Bool)

(assert (=> b!4452882 m!5153701))

(declare-fun m!5153703 () Bool)

(assert (=> b!4452882 m!5153703))

(declare-fun m!5153705 () Bool)

(assert (=> b!4452879 m!5153705))

(declare-fun m!5153707 () Bool)

(assert (=> b!4452879 m!5153707))

(assert (=> b!4452879 m!5153705))

(assert (=> b!4452879 m!5153707))

(declare-fun m!5153709 () Bool)

(assert (=> b!4452879 m!5153709))

(declare-fun m!5153711 () Bool)

(assert (=> b!4452880 m!5153711))

(declare-fun m!5153713 () Bool)

(assert (=> b!4452889 m!5153713))

(declare-fun m!5153715 () Bool)

(assert (=> b!4452877 m!5153715))

(declare-fun m!5153717 () Bool)

(assert (=> b!4452883 m!5153717))

(assert (=> start!436060 m!5153717))

(declare-fun m!5153719 () Bool)

(assert (=> start!436060 m!5153719))

(check-sat (not b!4452887) tp_is_empty!26723 (not b!4452880) (not b!4452884) tp_is_empty!26721 (not b!4452877) (not b!4452879) (not b!4452883) (not b!4452889) (not b!4452886) (not b!4452878) (not b!4452888) (not b!4452876) (not start!436060) (not b!4452882))
(check-sat)
