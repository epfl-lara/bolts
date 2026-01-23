; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429562 () Bool)

(assert start!429562)

(declare-fun b!4412862 () Bool)

(declare-fun res!1821852 () Bool)

(declare-fun e!2748062 () Bool)

(assert (=> b!4412862 (=> res!1821852 e!2748062)))

(declare-datatypes ((V!10984 0))(
  ( (V!10985 (val!16861 Int)) )
))
(declare-datatypes ((K!10738 0))(
  ( (K!10739 (val!16862 Int)) )
))
(declare-datatypes ((tuple2!49042 0))(
  ( (tuple2!49043 (_1!27815 K!10738) (_2!27815 V!10984)) )
))
(declare-datatypes ((List!49504 0))(
  ( (Nil!49380) (Cons!49380 (h!55027 tuple2!49042) (t!356442 List!49504)) )
))
(declare-datatypes ((tuple2!49044 0))(
  ( (tuple2!49045 (_1!27816 (_ BitVec 64)) (_2!27816 List!49504)) )
))
(declare-datatypes ((List!49505 0))(
  ( (Nil!49381) (Cons!49381 (h!55028 tuple2!49044) (t!356443 List!49505)) )
))
(declare-datatypes ((ListLongMap!1969 0))(
  ( (ListLongMap!1970 (toList!3319 List!49505)) )
))
(declare-fun lt!1614965 () ListLongMap!1969)

(declare-fun lt!1614963 () tuple2!49044)

(declare-fun head!9145 (List!49505) tuple2!49044)

(assert (=> b!4412862 (= res!1821852 (not (= (head!9145 (toList!3319 lt!1614965)) lt!1614963)))))

(declare-fun b!4412863 () Bool)

(declare-fun res!1821853 () Bool)

(declare-fun e!2748059 () Bool)

(assert (=> b!4412863 (=> (not res!1821853) (not e!2748059))))

(declare-fun lm!1616 () ListLongMap!1969)

(declare-datatypes ((Hashable!5060 0))(
  ( (HashableExt!5059 (__x!30763 Int)) )
))
(declare-fun hashF!1220 () Hashable!5060)

(declare-fun allKeysSameHashInMap!772 (ListLongMap!1969 Hashable!5060) Bool)

(assert (=> b!4412863 (= res!1821853 (allKeysSameHashInMap!772 lm!1616 hashF!1220))))

(declare-fun e!2748060 () Bool)

(declare-fun newValue!93 () V!10984)

(declare-fun key!3717 () K!10738)

(declare-fun lt!1614964 () Bool)

(declare-fun newBucket!194 () List!49504)

(declare-fun b!4412864 () Bool)

(assert (=> b!4412864 (= e!2748060 (and (not lt!1614964) (= newBucket!194 (Cons!49380 (tuple2!49043 key!3717 newValue!93) Nil!49380))))))

(declare-fun b!4412865 () Bool)

(assert (=> b!4412865 (= e!2748062 true)))

(declare-datatypes ((ListMap!2563 0))(
  ( (ListMap!2564 (toList!3320 List!49504)) )
))
(declare-fun lt!1614959 () ListMap!2563)

(declare-fun lt!1614960 () ListMap!2563)

(declare-fun addToMapMapFromBucket!320 (List!49504 ListMap!2563) ListMap!2563)

(assert (=> b!4412865 (= lt!1614959 (addToMapMapFromBucket!320 newBucket!194 lt!1614960))))

(declare-fun lt!1614962 () ListMap!2563)

(declare-fun extractMap!727 (List!49505) ListMap!2563)

(assert (=> b!4412865 (= lt!1614962 (extractMap!727 (toList!3319 lt!1614965)))))

(assert (=> b!4412865 (= lt!1614960 (extractMap!727 (t!356443 (toList!3319 lm!1616))))))

(declare-fun b!4412866 () Bool)

(declare-fun res!1821855 () Bool)

(declare-fun e!2748063 () Bool)

(assert (=> b!4412866 (=> (not res!1821855) (not e!2748063))))

(declare-fun noDuplicateKeys!666 (List!49504) Bool)

(assert (=> b!4412866 (= res!1821855 (noDuplicateKeys!666 newBucket!194))))

(declare-fun e!2748064 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun b!4412867 () Bool)

(declare-fun apply!11518 (ListLongMap!1969 (_ BitVec 64)) List!49504)

(assert (=> b!4412867 (= e!2748064 (= newBucket!194 (Cons!49380 (tuple2!49043 key!3717 newValue!93) (apply!11518 lm!1616 hash!366))))))

(declare-fun res!1821859 () Bool)

(assert (=> start!429562 (=> (not res!1821859) (not e!2748059))))

(declare-fun lambda!151048 () Int)

(declare-fun forall!9437 (List!49505 Int) Bool)

(assert (=> start!429562 (= res!1821859 (forall!9437 (toList!3319 lm!1616) lambda!151048))))

(assert (=> start!429562 e!2748059))

(declare-fun tp_is_empty!25909 () Bool)

(assert (=> start!429562 tp_is_empty!25909))

(declare-fun tp_is_empty!25911 () Bool)

(assert (=> start!429562 tp_is_empty!25911))

(declare-fun e!2748061 () Bool)

(assert (=> start!429562 e!2748061))

(declare-fun e!2748065 () Bool)

(declare-fun inv!64925 (ListLongMap!1969) Bool)

(assert (=> start!429562 (and (inv!64925 lm!1616) e!2748065)))

(assert (=> start!429562 true))

(declare-fun b!4412868 () Bool)

(assert (=> b!4412868 (= e!2748059 e!2748063)))

(declare-fun res!1821863 () Bool)

(assert (=> b!4412868 (=> (not res!1821863) (not e!2748063))))

(assert (=> b!4412868 (= res!1821863 e!2748060)))

(declare-fun res!1821851 () Bool)

(assert (=> b!4412868 (=> res!1821851 e!2748060)))

(assert (=> b!4412868 (= res!1821851 e!2748064)))

(declare-fun res!1821858 () Bool)

(assert (=> b!4412868 (=> (not res!1821858) (not e!2748064))))

(declare-fun lt!1614961 () Bool)

(assert (=> b!4412868 (= res!1821858 (not lt!1614961))))

(assert (=> b!4412868 (= lt!1614961 (not lt!1614964))))

(declare-fun contains!11814 (ListLongMap!1969 (_ BitVec 64)) Bool)

(assert (=> b!4412868 (= lt!1614964 (contains!11814 lm!1616 hash!366))))

(declare-fun b!4412869 () Bool)

(assert (=> b!4412869 (= e!2748063 (not e!2748062))))

(declare-fun res!1821857 () Bool)

(assert (=> b!4412869 (=> res!1821857 e!2748062)))

(assert (=> b!4412869 (= res!1821857 (not (forall!9437 (toList!3319 lt!1614965) lambda!151048)))))

(assert (=> b!4412869 (forall!9437 (toList!3319 lt!1614965) lambda!151048)))

(declare-fun +!935 (ListLongMap!1969 tuple2!49044) ListLongMap!1969)

(assert (=> b!4412869 (= lt!1614965 (+!935 lm!1616 lt!1614963))))

(assert (=> b!4412869 (= lt!1614963 (tuple2!49045 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80520 0))(
  ( (Unit!80521) )
))
(declare-fun lt!1614966 () Unit!80520)

(declare-fun addValidProp!310 (ListLongMap!1969 Int (_ BitVec 64) List!49504) Unit!80520)

(assert (=> b!4412869 (= lt!1614966 (addValidProp!310 lm!1616 lambda!151048 hash!366 newBucket!194))))

(declare-fun b!4412870 () Bool)

(declare-fun res!1821854 () Bool)

(assert (=> b!4412870 (=> (not res!1821854) (not e!2748063))))

(assert (=> b!4412870 (= res!1821854 (forall!9437 (toList!3319 lm!1616) lambda!151048))))

(declare-fun b!4412871 () Bool)

(declare-fun res!1821864 () Bool)

(assert (=> b!4412871 (=> res!1821864 e!2748062)))

(declare-fun tail!7154 (List!49505) List!49505)

(assert (=> b!4412871 (= res!1821864 (not (= (tail!7154 (toList!3319 lt!1614965)) (t!356443 (toList!3319 lm!1616)))))))

(declare-fun b!4412872 () Bool)

(declare-fun res!1821861 () Bool)

(assert (=> b!4412872 (=> (not res!1821861) (not e!2748059))))

(declare-fun allKeysSameHash!626 (List!49504 (_ BitVec 64) Hashable!5060) Bool)

(assert (=> b!4412872 (= res!1821861 (allKeysSameHash!626 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4412873 () Bool)

(declare-fun tp!1332313 () Bool)

(assert (=> b!4412873 (= e!2748065 tp!1332313)))

(declare-fun b!4412874 () Bool)

(declare-fun res!1821862 () Bool)

(assert (=> b!4412874 (=> res!1821862 e!2748062)))

(assert (=> b!4412874 (= res!1821862 (or (not (is-Cons!49381 (toList!3319 lm!1616))) (not (= (_1!27816 (h!55028 (toList!3319 lm!1616))) hash!366)) lt!1614961))))

(declare-fun b!4412875 () Bool)

(declare-fun tp!1332314 () Bool)

(assert (=> b!4412875 (= e!2748061 (and tp_is_empty!25911 tp_is_empty!25909 tp!1332314))))

(declare-fun b!4412876 () Bool)

(declare-fun res!1821860 () Bool)

(assert (=> b!4412876 (=> (not res!1821860) (not e!2748059))))

(declare-fun contains!11815 (ListMap!2563 K!10738) Bool)

(assert (=> b!4412876 (= res!1821860 (not (contains!11815 (extractMap!727 (toList!3319 lm!1616)) key!3717)))))

(declare-fun b!4412877 () Bool)

(declare-fun res!1821856 () Bool)

(assert (=> b!4412877 (=> (not res!1821856) (not e!2748059))))

(declare-fun hash!1968 (Hashable!5060 K!10738) (_ BitVec 64))

(assert (=> b!4412877 (= res!1821856 (= (hash!1968 hashF!1220 key!3717) hash!366))))

(assert (= (and start!429562 res!1821859) b!4412863))

(assert (= (and b!4412863 res!1821853) b!4412877))

(assert (= (and b!4412877 res!1821856) b!4412872))

(assert (= (and b!4412872 res!1821861) b!4412876))

(assert (= (and b!4412876 res!1821860) b!4412868))

(assert (= (and b!4412868 res!1821858) b!4412867))

(assert (= (and b!4412868 (not res!1821851)) b!4412864))

(assert (= (and b!4412868 res!1821863) b!4412866))

(assert (= (and b!4412866 res!1821855) b!4412870))

(assert (= (and b!4412870 res!1821854) b!4412869))

(assert (= (and b!4412869 (not res!1821857)) b!4412874))

(assert (= (and b!4412874 (not res!1821862)) b!4412862))

(assert (= (and b!4412862 (not res!1821852)) b!4412871))

(assert (= (and b!4412871 (not res!1821864)) b!4412865))

(assert (= (and start!429562 (is-Cons!49380 newBucket!194)) b!4412875))

(assert (= start!429562 b!4412873))

(declare-fun m!5088471 () Bool)

(assert (=> b!4412867 m!5088471))

(declare-fun m!5088473 () Bool)

(assert (=> b!4412872 m!5088473))

(declare-fun m!5088475 () Bool)

(assert (=> b!4412868 m!5088475))

(declare-fun m!5088477 () Bool)

(assert (=> b!4412870 m!5088477))

(declare-fun m!5088479 () Bool)

(assert (=> b!4412869 m!5088479))

(assert (=> b!4412869 m!5088479))

(declare-fun m!5088481 () Bool)

(assert (=> b!4412869 m!5088481))

(declare-fun m!5088483 () Bool)

(assert (=> b!4412869 m!5088483))

(declare-fun m!5088485 () Bool)

(assert (=> b!4412871 m!5088485))

(declare-fun m!5088487 () Bool)

(assert (=> b!4412877 m!5088487))

(declare-fun m!5088489 () Bool)

(assert (=> b!4412863 m!5088489))

(declare-fun m!5088491 () Bool)

(assert (=> b!4412865 m!5088491))

(declare-fun m!5088493 () Bool)

(assert (=> b!4412865 m!5088493))

(declare-fun m!5088495 () Bool)

(assert (=> b!4412865 m!5088495))

(declare-fun m!5088497 () Bool)

(assert (=> b!4412866 m!5088497))

(declare-fun m!5088499 () Bool)

(assert (=> b!4412876 m!5088499))

(assert (=> b!4412876 m!5088499))

(declare-fun m!5088501 () Bool)

(assert (=> b!4412876 m!5088501))

(assert (=> start!429562 m!5088477))

(declare-fun m!5088503 () Bool)

(assert (=> start!429562 m!5088503))

(declare-fun m!5088505 () Bool)

(assert (=> b!4412862 m!5088505))

(push 1)

(assert (not b!4412875))

(assert (not b!4412870))

(assert tp_is_empty!25911)

(assert (not b!4412867))

(assert (not b!4412866))

(assert (not b!4412876))

(assert (not b!4412872))

(assert (not b!4412873))

(assert (not b!4412865))

(assert (not b!4412863))

(assert (not b!4412877))

(assert (not start!429562))

(assert tp_is_empty!25909)

(assert (not b!4412862))

(assert (not b!4412869))

(assert (not b!4412871))

(assert (not b!4412868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

