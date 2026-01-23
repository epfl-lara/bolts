; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503184 () Bool)

(assert start!503184)

(declare-fun b!4837759 () Bool)

(declare-fun e!3023341 () Bool)

(declare-datatypes ((K!17032 0))(
  ( (K!17033 (val!21931 Int)) )
))
(declare-datatypes ((V!17278 0))(
  ( (V!17279 (val!21932 Int)) )
))
(declare-datatypes ((tuple2!58734 0))(
  ( (tuple2!58735 (_1!32661 K!17032) (_2!32661 V!17278)) )
))
(declare-datatypes ((List!55402 0))(
  ( (Nil!55278) (Cons!55278 (h!61713 tuple2!58734) (t!362898 List!55402)) )
))
(declare-datatypes ((tuple2!58736 0))(
  ( (tuple2!58737 (_1!32662 (_ BitVec 64)) (_2!32662 List!55402)) )
))
(declare-datatypes ((List!55403 0))(
  ( (Nil!55279) (Cons!55279 (h!61714 tuple2!58736) (t!362899 List!55403)) )
))
(declare-datatypes ((ListLongMap!6233 0))(
  ( (ListLongMap!6234 (toList!7693 List!55403)) )
))
(declare-fun lm!2671 () ListLongMap!6233)

(declare-fun key!6540 () K!17032)

(declare-fun containsKey!4537 (List!55402 K!17032) Bool)

(assert (=> b!4837759 (= e!3023341 (not (containsKey!4537 (_2!32662 (h!61714 (toList!7693 lm!2671))) key!6540)))))

(declare-fun b!4837760 () Bool)

(declare-fun res!2061869 () Bool)

(declare-fun e!3023344 () Bool)

(assert (=> b!4837760 (=> (not res!2061869) (not e!3023344))))

(declare-fun containsKeyBiggerList!669 (List!55403 K!17032) Bool)

(assert (=> b!4837760 (= res!2061869 (containsKeyBiggerList!669 (toList!7693 lm!2671) key!6540))))

(declare-fun b!4837761 () Bool)

(declare-fun res!2061865 () Bool)

(assert (=> b!4837761 (=> (not res!2061865) (not e!3023344))))

(declare-datatypes ((Hashable!7385 0))(
  ( (HashableExt!7384 (__x!33660 Int)) )
))
(declare-fun hashF!1662 () Hashable!7385)

(declare-fun allKeysSameHashInMap!2701 (ListLongMap!6233 Hashable!7385) Bool)

(assert (=> b!4837761 (= res!2061865 (allKeysSameHashInMap!2701 lm!2671 hashF!1662))))

(declare-fun res!2061873 () Bool)

(assert (=> start!503184 (=> (not res!2061873) (not e!3023344))))

(declare-fun lambda!239994 () Int)

(declare-fun forall!12792 (List!55403 Int) Bool)

(assert (=> start!503184 (= res!2061873 (forall!12792 (toList!7693 lm!2671) lambda!239994))))

(assert (=> start!503184 e!3023344))

(declare-fun e!3023343 () Bool)

(declare-fun inv!70933 (ListLongMap!6233) Bool)

(assert (=> start!503184 (and (inv!70933 lm!2671) e!3023343)))

(assert (=> start!503184 true))

(declare-fun tp_is_empty!34873 () Bool)

(assert (=> start!503184 tp_is_empty!34873))

(declare-fun b!4837762 () Bool)

(declare-fun res!2061866 () Bool)

(declare-fun e!3023342 () Bool)

(assert (=> b!4837762 (=> res!2061866 e!3023342)))

(declare-fun lt!1982642 () ListLongMap!6233)

(assert (=> b!4837762 (= res!2061866 (not (containsKeyBiggerList!669 (toList!7693 lt!1982642) key!6540)))))

(declare-fun b!4837763 () Bool)

(declare-fun res!2061872 () Bool)

(assert (=> b!4837763 (=> (not res!2061872) (not e!3023344))))

(assert (=> b!4837763 (= res!2061872 (is-Cons!55279 (toList!7693 lm!2671)))))

(declare-fun b!4837764 () Bool)

(declare-fun e!3023345 () Bool)

(assert (=> b!4837764 (= e!3023344 (not e!3023345))))

(declare-fun res!2061864 () Bool)

(assert (=> b!4837764 (=> res!2061864 e!3023345)))

(assert (=> b!4837764 (= res!2061864 (not (containsKeyBiggerList!669 (t!362899 (toList!7693 lm!2671)) key!6540)))))

(declare-fun tail!9447 (List!55403) List!55403)

(assert (=> b!4837764 (containsKeyBiggerList!669 (tail!9447 (toList!7693 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144731 0))(
  ( (Unit!144732) )
))
(declare-fun lt!1982643 () Unit!144731)

(declare-fun lemmaInBiggerListButNotHeadThenTail!29 (ListLongMap!6233 K!17032 Hashable!7385) Unit!144731)

(assert (=> b!4837764 (= lt!1982643 (lemmaInBiggerListButNotHeadThenTail!29 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4837765 () Bool)

(declare-fun res!2061867 () Bool)

(assert (=> b!4837765 (=> (not res!2061867) (not e!3023344))))

(declare-datatypes ((ListMap!7047 0))(
  ( (ListMap!7048 (toList!7694 List!55402)) )
))
(declare-fun extractMap!2743 (List!55403) ListMap!7047)

(declare-fun addToMapMapFromBucket!1883 (List!55402 ListMap!7047) ListMap!7047)

(assert (=> b!4837765 (= res!2061867 (= (extractMap!2743 (toList!7693 lm!2671)) (addToMapMapFromBucket!1883 (_2!32662 (h!61714 (toList!7693 lm!2671))) (extractMap!2743 (t!362899 (toList!7693 lm!2671))))))))

(declare-fun b!4837766 () Bool)

(assert (=> b!4837766 (= e!3023342 true)))

(declare-fun b!4837767 () Bool)

(assert (=> b!4837767 (= e!3023345 e!3023342)))

(declare-fun res!2061871 () Bool)

(assert (=> b!4837767 (=> res!2061871 e!3023342)))

(assert (=> b!4837767 (= res!2061871 (not (forall!12792 (toList!7693 lt!1982642) lambda!239994)))))

(declare-fun tail!9448 (ListLongMap!6233) ListLongMap!6233)

(assert (=> b!4837767 (= lt!1982642 (tail!9448 lm!2671))))

(declare-fun b!4837768 () Bool)

(declare-fun res!2061863 () Bool)

(assert (=> b!4837768 (=> res!2061863 e!3023342)))

(assert (=> b!4837768 (= res!2061863 (not (allKeysSameHashInMap!2701 lt!1982642 hashF!1662)))))

(declare-fun b!4837769 () Bool)

(declare-fun res!2061870 () Bool)

(assert (=> b!4837769 (=> (not res!2061870) (not e!3023344))))

(assert (=> b!4837769 (= res!2061870 e!3023341)))

(declare-fun res!2061868 () Bool)

(assert (=> b!4837769 (=> res!2061868 e!3023341)))

(assert (=> b!4837769 (= res!2061868 (not (is-Cons!55279 (toList!7693 lm!2671))))))

(declare-fun b!4837770 () Bool)

(declare-fun tp!1363615 () Bool)

(assert (=> b!4837770 (= e!3023343 tp!1363615)))

(assert (= (and start!503184 res!2061873) b!4837761))

(assert (= (and b!4837761 res!2061865) b!4837760))

(assert (= (and b!4837760 res!2061869) b!4837769))

(assert (= (and b!4837769 (not res!2061868)) b!4837759))

(assert (= (and b!4837769 res!2061870) b!4837763))

(assert (= (and b!4837763 res!2061872) b!4837765))

(assert (= (and b!4837765 res!2061867) b!4837764))

(assert (= (and b!4837764 (not res!2061864)) b!4837767))

(assert (= (and b!4837767 (not res!2061871)) b!4837768))

(assert (= (and b!4837768 (not res!2061863)) b!4837762))

(assert (= (and b!4837762 (not res!2061866)) b!4837766))

(assert (= start!503184 b!4837770))

(declare-fun m!5833144 () Bool)

(assert (=> start!503184 m!5833144))

(declare-fun m!5833146 () Bool)

(assert (=> start!503184 m!5833146))

(declare-fun m!5833148 () Bool)

(assert (=> b!4837767 m!5833148))

(declare-fun m!5833150 () Bool)

(assert (=> b!4837767 m!5833150))

(declare-fun m!5833152 () Bool)

(assert (=> b!4837759 m!5833152))

(declare-fun m!5833154 () Bool)

(assert (=> b!4837760 m!5833154))

(declare-fun m!5833156 () Bool)

(assert (=> b!4837765 m!5833156))

(declare-fun m!5833158 () Bool)

(assert (=> b!4837765 m!5833158))

(assert (=> b!4837765 m!5833158))

(declare-fun m!5833160 () Bool)

(assert (=> b!4837765 m!5833160))

(declare-fun m!5833162 () Bool)

(assert (=> b!4837768 m!5833162))

(declare-fun m!5833164 () Bool)

(assert (=> b!4837762 m!5833164))

(declare-fun m!5833166 () Bool)

(assert (=> b!4837761 m!5833166))

(declare-fun m!5833168 () Bool)

(assert (=> b!4837764 m!5833168))

(declare-fun m!5833170 () Bool)

(assert (=> b!4837764 m!5833170))

(assert (=> b!4837764 m!5833170))

(declare-fun m!5833172 () Bool)

(assert (=> b!4837764 m!5833172))

(declare-fun m!5833174 () Bool)

(assert (=> b!4837764 m!5833174))

(push 1)

(assert (not b!4837765))

(assert (not start!503184))

(assert (not b!4837759))

(assert (not b!4837762))

(assert (not b!4837767))

(assert (not b!4837768))

(assert (not b!4837764))

(assert (not b!4837761))

(assert (not b!4837760))

(assert tp_is_empty!34873)

(assert (not b!4837770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

