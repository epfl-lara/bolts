; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436288 () Bool)

(assert start!436288)

(declare-fun b!4453976 () Bool)

(declare-fun res!1846033 () Bool)

(declare-fun e!2773499 () Bool)

(assert (=> b!4453976 (=> (not res!1846033) (not e!2773499))))

(declare-datatypes ((V!11561 0))(
  ( (V!11562 (val!17323 Int)) )
))
(declare-datatypes ((K!11315 0))(
  ( (K!11316 (val!17324 Int)) )
))
(declare-datatypes ((tuple2!49966 0))(
  ( (tuple2!49967 (_1!28277 K!11315) (_2!28277 V!11561)) )
))
(declare-datatypes ((List!50062 0))(
  ( (Nil!49938) (Cons!49938 (h!55683 tuple2!49966) (t!357012 List!50062)) )
))
(declare-datatypes ((tuple2!49968 0))(
  ( (tuple2!49969 (_1!28278 (_ BitVec 64)) (_2!28278 List!50062)) )
))
(declare-datatypes ((List!50063 0))(
  ( (Nil!49939) (Cons!49939 (h!55684 tuple2!49968) (t!357013 List!50063)) )
))
(declare-datatypes ((ListLongMap!2431 0))(
  ( (ListLongMap!2432 (toList!3777 List!50063)) )
))
(declare-fun lm!1837 () ListLongMap!2431)

(declare-datatypes ((Hashable!5291 0))(
  ( (HashableExt!5290 (__x!30994 Int)) )
))
(declare-fun hashF!1304 () Hashable!5291)

(declare-fun allKeysSameHashInMap!1003 (ListLongMap!2431 Hashable!5291) Bool)

(assert (=> b!4453976 (= res!1846033 (allKeysSameHashInMap!1003 lm!1837 hashF!1304))))

(declare-fun b!4453977 () Bool)

(declare-fun res!1846036 () Bool)

(assert (=> b!4453977 (=> (not res!1846036) (not e!2773499))))

(declare-fun isEmpty!28441 (List!50063) Bool)

(assert (=> b!4453977 (= res!1846036 (not (isEmpty!28441 (toList!3777 lm!1837))))))

(declare-fun b!4453978 () Bool)

(declare-fun e!2773500 () Bool)

(declare-datatypes ((ListMap!3017 0))(
  ( (ListMap!3018 (toList!3778 List!50062)) )
))
(declare-fun lt!1645568 () ListMap!3017)

(declare-fun extractMap!954 (List!50063) ListMap!3017)

(declare-fun addToMapMapFromBucket!485 (List!50062 ListMap!3017) ListMap!3017)

(assert (=> b!4453978 (= e!2773500 (not (= (extractMap!954 (toList!3777 lm!1837)) (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 lm!1837))) lt!1645568))))))

(declare-fun res!1846035 () Bool)

(assert (=> start!436288 (=> (not res!1846035) (not e!2773499))))

(declare-fun lambda!159585 () Int)

(declare-fun forall!9793 (List!50063 Int) Bool)

(assert (=> start!436288 (= res!1846035 (forall!9793 (toList!3777 lm!1837) lambda!159585))))

(assert (=> start!436288 e!2773499))

(declare-fun e!2773501 () Bool)

(declare-fun inv!65501 (ListLongMap!2431) Bool)

(assert (=> start!436288 (and (inv!65501 lm!1837) e!2773501)))

(assert (=> start!436288 true))

(declare-fun tp_is_empty!26775 () Bool)

(assert (=> start!436288 tp_is_empty!26775))

(declare-fun b!4453979 () Bool)

(assert (=> b!4453979 (= e!2773499 e!2773500)))

(declare-fun res!1846034 () Bool)

(assert (=> b!4453979 (=> (not res!1846034) (not e!2773500))))

(declare-fun key!4369 () K!11315)

(declare-fun contains!12505 (ListMap!3017 K!11315) Bool)

(assert (=> b!4453979 (= res!1846034 (contains!12505 lt!1645568 key!4369))))

(declare-fun tail!7460 (ListLongMap!2431) ListLongMap!2431)

(assert (=> b!4453979 (= lt!1645568 (extractMap!954 (toList!3777 (tail!7460 lm!1837))))))

(declare-fun b!4453980 () Bool)

(declare-fun res!1846037 () Bool)

(assert (=> b!4453980 (=> (not res!1846037) (not e!2773500))))

(get-info :version)

(assert (=> b!4453980 (= res!1846037 ((_ is Cons!49939) (toList!3777 lm!1837)))))

(declare-fun b!4453981 () Bool)

(declare-fun tp!1334771 () Bool)

(assert (=> b!4453981 (= e!2773501 tp!1334771)))

(assert (= (and start!436288 res!1846035) b!4453976))

(assert (= (and b!4453976 res!1846033) b!4453977))

(assert (= (and b!4453977 res!1846036) b!4453979))

(assert (= (and b!4453979 res!1846034) b!4453980))

(assert (= (and b!4453980 res!1846037) b!4453978))

(assert (= start!436288 b!4453981))

(declare-fun m!5154705 () Bool)

(assert (=> b!4453978 m!5154705))

(declare-fun m!5154707 () Bool)

(assert (=> b!4453978 m!5154707))

(declare-fun m!5154709 () Bool)

(assert (=> b!4453976 m!5154709))

(declare-fun m!5154711 () Bool)

(assert (=> b!4453979 m!5154711))

(declare-fun m!5154713 () Bool)

(assert (=> b!4453979 m!5154713))

(declare-fun m!5154715 () Bool)

(assert (=> b!4453979 m!5154715))

(declare-fun m!5154717 () Bool)

(assert (=> start!436288 m!5154717))

(declare-fun m!5154719 () Bool)

(assert (=> start!436288 m!5154719))

(declare-fun m!5154721 () Bool)

(assert (=> b!4453977 m!5154721))

(check-sat (not b!4453976) (not start!436288) tp_is_empty!26775 (not b!4453981) (not b!4453977) (not b!4453979) (not b!4453978))
(check-sat)
(get-model)

(declare-fun bs!790123 () Bool)

(declare-fun d!1358591 () Bool)

(assert (= bs!790123 (and d!1358591 start!436288)))

(declare-fun lambda!159594 () Int)

(assert (=> bs!790123 (= lambda!159594 lambda!159585)))

(declare-fun lt!1645574 () ListMap!3017)

(declare-fun invariantList!867 (List!50062) Bool)

(assert (=> d!1358591 (invariantList!867 (toList!3778 lt!1645574))))

(declare-fun e!2773513 () ListMap!3017)

(assert (=> d!1358591 (= lt!1645574 e!2773513)))

(declare-fun c!758244 () Bool)

(assert (=> d!1358591 (= c!758244 ((_ is Cons!49939) (toList!3777 lm!1837)))))

(assert (=> d!1358591 (forall!9793 (toList!3777 lm!1837) lambda!159594)))

(assert (=> d!1358591 (= (extractMap!954 (toList!3777 lm!1837)) lt!1645574)))

(declare-fun b!4454000 () Bool)

(assert (=> b!4454000 (= e!2773513 (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))))))

(declare-fun b!4454001 () Bool)

(assert (=> b!4454001 (= e!2773513 (ListMap!3018 Nil!49938))))

(assert (= (and d!1358591 c!758244) b!4454000))

(assert (= (and d!1358591 (not c!758244)) b!4454001))

(declare-fun m!5154739 () Bool)

(assert (=> d!1358591 m!5154739))

(declare-fun m!5154741 () Bool)

(assert (=> d!1358591 m!5154741))

(declare-fun m!5154743 () Bool)

(assert (=> b!4454000 m!5154743))

(assert (=> b!4454000 m!5154743))

(declare-fun m!5154745 () Bool)

(assert (=> b!4454000 m!5154745))

(assert (=> b!4453978 d!1358591))

(declare-fun b!4454066 () Bool)

(assert (=> b!4454066 true))

(declare-fun bs!790132 () Bool)

(declare-fun b!4454065 () Bool)

(assert (= bs!790132 (and b!4454065 b!4454066)))

(declare-fun lambda!159657 () Int)

(declare-fun lambda!159656 () Int)

(assert (=> bs!790132 (= lambda!159657 lambda!159656)))

(assert (=> b!4454065 true))

(declare-fun lambda!159658 () Int)

(declare-fun lt!1645709 () ListMap!3017)

(assert (=> bs!790132 (= (= lt!1645709 lt!1645568) (= lambda!159658 lambda!159656))))

(assert (=> b!4454065 (= (= lt!1645709 lt!1645568) (= lambda!159658 lambda!159657))))

(assert (=> b!4454065 true))

(declare-fun bs!790133 () Bool)

(declare-fun d!1358595 () Bool)

(assert (= bs!790133 (and d!1358595 b!4454066)))

(declare-fun lambda!159659 () Int)

(declare-fun lt!1645717 () ListMap!3017)

(assert (=> bs!790133 (= (= lt!1645717 lt!1645568) (= lambda!159659 lambda!159656))))

(declare-fun bs!790134 () Bool)

(assert (= bs!790134 (and d!1358595 b!4454065)))

(assert (=> bs!790134 (= (= lt!1645717 lt!1645568) (= lambda!159659 lambda!159657))))

(assert (=> bs!790134 (= (= lt!1645717 lt!1645709) (= lambda!159659 lambda!159658))))

(assert (=> d!1358595 true))

(declare-fun call!309949 () Bool)

(declare-fun bm!309944 () Bool)

(declare-fun c!758260 () Bool)

(declare-fun forall!9795 (List!50062 Int) Bool)

(assert (=> bm!309944 (= call!309949 (forall!9795 (ite c!758260 (toList!3778 lt!1645568) (_2!28278 (h!55684 (toList!3777 lm!1837)))) (ite c!758260 lambda!159656 lambda!159658)))))

(declare-fun b!4454063 () Bool)

(declare-fun res!1846070 () Bool)

(declare-fun e!2773553 () Bool)

(assert (=> b!4454063 (=> (not res!1846070) (not e!2773553))))

(assert (=> b!4454063 (= res!1846070 (forall!9795 (toList!3778 lt!1645568) lambda!159659))))

(declare-fun bm!309945 () Bool)

(declare-datatypes ((Unit!85733 0))(
  ( (Unit!85734) )
))
(declare-fun call!309950 () Unit!85733)

(declare-fun lemmaContainsAllItsOwnKeys!220 (ListMap!3017) Unit!85733)

(assert (=> bm!309945 (= call!309950 (lemmaContainsAllItsOwnKeys!220 lt!1645568))))

(declare-fun b!4454064 () Bool)

(assert (=> b!4454064 (= e!2773553 (invariantList!867 (toList!3778 lt!1645717)))))

(declare-fun call!309951 () Bool)

(declare-fun bm!309946 () Bool)

(assert (=> bm!309946 (= call!309951 (forall!9795 (toList!3778 lt!1645568) (ite c!758260 lambda!159656 lambda!159658)))))

(declare-fun e!2773552 () ListMap!3017)

(assert (=> b!4454065 (= e!2773552 lt!1645709)))

(declare-fun lt!1645718 () ListMap!3017)

(declare-fun +!1277 (ListMap!3017 tuple2!49966) ListMap!3017)

(assert (=> b!4454065 (= lt!1645718 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454065 (= lt!1645709 (addToMapMapFromBucket!485 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645721 () Unit!85733)

(assert (=> b!4454065 (= lt!1645721 call!309950)))

(assert (=> b!4454065 (forall!9795 (toList!3778 lt!1645568) lambda!159657)))

(declare-fun lt!1645708 () Unit!85733)

(assert (=> b!4454065 (= lt!1645708 lt!1645721)))

(assert (=> b!4454065 (forall!9795 (toList!3778 lt!1645718) lambda!159658)))

(declare-fun lt!1645712 () Unit!85733)

(declare-fun Unit!85735 () Unit!85733)

(assert (=> b!4454065 (= lt!1645712 Unit!85735)))

(assert (=> b!4454065 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159658)))

(declare-fun lt!1645716 () Unit!85733)

(declare-fun Unit!85736 () Unit!85733)

(assert (=> b!4454065 (= lt!1645716 Unit!85736)))

(declare-fun lt!1645705 () Unit!85733)

(declare-fun Unit!85737 () Unit!85733)

(assert (=> b!4454065 (= lt!1645705 Unit!85737)))

(declare-fun lt!1645723 () Unit!85733)

(declare-fun forallContained!2166 (List!50062 Int tuple2!49966) Unit!85733)

(assert (=> b!4454065 (= lt!1645723 (forallContained!2166 (toList!3778 lt!1645718) lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454065 (contains!12505 lt!1645718 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun lt!1645711 () Unit!85733)

(declare-fun Unit!85738 () Unit!85733)

(assert (=> b!4454065 (= lt!1645711 Unit!85738)))

(assert (=> b!4454065 (contains!12505 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun lt!1645713 () Unit!85733)

(declare-fun Unit!85739 () Unit!85733)

(assert (=> b!4454065 (= lt!1645713 Unit!85739)))

(assert (=> b!4454065 call!309949))

(declare-fun lt!1645706 () Unit!85733)

(declare-fun Unit!85740 () Unit!85733)

(assert (=> b!4454065 (= lt!1645706 Unit!85740)))

(assert (=> b!4454065 (forall!9795 (toList!3778 lt!1645718) lambda!159658)))

(declare-fun lt!1645724 () Unit!85733)

(declare-fun Unit!85741 () Unit!85733)

(assert (=> b!4454065 (= lt!1645724 Unit!85741)))

(declare-fun lt!1645707 () Unit!85733)

(declare-fun Unit!85742 () Unit!85733)

(assert (=> b!4454065 (= lt!1645707 Unit!85742)))

(declare-fun lt!1645714 () Unit!85733)

(declare-fun addForallContainsKeyThenBeforeAdding!220 (ListMap!3017 ListMap!3017 K!11315 V!11561) Unit!85733)

(assert (=> b!4454065 (= lt!1645714 (addForallContainsKeyThenBeforeAdding!220 lt!1645568 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454065 (forall!9795 (toList!3778 lt!1645568) lambda!159658)))

(declare-fun lt!1645720 () Unit!85733)

(assert (=> b!4454065 (= lt!1645720 lt!1645714)))

(assert (=> b!4454065 (forall!9795 (toList!3778 lt!1645568) lambda!159658)))

(declare-fun lt!1645722 () Unit!85733)

(declare-fun Unit!85743 () Unit!85733)

(assert (=> b!4454065 (= lt!1645722 Unit!85743)))

(declare-fun res!1846068 () Bool)

(assert (=> b!4454065 (= res!1846068 (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159658))))

(declare-fun e!2773551 () Bool)

(assert (=> b!4454065 (=> (not res!1846068) (not e!2773551))))

(assert (=> b!4454065 e!2773551))

(declare-fun lt!1645715 () Unit!85733)

(declare-fun Unit!85744 () Unit!85733)

(assert (=> b!4454065 (= lt!1645715 Unit!85744)))

(assert (=> b!4454066 (= e!2773552 lt!1645568)))

(declare-fun lt!1645725 () Unit!85733)

(assert (=> b!4454066 (= lt!1645725 call!309950)))

(assert (=> b!4454066 call!309951))

(declare-fun lt!1645710 () Unit!85733)

(assert (=> b!4454066 (= lt!1645710 lt!1645725)))

(assert (=> b!4454066 call!309949))

(declare-fun lt!1645719 () Unit!85733)

(declare-fun Unit!85745 () Unit!85733)

(assert (=> b!4454066 (= lt!1645719 Unit!85745)))

(declare-fun b!4454067 () Bool)

(assert (=> b!4454067 (= e!2773551 call!309951)))

(assert (=> d!1358595 e!2773553))

(declare-fun res!1846069 () Bool)

(assert (=> d!1358595 (=> (not res!1846069) (not e!2773553))))

(assert (=> d!1358595 (= res!1846069 (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159659))))

(assert (=> d!1358595 (= lt!1645717 e!2773552)))

(assert (=> d!1358595 (= c!758260 ((_ is Nil!49938) (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(declare-fun noDuplicateKeys!886 (List!50062) Bool)

(assert (=> d!1358595 (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 lm!1837))))))

(assert (=> d!1358595 (= (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 lm!1837))) lt!1645568) lt!1645717)))

(assert (= (and d!1358595 c!758260) b!4454066))

(assert (= (and d!1358595 (not c!758260)) b!4454065))

(assert (= (and b!4454065 res!1846068) b!4454067))

(assert (= (or b!4454066 b!4454067) bm!309946))

(assert (= (or b!4454066 b!4454065) bm!309944))

(assert (= (or b!4454066 b!4454065) bm!309945))

(assert (= (and d!1358595 res!1846069) b!4454063))

(assert (= (and b!4454063 res!1846070) b!4454064))

(declare-fun m!5154811 () Bool)

(assert (=> bm!309944 m!5154811))

(declare-fun m!5154813 () Bool)

(assert (=> b!4454065 m!5154813))

(declare-fun m!5154815 () Bool)

(assert (=> b!4454065 m!5154815))

(declare-fun m!5154817 () Bool)

(assert (=> b!4454065 m!5154817))

(declare-fun m!5154819 () Bool)

(assert (=> b!4454065 m!5154819))

(declare-fun m!5154821 () Bool)

(assert (=> b!4454065 m!5154821))

(declare-fun m!5154823 () Bool)

(assert (=> b!4454065 m!5154823))

(declare-fun m!5154825 () Bool)

(assert (=> b!4454065 m!5154825))

(declare-fun m!5154827 () Bool)

(assert (=> b!4454065 m!5154827))

(declare-fun m!5154829 () Bool)

(assert (=> b!4454065 m!5154829))

(declare-fun m!5154831 () Bool)

(assert (=> b!4454065 m!5154831))

(declare-fun m!5154833 () Bool)

(assert (=> b!4454065 m!5154833))

(assert (=> b!4454065 m!5154817))

(assert (=> b!4454065 m!5154815))

(assert (=> b!4454065 m!5154827))

(declare-fun m!5154835 () Bool)

(assert (=> b!4454063 m!5154835))

(declare-fun m!5154837 () Bool)

(assert (=> bm!309945 m!5154837))

(declare-fun m!5154839 () Bool)

(assert (=> b!4454064 m!5154839))

(declare-fun m!5154841 () Bool)

(assert (=> d!1358595 m!5154841))

(declare-fun m!5154843 () Bool)

(assert (=> d!1358595 m!5154843))

(declare-fun m!5154845 () Bool)

(assert (=> bm!309946 m!5154845))

(assert (=> b!4453978 d!1358595))

(declare-fun d!1358607 () Bool)

(assert (=> d!1358607 (= (isEmpty!28441 (toList!3777 lm!1837)) ((_ is Nil!49939) (toList!3777 lm!1837)))))

(assert (=> b!4453977 d!1358607))

(declare-fun b!4454088 () Bool)

(declare-datatypes ((List!50065 0))(
  ( (Nil!49941) (Cons!49941 (h!55686 K!11315) (t!357015 List!50065)) )
))
(declare-fun e!2773571 () List!50065)

(declare-fun getKeysList!313 (List!50062) List!50065)

(assert (=> b!4454088 (= e!2773571 (getKeysList!313 (toList!3778 lt!1645568)))))

(declare-fun b!4454089 () Bool)

(declare-fun e!2773566 () Bool)

(declare-fun contains!12507 (List!50065 K!11315) Bool)

(declare-fun keys!17145 (ListMap!3017) List!50065)

(assert (=> b!4454089 (= e!2773566 (contains!12507 (keys!17145 lt!1645568) key!4369))))

(declare-fun bm!309949 () Bool)

(declare-fun call!309954 () Bool)

(assert (=> bm!309949 (= call!309954 (contains!12507 e!2773571 key!4369))))

(declare-fun c!758268 () Bool)

(declare-fun c!758267 () Bool)

(assert (=> bm!309949 (= c!758268 c!758267)))

(declare-fun b!4454090 () Bool)

(declare-fun e!2773567 () Unit!85733)

(declare-fun e!2773568 () Unit!85733)

(assert (=> b!4454090 (= e!2773567 e!2773568)))

(declare-fun c!758269 () Bool)

(assert (=> b!4454090 (= c!758269 call!309954)))

(declare-fun d!1358609 () Bool)

(declare-fun e!2773569 () Bool)

(assert (=> d!1358609 e!2773569))

(declare-fun res!1846079 () Bool)

(assert (=> d!1358609 (=> res!1846079 e!2773569)))

(declare-fun e!2773570 () Bool)

(assert (=> d!1358609 (= res!1846079 e!2773570)))

(declare-fun res!1846078 () Bool)

(assert (=> d!1358609 (=> (not res!1846078) (not e!2773570))))

(declare-fun lt!1645743 () Bool)

(assert (=> d!1358609 (= res!1846078 (not lt!1645743))))

(declare-fun lt!1645749 () Bool)

(assert (=> d!1358609 (= lt!1645743 lt!1645749)))

(declare-fun lt!1645748 () Unit!85733)

(assert (=> d!1358609 (= lt!1645748 e!2773567)))

(assert (=> d!1358609 (= c!758267 lt!1645749)))

(declare-fun containsKey!1305 (List!50062 K!11315) Bool)

(assert (=> d!1358609 (= lt!1645749 (containsKey!1305 (toList!3778 lt!1645568) key!4369))))

(assert (=> d!1358609 (= (contains!12505 lt!1645568 key!4369) lt!1645743)))

(declare-fun b!4454091 () Bool)

(assert (=> b!4454091 (= e!2773571 (keys!17145 lt!1645568))))

(declare-fun b!4454092 () Bool)

(assert (=> b!4454092 (= e!2773570 (not (contains!12507 (keys!17145 lt!1645568) key!4369)))))

(declare-fun b!4454093 () Bool)

(declare-fun Unit!85746 () Unit!85733)

(assert (=> b!4454093 (= e!2773568 Unit!85746)))

(declare-fun b!4454094 () Bool)

(assert (=> b!4454094 false))

(declare-fun lt!1645745 () Unit!85733)

(declare-fun lt!1645746 () Unit!85733)

(assert (=> b!4454094 (= lt!1645745 lt!1645746)))

(assert (=> b!4454094 (containsKey!1305 (toList!3778 lt!1645568) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!311 (List!50062 K!11315) Unit!85733)

(assert (=> b!4454094 (= lt!1645746 (lemmaInGetKeysListThenContainsKey!311 (toList!3778 lt!1645568) key!4369))))

(declare-fun Unit!85747 () Unit!85733)

(assert (=> b!4454094 (= e!2773568 Unit!85747)))

(declare-fun b!4454095 () Bool)

(declare-fun lt!1645742 () Unit!85733)

(assert (=> b!4454095 (= e!2773567 lt!1645742)))

(declare-fun lt!1645744 () Unit!85733)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!736 (List!50062 K!11315) Unit!85733)

(assert (=> b!4454095 (= lt!1645744 (lemmaContainsKeyImpliesGetValueByKeyDefined!736 (toList!3778 lt!1645568) key!4369))))

(declare-datatypes ((Option!10845 0))(
  ( (None!10844) (Some!10844 (v!44098 V!11561)) )
))
(declare-fun isDefined!8133 (Option!10845) Bool)

(declare-fun getValueByKey!831 (List!50062 K!11315) Option!10845)

(assert (=> b!4454095 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645568) key!4369))))

(declare-fun lt!1645747 () Unit!85733)

(assert (=> b!4454095 (= lt!1645747 lt!1645744)))

(declare-fun lemmaInListThenGetKeysListContains!310 (List!50062 K!11315) Unit!85733)

(assert (=> b!4454095 (= lt!1645742 (lemmaInListThenGetKeysListContains!310 (toList!3778 lt!1645568) key!4369))))

(assert (=> b!4454095 call!309954))

(declare-fun b!4454096 () Bool)

(assert (=> b!4454096 (= e!2773569 e!2773566)))

(declare-fun res!1846077 () Bool)

(assert (=> b!4454096 (=> (not res!1846077) (not e!2773566))))

(assert (=> b!4454096 (= res!1846077 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645568) key!4369)))))

(assert (= (and d!1358609 c!758267) b!4454095))

(assert (= (and d!1358609 (not c!758267)) b!4454090))

(assert (= (and b!4454090 c!758269) b!4454094))

(assert (= (and b!4454090 (not c!758269)) b!4454093))

(assert (= (or b!4454095 b!4454090) bm!309949))

(assert (= (and bm!309949 c!758268) b!4454088))

(assert (= (and bm!309949 (not c!758268)) b!4454091))

(assert (= (and d!1358609 res!1846078) b!4454092))

(assert (= (and d!1358609 (not res!1846079)) b!4454096))

(assert (= (and b!4454096 res!1846077) b!4454089))

(declare-fun m!5154847 () Bool)

(assert (=> bm!309949 m!5154847))

(declare-fun m!5154849 () Bool)

(assert (=> b!4454094 m!5154849))

(declare-fun m!5154851 () Bool)

(assert (=> b!4454094 m!5154851))

(declare-fun m!5154853 () Bool)

(assert (=> b!4454091 m!5154853))

(declare-fun m!5154855 () Bool)

(assert (=> b!4454095 m!5154855))

(declare-fun m!5154857 () Bool)

(assert (=> b!4454095 m!5154857))

(assert (=> b!4454095 m!5154857))

(declare-fun m!5154859 () Bool)

(assert (=> b!4454095 m!5154859))

(declare-fun m!5154861 () Bool)

(assert (=> b!4454095 m!5154861))

(assert (=> d!1358609 m!5154849))

(assert (=> b!4454096 m!5154857))

(assert (=> b!4454096 m!5154857))

(assert (=> b!4454096 m!5154859))

(assert (=> b!4454089 m!5154853))

(assert (=> b!4454089 m!5154853))

(declare-fun m!5154863 () Bool)

(assert (=> b!4454089 m!5154863))

(assert (=> b!4454092 m!5154853))

(assert (=> b!4454092 m!5154853))

(assert (=> b!4454092 m!5154863))

(declare-fun m!5154865 () Bool)

(assert (=> b!4454088 m!5154865))

(assert (=> b!4453979 d!1358609))

(declare-fun bs!790135 () Bool)

(declare-fun d!1358611 () Bool)

(assert (= bs!790135 (and d!1358611 start!436288)))

(declare-fun lambda!159660 () Int)

(assert (=> bs!790135 (= lambda!159660 lambda!159585)))

(declare-fun bs!790136 () Bool)

(assert (= bs!790136 (and d!1358611 d!1358591)))

(assert (=> bs!790136 (= lambda!159660 lambda!159594)))

(declare-fun lt!1645750 () ListMap!3017)

(assert (=> d!1358611 (invariantList!867 (toList!3778 lt!1645750))))

(declare-fun e!2773572 () ListMap!3017)

(assert (=> d!1358611 (= lt!1645750 e!2773572)))

(declare-fun c!758270 () Bool)

(assert (=> d!1358611 (= c!758270 ((_ is Cons!49939) (toList!3777 (tail!7460 lm!1837))))))

(assert (=> d!1358611 (forall!9793 (toList!3777 (tail!7460 lm!1837)) lambda!159660)))

(assert (=> d!1358611 (= (extractMap!954 (toList!3777 (tail!7460 lm!1837))) lt!1645750)))

(declare-fun b!4454097 () Bool)

(assert (=> b!4454097 (= e!2773572 (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))))))

(declare-fun b!4454098 () Bool)

(assert (=> b!4454098 (= e!2773572 (ListMap!3018 Nil!49938))))

(assert (= (and d!1358611 c!758270) b!4454097))

(assert (= (and d!1358611 (not c!758270)) b!4454098))

(declare-fun m!5154867 () Bool)

(assert (=> d!1358611 m!5154867))

(declare-fun m!5154869 () Bool)

(assert (=> d!1358611 m!5154869))

(declare-fun m!5154871 () Bool)

(assert (=> b!4454097 m!5154871))

(assert (=> b!4454097 m!5154871))

(declare-fun m!5154873 () Bool)

(assert (=> b!4454097 m!5154873))

(assert (=> b!4453979 d!1358611))

(declare-fun d!1358613 () Bool)

(declare-fun tail!7462 (List!50063) List!50063)

(assert (=> d!1358613 (= (tail!7460 lm!1837) (ListLongMap!2432 (tail!7462 (toList!3777 lm!1837))))))

(declare-fun bs!790137 () Bool)

(assert (= bs!790137 d!1358613))

(declare-fun m!5154875 () Bool)

(assert (=> bs!790137 m!5154875))

(assert (=> b!4453979 d!1358613))

(declare-fun d!1358615 () Bool)

(declare-fun res!1846084 () Bool)

(declare-fun e!2773577 () Bool)

(assert (=> d!1358615 (=> res!1846084 e!2773577)))

(assert (=> d!1358615 (= res!1846084 ((_ is Nil!49939) (toList!3777 lm!1837)))))

(assert (=> d!1358615 (= (forall!9793 (toList!3777 lm!1837) lambda!159585) e!2773577)))

(declare-fun b!4454103 () Bool)

(declare-fun e!2773578 () Bool)

(assert (=> b!4454103 (= e!2773577 e!2773578)))

(declare-fun res!1846085 () Bool)

(assert (=> b!4454103 (=> (not res!1846085) (not e!2773578))))

(declare-fun dynLambda!20954 (Int tuple2!49968) Bool)

(assert (=> b!4454103 (= res!1846085 (dynLambda!20954 lambda!159585 (h!55684 (toList!3777 lm!1837))))))

(declare-fun b!4454104 () Bool)

(assert (=> b!4454104 (= e!2773578 (forall!9793 (t!357013 (toList!3777 lm!1837)) lambda!159585))))

(assert (= (and d!1358615 (not res!1846084)) b!4454103))

(assert (= (and b!4454103 res!1846085) b!4454104))

(declare-fun b_lambda!147381 () Bool)

(assert (=> (not b_lambda!147381) (not b!4454103)))

(declare-fun m!5154877 () Bool)

(assert (=> b!4454103 m!5154877))

(declare-fun m!5154879 () Bool)

(assert (=> b!4454104 m!5154879))

(assert (=> start!436288 d!1358615))

(declare-fun d!1358617 () Bool)

(declare-fun isStrictlySorted!295 (List!50063) Bool)

(assert (=> d!1358617 (= (inv!65501 lm!1837) (isStrictlySorted!295 (toList!3777 lm!1837)))))

(declare-fun bs!790138 () Bool)

(assert (= bs!790138 d!1358617))

(declare-fun m!5154881 () Bool)

(assert (=> bs!790138 m!5154881))

(assert (=> start!436288 d!1358617))

(declare-fun bs!790139 () Bool)

(declare-fun d!1358619 () Bool)

(assert (= bs!790139 (and d!1358619 start!436288)))

(declare-fun lambda!159663 () Int)

(assert (=> bs!790139 (not (= lambda!159663 lambda!159585))))

(declare-fun bs!790140 () Bool)

(assert (= bs!790140 (and d!1358619 d!1358591)))

(assert (=> bs!790140 (not (= lambda!159663 lambda!159594))))

(declare-fun bs!790141 () Bool)

(assert (= bs!790141 (and d!1358619 d!1358611)))

(assert (=> bs!790141 (not (= lambda!159663 lambda!159660))))

(assert (=> d!1358619 true))

(assert (=> d!1358619 (= (allKeysSameHashInMap!1003 lm!1837 hashF!1304) (forall!9793 (toList!3777 lm!1837) lambda!159663))))

(declare-fun bs!790142 () Bool)

(assert (= bs!790142 d!1358619))

(declare-fun m!5154883 () Bool)

(assert (=> bs!790142 m!5154883))

(assert (=> b!4453976 d!1358619))

(declare-fun b!4454111 () Bool)

(declare-fun e!2773581 () Bool)

(declare-fun tp!1334782 () Bool)

(declare-fun tp!1334783 () Bool)

(assert (=> b!4454111 (= e!2773581 (and tp!1334782 tp!1334783))))

(assert (=> b!4453981 (= tp!1334771 e!2773581)))

(assert (= (and b!4453981 ((_ is Cons!49939) (toList!3777 lm!1837))) b!4454111))

(declare-fun b_lambda!147383 () Bool)

(assert (= b_lambda!147381 (or start!436288 b_lambda!147383)))

(declare-fun bs!790143 () Bool)

(declare-fun d!1358621 () Bool)

(assert (= bs!790143 (and d!1358621 start!436288)))

(assert (=> bs!790143 (= (dynLambda!20954 lambda!159585 (h!55684 (toList!3777 lm!1837))) (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> bs!790143 m!5154843))

(assert (=> b!4454103 d!1358621))

(check-sat (not bm!309945) (not d!1358611) (not b!4454097) (not b!4454063) (not bs!790143) (not b!4454089) (not b!4454091) (not b!4454000) (not b!4454096) (not d!1358617) (not b!4454095) (not d!1358595) (not d!1358609) (not b!4454104) (not bm!309946) (not b!4454088) (not d!1358619) (not d!1358591) tp_is_empty!26775 (not b!4454111) (not bm!309949) (not bm!309944) (not b!4454094) (not b!4454065) (not b_lambda!147383) (not d!1358613) (not b!4454092) (not b!4454064))
(check-sat)
(get-model)

(declare-fun bs!790196 () Bool)

(declare-fun b!4454216 () Bool)

(assert (= bs!790196 (and b!4454216 b!4454066)))

(declare-fun lambda!159692 () Int)

(assert (=> bs!790196 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645568) (= lambda!159692 lambda!159656))))

(declare-fun bs!790197 () Bool)

(assert (= bs!790197 (and b!4454216 b!4454065)))

(assert (=> bs!790197 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645568) (= lambda!159692 lambda!159657))))

(assert (=> bs!790197 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645709) (= lambda!159692 lambda!159658))))

(declare-fun bs!790198 () Bool)

(assert (= bs!790198 (and b!4454216 d!1358595)))

(assert (=> bs!790198 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645717) (= lambda!159692 lambda!159659))))

(assert (=> b!4454216 true))

(declare-fun bs!790199 () Bool)

(declare-fun b!4454215 () Bool)

(assert (= bs!790199 (and b!4454215 d!1358595)))

(declare-fun lambda!159693 () Int)

(assert (=> bs!790199 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645717) (= lambda!159693 lambda!159659))))

(declare-fun bs!790200 () Bool)

(assert (= bs!790200 (and b!4454215 b!4454066)))

(assert (=> bs!790200 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645568) (= lambda!159693 lambda!159656))))

(declare-fun bs!790201 () Bool)

(assert (= bs!790201 (and b!4454215 b!4454065)))

(assert (=> bs!790201 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645709) (= lambda!159693 lambda!159658))))

(assert (=> bs!790201 (= (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645568) (= lambda!159693 lambda!159657))))

(declare-fun bs!790202 () Bool)

(assert (= bs!790202 (and b!4454215 b!4454216)))

(assert (=> bs!790202 (= lambda!159693 lambda!159692)))

(assert (=> b!4454215 true))

(declare-fun lambda!159694 () Int)

(declare-fun lt!1645841 () ListMap!3017)

(assert (=> bs!790199 (= (= lt!1645841 lt!1645717) (= lambda!159694 lambda!159659))))

(assert (=> bs!790200 (= (= lt!1645841 lt!1645568) (= lambda!159694 lambda!159656))))

(assert (=> b!4454215 (= (= lt!1645841 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159694 lambda!159693))))

(assert (=> bs!790201 (= (= lt!1645841 lt!1645709) (= lambda!159694 lambda!159658))))

(assert (=> bs!790201 (= (= lt!1645841 lt!1645568) (= lambda!159694 lambda!159657))))

(assert (=> bs!790202 (= (= lt!1645841 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159694 lambda!159692))))

(assert (=> b!4454215 true))

(declare-fun bs!790203 () Bool)

(declare-fun d!1358669 () Bool)

(assert (= bs!790203 (and d!1358669 d!1358595)))

(declare-fun lambda!159695 () Int)

(declare-fun lt!1645849 () ListMap!3017)

(assert (=> bs!790203 (= (= lt!1645849 lt!1645717) (= lambda!159695 lambda!159659))))

(declare-fun bs!790204 () Bool)

(assert (= bs!790204 (and d!1358669 b!4454066)))

(assert (=> bs!790204 (= (= lt!1645849 lt!1645568) (= lambda!159695 lambda!159656))))

(declare-fun bs!790205 () Bool)

(assert (= bs!790205 (and d!1358669 b!4454215)))

(assert (=> bs!790205 (= (= lt!1645849 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159695 lambda!159693))))

(declare-fun bs!790206 () Bool)

(assert (= bs!790206 (and d!1358669 b!4454065)))

(assert (=> bs!790206 (= (= lt!1645849 lt!1645709) (= lambda!159695 lambda!159658))))

(assert (=> bs!790206 (= (= lt!1645849 lt!1645568) (= lambda!159695 lambda!159657))))

(declare-fun bs!790207 () Bool)

(assert (= bs!790207 (and d!1358669 b!4454216)))

(assert (=> bs!790207 (= (= lt!1645849 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159695 lambda!159692))))

(assert (=> bs!790205 (= (= lt!1645849 lt!1645841) (= lambda!159695 lambda!159694))))

(assert (=> d!1358669 true))

(declare-fun bm!309956 () Bool)

(declare-fun call!309961 () Bool)

(declare-fun c!758284 () Bool)

(assert (=> bm!309956 (= call!309961 (forall!9795 (ite c!758284 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))) (ite c!758284 lambda!159692 lambda!159694)))))

(declare-fun b!4454213 () Bool)

(declare-fun res!1846159 () Bool)

(declare-fun e!2773652 () Bool)

(assert (=> b!4454213 (=> (not res!1846159) (not e!2773652))))

(assert (=> b!4454213 (= res!1846159 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) lambda!159695))))

(declare-fun bm!309957 () Bool)

(declare-fun call!309962 () Unit!85733)

(assert (=> bm!309957 (= call!309962 (lemmaContainsAllItsOwnKeys!220 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))))))

(declare-fun b!4454214 () Bool)

(assert (=> b!4454214 (= e!2773652 (invariantList!867 (toList!3778 lt!1645849)))))

(declare-fun call!309963 () Bool)

(declare-fun bm!309958 () Bool)

(assert (=> bm!309958 (= call!309963 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (ite c!758284 lambda!159692 lambda!159694)))))

(declare-fun e!2773651 () ListMap!3017)

(assert (=> b!4454215 (= e!2773651 lt!1645841)))

(declare-fun lt!1645850 () ListMap!3017)

(assert (=> b!4454215 (= lt!1645850 (+!1277 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))))

(assert (=> b!4454215 (= lt!1645841 (addToMapMapFromBucket!485 (t!357012 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))) (+!1277 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))))))))

(declare-fun lt!1645853 () Unit!85733)

(assert (=> b!4454215 (= lt!1645853 call!309962)))

(assert (=> b!4454215 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) lambda!159693)))

(declare-fun lt!1645840 () Unit!85733)

(assert (=> b!4454215 (= lt!1645840 lt!1645853)))

(assert (=> b!4454215 (forall!9795 (toList!3778 lt!1645850) lambda!159694)))

(declare-fun lt!1645844 () Unit!85733)

(declare-fun Unit!85759 () Unit!85733)

(assert (=> b!4454215 (= lt!1645844 Unit!85759)))

(assert (=> b!4454215 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))) lambda!159694)))

(declare-fun lt!1645848 () Unit!85733)

(declare-fun Unit!85760 () Unit!85733)

(assert (=> b!4454215 (= lt!1645848 Unit!85760)))

(declare-fun lt!1645837 () Unit!85733)

(declare-fun Unit!85761 () Unit!85733)

(assert (=> b!4454215 (= lt!1645837 Unit!85761)))

(declare-fun lt!1645855 () Unit!85733)

(assert (=> b!4454215 (= lt!1645855 (forallContained!2166 (toList!3778 lt!1645850) lambda!159694 (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))))

(assert (=> b!4454215 (contains!12505 lt!1645850 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))))

(declare-fun lt!1645843 () Unit!85733)

(declare-fun Unit!85762 () Unit!85733)

(assert (=> b!4454215 (= lt!1645843 Unit!85762)))

(assert (=> b!4454215 (contains!12505 lt!1645841 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))))

(declare-fun lt!1645845 () Unit!85733)

(declare-fun Unit!85763 () Unit!85733)

(assert (=> b!4454215 (= lt!1645845 Unit!85763)))

(assert (=> b!4454215 call!309961))

(declare-fun lt!1645838 () Unit!85733)

(declare-fun Unit!85764 () Unit!85733)

(assert (=> b!4454215 (= lt!1645838 Unit!85764)))

(assert (=> b!4454215 (forall!9795 (toList!3778 lt!1645850) lambda!159694)))

(declare-fun lt!1645856 () Unit!85733)

(declare-fun Unit!85765 () Unit!85733)

(assert (=> b!4454215 (= lt!1645856 Unit!85765)))

(declare-fun lt!1645839 () Unit!85733)

(declare-fun Unit!85766 () Unit!85733)

(assert (=> b!4454215 (= lt!1645839 Unit!85766)))

(declare-fun lt!1645846 () Unit!85733)

(assert (=> b!4454215 (= lt!1645846 (addForallContainsKeyThenBeforeAdding!220 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645841 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))))))))

(assert (=> b!4454215 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) lambda!159694)))

(declare-fun lt!1645852 () Unit!85733)

(assert (=> b!4454215 (= lt!1645852 lt!1645846)))

(assert (=> b!4454215 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) lambda!159694)))

(declare-fun lt!1645854 () Unit!85733)

(declare-fun Unit!85767 () Unit!85733)

(assert (=> b!4454215 (= lt!1645854 Unit!85767)))

(declare-fun res!1846157 () Bool)

(assert (=> b!4454215 (= res!1846157 (forall!9795 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))) lambda!159694))))

(declare-fun e!2773650 () Bool)

(assert (=> b!4454215 (=> (not res!1846157) (not e!2773650))))

(assert (=> b!4454215 e!2773650))

(declare-fun lt!1645847 () Unit!85733)

(declare-fun Unit!85768 () Unit!85733)

(assert (=> b!4454215 (= lt!1645847 Unit!85768)))

(assert (=> b!4454216 (= e!2773651 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))))))

(declare-fun lt!1645857 () Unit!85733)

(assert (=> b!4454216 (= lt!1645857 call!309962)))

(assert (=> b!4454216 call!309963))

(declare-fun lt!1645842 () Unit!85733)

(assert (=> b!4454216 (= lt!1645842 lt!1645857)))

(assert (=> b!4454216 call!309961))

(declare-fun lt!1645851 () Unit!85733)

(declare-fun Unit!85772 () Unit!85733)

(assert (=> b!4454216 (= lt!1645851 Unit!85772)))

(declare-fun b!4454217 () Bool)

(assert (=> b!4454217 (= e!2773650 call!309963)))

(assert (=> d!1358669 e!2773652))

(declare-fun res!1846158 () Bool)

(assert (=> d!1358669 (=> (not res!1846158) (not e!2773652))))

(assert (=> d!1358669 (= res!1846158 (forall!9795 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))) lambda!159695))))

(assert (=> d!1358669 (= lt!1645849 e!2773651)))

(assert (=> d!1358669 (= c!758284 ((_ is Nil!49938) (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))))))

(assert (=> d!1358669 (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))

(assert (=> d!1358669 (= (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837)))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) lt!1645849)))

(assert (= (and d!1358669 c!758284) b!4454216))

(assert (= (and d!1358669 (not c!758284)) b!4454215))

(assert (= (and b!4454215 res!1846157) b!4454217))

(assert (= (or b!4454216 b!4454217) bm!309958))

(assert (= (or b!4454216 b!4454215) bm!309956))

(assert (= (or b!4454216 b!4454215) bm!309957))

(assert (= (and d!1358669 res!1846158) b!4454213))

(assert (= (and b!4454213 res!1846159) b!4454214))

(declare-fun m!5155101 () Bool)

(assert (=> bm!309956 m!5155101))

(declare-fun m!5155103 () Bool)

(assert (=> b!4454215 m!5155103))

(declare-fun m!5155105 () Bool)

(assert (=> b!4454215 m!5155105))

(declare-fun m!5155107 () Bool)

(assert (=> b!4454215 m!5155107))

(declare-fun m!5155109 () Bool)

(assert (=> b!4454215 m!5155109))

(declare-fun m!5155111 () Bool)

(assert (=> b!4454215 m!5155111))

(assert (=> b!4454215 m!5154871))

(declare-fun m!5155113 () Bool)

(assert (=> b!4454215 m!5155113))

(declare-fun m!5155115 () Bool)

(assert (=> b!4454215 m!5155115))

(declare-fun m!5155117 () Bool)

(assert (=> b!4454215 m!5155117))

(declare-fun m!5155119 () Bool)

(assert (=> b!4454215 m!5155119))

(declare-fun m!5155121 () Bool)

(assert (=> b!4454215 m!5155121))

(declare-fun m!5155123 () Bool)

(assert (=> b!4454215 m!5155123))

(assert (=> b!4454215 m!5154871))

(assert (=> b!4454215 m!5155107))

(assert (=> b!4454215 m!5155105))

(assert (=> b!4454215 m!5155117))

(declare-fun m!5155125 () Bool)

(assert (=> b!4454213 m!5155125))

(assert (=> bm!309957 m!5154871))

(declare-fun m!5155127 () Bool)

(assert (=> bm!309957 m!5155127))

(declare-fun m!5155129 () Bool)

(assert (=> b!4454214 m!5155129))

(declare-fun m!5155131 () Bool)

(assert (=> d!1358669 m!5155131))

(declare-fun m!5155133 () Bool)

(assert (=> d!1358669 m!5155133))

(declare-fun m!5155135 () Bool)

(assert (=> bm!309958 m!5155135))

(assert (=> b!4454097 d!1358669))

(declare-fun bs!790208 () Bool)

(declare-fun d!1358675 () Bool)

(assert (= bs!790208 (and d!1358675 start!436288)))

(declare-fun lambda!159698 () Int)

(assert (=> bs!790208 (= lambda!159698 lambda!159585)))

(declare-fun bs!790209 () Bool)

(assert (= bs!790209 (and d!1358675 d!1358591)))

(assert (=> bs!790209 (= lambda!159698 lambda!159594)))

(declare-fun bs!790210 () Bool)

(assert (= bs!790210 (and d!1358675 d!1358611)))

(assert (=> bs!790210 (= lambda!159698 lambda!159660)))

(declare-fun bs!790211 () Bool)

(assert (= bs!790211 (and d!1358675 d!1358619)))

(assert (=> bs!790211 (not (= lambda!159698 lambda!159663))))

(declare-fun lt!1645872 () ListMap!3017)

(assert (=> d!1358675 (invariantList!867 (toList!3778 lt!1645872))))

(declare-fun e!2773660 () ListMap!3017)

(assert (=> d!1358675 (= lt!1645872 e!2773660)))

(declare-fun c!758288 () Bool)

(assert (=> d!1358675 (= c!758288 ((_ is Cons!49939) (t!357013 (toList!3777 (tail!7460 lm!1837)))))))

(assert (=> d!1358675 (forall!9793 (t!357013 (toList!3777 (tail!7460 lm!1837))) lambda!159698)))

(assert (=> d!1358675 (= (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837)))) lt!1645872)))

(declare-fun b!4454230 () Bool)

(assert (=> b!4454230 (= e!2773660 (addToMapMapFromBucket!485 (_2!28278 (h!55684 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (extractMap!954 (t!357013 (t!357013 (toList!3777 (tail!7460 lm!1837)))))))))

(declare-fun b!4454231 () Bool)

(assert (=> b!4454231 (= e!2773660 (ListMap!3018 Nil!49938))))

(assert (= (and d!1358675 c!758288) b!4454230))

(assert (= (and d!1358675 (not c!758288)) b!4454231))

(declare-fun m!5155137 () Bool)

(assert (=> d!1358675 m!5155137))

(declare-fun m!5155139 () Bool)

(assert (=> d!1358675 m!5155139))

(declare-fun m!5155141 () Bool)

(assert (=> b!4454230 m!5155141))

(assert (=> b!4454230 m!5155141))

(declare-fun m!5155143 () Bool)

(assert (=> b!4454230 m!5155143))

(assert (=> b!4454097 d!1358675))

(declare-fun d!1358677 () Bool)

(declare-fun res!1846165 () Bool)

(declare-fun e!2773661 () Bool)

(assert (=> d!1358677 (=> res!1846165 e!2773661)))

(assert (=> d!1358677 (= res!1846165 ((_ is Nil!49939) (t!357013 (toList!3777 lm!1837))))))

(assert (=> d!1358677 (= (forall!9793 (t!357013 (toList!3777 lm!1837)) lambda!159585) e!2773661)))

(declare-fun b!4454232 () Bool)

(declare-fun e!2773662 () Bool)

(assert (=> b!4454232 (= e!2773661 e!2773662)))

(declare-fun res!1846166 () Bool)

(assert (=> b!4454232 (=> (not res!1846166) (not e!2773662))))

(assert (=> b!4454232 (= res!1846166 (dynLambda!20954 lambda!159585 (h!55684 (t!357013 (toList!3777 lm!1837)))))))

(declare-fun b!4454233 () Bool)

(assert (=> b!4454233 (= e!2773662 (forall!9793 (t!357013 (t!357013 (toList!3777 lm!1837))) lambda!159585))))

(assert (= (and d!1358677 (not res!1846165)) b!4454232))

(assert (= (and b!4454232 res!1846166) b!4454233))

(declare-fun b_lambda!147403 () Bool)

(assert (=> (not b_lambda!147403) (not b!4454232)))

(declare-fun m!5155145 () Bool)

(assert (=> b!4454232 m!5155145))

(declare-fun m!5155147 () Bool)

(assert (=> b!4454233 m!5155147))

(assert (=> b!4454104 d!1358677))

(declare-fun d!1358679 () Bool)

(declare-fun res!1846173 () Bool)

(declare-fun e!2773669 () Bool)

(assert (=> d!1358679 (=> res!1846173 e!2773669)))

(assert (=> d!1358679 (= res!1846173 ((_ is Nil!49938) (ite c!758260 (toList!3778 lt!1645568) (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> d!1358679 (= (forall!9795 (ite c!758260 (toList!3778 lt!1645568) (_2!28278 (h!55684 (toList!3777 lm!1837)))) (ite c!758260 lambda!159656 lambda!159658)) e!2773669)))

(declare-fun b!4454240 () Bool)

(declare-fun e!2773670 () Bool)

(assert (=> b!4454240 (= e!2773669 e!2773670)))

(declare-fun res!1846174 () Bool)

(assert (=> b!4454240 (=> (not res!1846174) (not e!2773670))))

(declare-fun dynLambda!20956 (Int tuple2!49966) Bool)

(assert (=> b!4454240 (= res!1846174 (dynLambda!20956 (ite c!758260 lambda!159656 lambda!159658) (h!55683 (ite c!758260 (toList!3778 lt!1645568) (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun b!4454241 () Bool)

(assert (=> b!4454241 (= e!2773670 (forall!9795 (t!357012 (ite c!758260 (toList!3778 lt!1645568) (_2!28278 (h!55684 (toList!3777 lm!1837))))) (ite c!758260 lambda!159656 lambda!159658)))))

(assert (= (and d!1358679 (not res!1846173)) b!4454240))

(assert (= (and b!4454240 res!1846174) b!4454241))

(declare-fun b_lambda!147407 () Bool)

(assert (=> (not b_lambda!147407) (not b!4454240)))

(declare-fun m!5155157 () Bool)

(assert (=> b!4454240 m!5155157))

(declare-fun m!5155163 () Bool)

(assert (=> b!4454241 m!5155163))

(assert (=> bm!309944 d!1358679))

(declare-fun bs!790222 () Bool)

(declare-fun b!4454249 () Bool)

(assert (= bs!790222 (and b!4454249 d!1358595)))

(declare-fun lambda!159702 () Int)

(assert (=> bs!790222 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645717) (= lambda!159702 lambda!159659))))

(declare-fun bs!790223 () Bool)

(assert (= bs!790223 (and b!4454249 b!4454066)))

(assert (=> bs!790223 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645568) (= lambda!159702 lambda!159656))))

(declare-fun bs!790224 () Bool)

(assert (= bs!790224 (and b!4454249 b!4454215)))

(assert (=> bs!790224 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159702 lambda!159693))))

(declare-fun bs!790225 () Bool)

(assert (= bs!790225 (and b!4454249 b!4454065)))

(assert (=> bs!790225 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645709) (= lambda!159702 lambda!159658))))

(declare-fun bs!790226 () Bool)

(assert (= bs!790226 (and b!4454249 d!1358669)))

(assert (=> bs!790226 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645849) (= lambda!159702 lambda!159695))))

(assert (=> bs!790225 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645568) (= lambda!159702 lambda!159657))))

(declare-fun bs!790227 () Bool)

(assert (= bs!790227 (and b!4454249 b!4454216)))

(assert (=> bs!790227 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159702 lambda!159692))))

(assert (=> bs!790224 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645841) (= lambda!159702 lambda!159694))))

(assert (=> b!4454249 true))

(declare-fun bs!790228 () Bool)

(declare-fun b!4454248 () Bool)

(assert (= bs!790228 (and b!4454248 d!1358595)))

(declare-fun lambda!159703 () Int)

(assert (=> bs!790228 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645717) (= lambda!159703 lambda!159659))))

(declare-fun bs!790229 () Bool)

(assert (= bs!790229 (and b!4454248 b!4454066)))

(assert (=> bs!790229 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645568) (= lambda!159703 lambda!159656))))

(declare-fun bs!790230 () Bool)

(assert (= bs!790230 (and b!4454248 b!4454215)))

(assert (=> bs!790230 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159703 lambda!159693))))

(declare-fun bs!790231 () Bool)

(assert (= bs!790231 (and b!4454248 b!4454065)))

(assert (=> bs!790231 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645709) (= lambda!159703 lambda!159658))))

(declare-fun bs!790232 () Bool)

(assert (= bs!790232 (and b!4454248 d!1358669)))

(assert (=> bs!790232 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645849) (= lambda!159703 lambda!159695))))

(assert (=> bs!790231 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645568) (= lambda!159703 lambda!159657))))

(declare-fun bs!790233 () Bool)

(assert (= bs!790233 (and b!4454248 b!4454216)))

(assert (=> bs!790233 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159703 lambda!159692))))

(declare-fun bs!790234 () Bool)

(assert (= bs!790234 (and b!4454248 b!4454249)))

(assert (=> bs!790234 (= lambda!159703 lambda!159702)))

(assert (=> bs!790230 (= (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645841) (= lambda!159703 lambda!159694))))

(assert (=> b!4454248 true))

(declare-fun lt!1645878 () ListMap!3017)

(declare-fun lambda!159705 () Int)

(assert (=> bs!790228 (= (= lt!1645878 lt!1645717) (= lambda!159705 lambda!159659))))

(assert (=> bs!790229 (= (= lt!1645878 lt!1645568) (= lambda!159705 lambda!159656))))

(assert (=> bs!790230 (= (= lt!1645878 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159705 lambda!159693))))

(assert (=> bs!790231 (= (= lt!1645878 lt!1645709) (= lambda!159705 lambda!159658))))

(assert (=> bs!790232 (= (= lt!1645878 lt!1645849) (= lambda!159705 lambda!159695))))

(assert (=> bs!790231 (= (= lt!1645878 lt!1645568) (= lambda!159705 lambda!159657))))

(assert (=> b!4454248 (= (= lt!1645878 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159705 lambda!159703))))

(assert (=> bs!790233 (= (= lt!1645878 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159705 lambda!159692))))

(assert (=> bs!790234 (= (= lt!1645878 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159705 lambda!159702))))

(assert (=> bs!790230 (= (= lt!1645878 lt!1645841) (= lambda!159705 lambda!159694))))

(assert (=> b!4454248 true))

(declare-fun bs!790251 () Bool)

(declare-fun d!1358687 () Bool)

(assert (= bs!790251 (and d!1358687 d!1358595)))

(declare-fun lt!1645886 () ListMap!3017)

(declare-fun lambda!159707 () Int)

(assert (=> bs!790251 (= (= lt!1645886 lt!1645717) (= lambda!159707 lambda!159659))))

(declare-fun bs!790254 () Bool)

(assert (= bs!790254 (and d!1358687 b!4454066)))

(assert (=> bs!790254 (= (= lt!1645886 lt!1645568) (= lambda!159707 lambda!159656))))

(declare-fun bs!790255 () Bool)

(assert (= bs!790255 (and d!1358687 b!4454215)))

(assert (=> bs!790255 (= (= lt!1645886 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159707 lambda!159693))))

(declare-fun bs!790257 () Bool)

(assert (= bs!790257 (and d!1358687 b!4454065)))

(assert (=> bs!790257 (= (= lt!1645886 lt!1645709) (= lambda!159707 lambda!159658))))

(declare-fun bs!790259 () Bool)

(assert (= bs!790259 (and d!1358687 d!1358669)))

(assert (=> bs!790259 (= (= lt!1645886 lt!1645849) (= lambda!159707 lambda!159695))))

(assert (=> bs!790257 (= (= lt!1645886 lt!1645568) (= lambda!159707 lambda!159657))))

(declare-fun bs!790261 () Bool)

(assert (= bs!790261 (and d!1358687 b!4454248)))

(assert (=> bs!790261 (= (= lt!1645886 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159707 lambda!159703))))

(declare-fun bs!790262 () Bool)

(assert (= bs!790262 (and d!1358687 b!4454216)))

(assert (=> bs!790262 (= (= lt!1645886 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159707 lambda!159692))))

(assert (=> bs!790255 (= (= lt!1645886 lt!1645841) (= lambda!159707 lambda!159694))))

(declare-fun bs!790263 () Bool)

(assert (= bs!790263 (and d!1358687 b!4454249)))

(assert (=> bs!790263 (= (= lt!1645886 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159707 lambda!159702))))

(assert (=> bs!790261 (= (= lt!1645886 lt!1645878) (= lambda!159707 lambda!159705))))

(assert (=> d!1358687 true))

(declare-fun c!758289 () Bool)

(declare-fun call!309965 () Bool)

(declare-fun bm!309960 () Bool)

(assert (=> bm!309960 (= call!309965 (forall!9795 (ite c!758289 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (_2!28278 (h!55684 (toList!3777 lm!1837)))) (ite c!758289 lambda!159702 lambda!159705)))))

(declare-fun b!4454246 () Bool)

(declare-fun res!1846181 () Bool)

(declare-fun e!2773677 () Bool)

(assert (=> b!4454246 (=> (not res!1846181) (not e!2773677))))

(assert (=> b!4454246 (= res!1846181 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) lambda!159707))))

(declare-fun bm!309961 () Bool)

(declare-fun call!309966 () Unit!85733)

(assert (=> bm!309961 (= call!309966 (lemmaContainsAllItsOwnKeys!220 (extractMap!954 (t!357013 (toList!3777 lm!1837)))))))

(declare-fun b!4454247 () Bool)

(assert (=> b!4454247 (= e!2773677 (invariantList!867 (toList!3778 lt!1645886)))))

(declare-fun call!309967 () Bool)

(declare-fun bm!309962 () Bool)

(assert (=> bm!309962 (= call!309967 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (ite c!758289 lambda!159702 lambda!159705)))))

(declare-fun e!2773676 () ListMap!3017)

(assert (=> b!4454248 (= e!2773676 lt!1645878)))

(declare-fun lt!1645887 () ListMap!3017)

(assert (=> b!4454248 (= lt!1645887 (+!1277 (extractMap!954 (t!357013 (toList!3777 lm!1837))) (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454248 (= lt!1645878 (addToMapMapFromBucket!485 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) (+!1277 (extractMap!954 (t!357013 (toList!3777 lm!1837))) (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645890 () Unit!85733)

(assert (=> b!4454248 (= lt!1645890 call!309966)))

(assert (=> b!4454248 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) lambda!159703)))

(declare-fun lt!1645877 () Unit!85733)

(assert (=> b!4454248 (= lt!1645877 lt!1645890)))

(assert (=> b!4454248 (forall!9795 (toList!3778 lt!1645887) lambda!159705)))

(declare-fun lt!1645881 () Unit!85733)

(declare-fun Unit!85785 () Unit!85733)

(assert (=> b!4454248 (= lt!1645881 Unit!85785)))

(assert (=> b!4454248 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159705)))

(declare-fun lt!1645885 () Unit!85733)

(declare-fun Unit!85786 () Unit!85733)

(assert (=> b!4454248 (= lt!1645885 Unit!85786)))

(declare-fun lt!1645874 () Unit!85733)

(declare-fun Unit!85787 () Unit!85733)

(assert (=> b!4454248 (= lt!1645874 Unit!85787)))

(declare-fun lt!1645892 () Unit!85733)

(assert (=> b!4454248 (= lt!1645892 (forallContained!2166 (toList!3778 lt!1645887) lambda!159705 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454248 (contains!12505 lt!1645887 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun lt!1645880 () Unit!85733)

(declare-fun Unit!85788 () Unit!85733)

(assert (=> b!4454248 (= lt!1645880 Unit!85788)))

(assert (=> b!4454248 (contains!12505 lt!1645878 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun lt!1645882 () Unit!85733)

(declare-fun Unit!85789 () Unit!85733)

(assert (=> b!4454248 (= lt!1645882 Unit!85789)))

(assert (=> b!4454248 call!309965))

(declare-fun lt!1645875 () Unit!85733)

(declare-fun Unit!85790 () Unit!85733)

(assert (=> b!4454248 (= lt!1645875 Unit!85790)))

(assert (=> b!4454248 (forall!9795 (toList!3778 lt!1645887) lambda!159705)))

(declare-fun lt!1645893 () Unit!85733)

(declare-fun Unit!85791 () Unit!85733)

(assert (=> b!4454248 (= lt!1645893 Unit!85791)))

(declare-fun lt!1645876 () Unit!85733)

(declare-fun Unit!85792 () Unit!85733)

(assert (=> b!4454248 (= lt!1645876 Unit!85792)))

(declare-fun lt!1645883 () Unit!85733)

(assert (=> b!4454248 (= lt!1645883 (addForallContainsKeyThenBeforeAdding!220 (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645878 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454248 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) lambda!159705)))

(declare-fun lt!1645889 () Unit!85733)

(assert (=> b!4454248 (= lt!1645889 lt!1645883)))

(assert (=> b!4454248 (forall!9795 (toList!3778 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) lambda!159705)))

(declare-fun lt!1645891 () Unit!85733)

(declare-fun Unit!85793 () Unit!85733)

(assert (=> b!4454248 (= lt!1645891 Unit!85793)))

(declare-fun res!1846179 () Bool)

(assert (=> b!4454248 (= res!1846179 (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159705))))

(declare-fun e!2773675 () Bool)

(assert (=> b!4454248 (=> (not res!1846179) (not e!2773675))))

(assert (=> b!4454248 e!2773675))

(declare-fun lt!1645884 () Unit!85733)

(declare-fun Unit!85794 () Unit!85733)

(assert (=> b!4454248 (= lt!1645884 Unit!85794)))

(assert (=> b!4454249 (= e!2773676 (extractMap!954 (t!357013 (toList!3777 lm!1837))))))

(declare-fun lt!1645894 () Unit!85733)

(assert (=> b!4454249 (= lt!1645894 call!309966)))

(assert (=> b!4454249 call!309967))

(declare-fun lt!1645879 () Unit!85733)

(assert (=> b!4454249 (= lt!1645879 lt!1645894)))

(assert (=> b!4454249 call!309965))

(declare-fun lt!1645888 () Unit!85733)

(declare-fun Unit!85795 () Unit!85733)

(assert (=> b!4454249 (= lt!1645888 Unit!85795)))

(declare-fun b!4454250 () Bool)

(assert (=> b!4454250 (= e!2773675 call!309967)))

(assert (=> d!1358687 e!2773677))

(declare-fun res!1846180 () Bool)

(assert (=> d!1358687 (=> (not res!1846180) (not e!2773677))))

(assert (=> d!1358687 (= res!1846180 (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159707))))

(assert (=> d!1358687 (= lt!1645886 e!2773676)))

(assert (=> d!1358687 (= c!758289 ((_ is Nil!49938) (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> d!1358687 (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 lm!1837))))))

(assert (=> d!1358687 (= (addToMapMapFromBucket!485 (_2!28278 (h!55684 (toList!3777 lm!1837))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))) lt!1645886)))

(assert (= (and d!1358687 c!758289) b!4454249))

(assert (= (and d!1358687 (not c!758289)) b!4454248))

(assert (= (and b!4454248 res!1846179) b!4454250))

(assert (= (or b!4454249 b!4454250) bm!309962))

(assert (= (or b!4454249 b!4454248) bm!309960))

(assert (= (or b!4454249 b!4454248) bm!309961))

(assert (= (and d!1358687 res!1846180) b!4454246))

(assert (= (and b!4454246 res!1846181) b!4454247))

(declare-fun m!5155189 () Bool)

(assert (=> bm!309960 m!5155189))

(declare-fun m!5155191 () Bool)

(assert (=> b!4454248 m!5155191))

(declare-fun m!5155193 () Bool)

(assert (=> b!4454248 m!5155193))

(declare-fun m!5155195 () Bool)

(assert (=> b!4454248 m!5155195))

(declare-fun m!5155197 () Bool)

(assert (=> b!4454248 m!5155197))

(declare-fun m!5155199 () Bool)

(assert (=> b!4454248 m!5155199))

(assert (=> b!4454248 m!5154743))

(declare-fun m!5155201 () Bool)

(assert (=> b!4454248 m!5155201))

(declare-fun m!5155203 () Bool)

(assert (=> b!4454248 m!5155203))

(declare-fun m!5155205 () Bool)

(assert (=> b!4454248 m!5155205))

(declare-fun m!5155207 () Bool)

(assert (=> b!4454248 m!5155207))

(declare-fun m!5155209 () Bool)

(assert (=> b!4454248 m!5155209))

(declare-fun m!5155211 () Bool)

(assert (=> b!4454248 m!5155211))

(assert (=> b!4454248 m!5154743))

(assert (=> b!4454248 m!5155195))

(assert (=> b!4454248 m!5155193))

(assert (=> b!4454248 m!5155205))

(declare-fun m!5155213 () Bool)

(assert (=> b!4454246 m!5155213))

(assert (=> bm!309961 m!5154743))

(declare-fun m!5155215 () Bool)

(assert (=> bm!309961 m!5155215))

(declare-fun m!5155217 () Bool)

(assert (=> b!4454247 m!5155217))

(declare-fun m!5155219 () Bool)

(assert (=> d!1358687 m!5155219))

(assert (=> d!1358687 m!5154843))

(declare-fun m!5155221 () Bool)

(assert (=> bm!309962 m!5155221))

(assert (=> b!4454000 d!1358687))

(declare-fun bs!790267 () Bool)

(declare-fun d!1358693 () Bool)

(assert (= bs!790267 (and d!1358693 d!1358619)))

(declare-fun lambda!159710 () Int)

(assert (=> bs!790267 (not (= lambda!159710 lambda!159663))))

(declare-fun bs!790269 () Bool)

(assert (= bs!790269 (and d!1358693 d!1358591)))

(assert (=> bs!790269 (= lambda!159710 lambda!159594)))

(declare-fun bs!790271 () Bool)

(assert (= bs!790271 (and d!1358693 d!1358675)))

(assert (=> bs!790271 (= lambda!159710 lambda!159698)))

(declare-fun bs!790273 () Bool)

(assert (= bs!790273 (and d!1358693 start!436288)))

(assert (=> bs!790273 (= lambda!159710 lambda!159585)))

(declare-fun bs!790275 () Bool)

(assert (= bs!790275 (and d!1358693 d!1358611)))

(assert (=> bs!790275 (= lambda!159710 lambda!159660)))

(declare-fun lt!1645924 () ListMap!3017)

(assert (=> d!1358693 (invariantList!867 (toList!3778 lt!1645924))))

(declare-fun e!2773687 () ListMap!3017)

(assert (=> d!1358693 (= lt!1645924 e!2773687)))

(declare-fun c!758294 () Bool)

(assert (=> d!1358693 (= c!758294 ((_ is Cons!49939) (t!357013 (toList!3777 lm!1837))))))

(assert (=> d!1358693 (forall!9793 (t!357013 (toList!3777 lm!1837)) lambda!159710)))

(assert (=> d!1358693 (= (extractMap!954 (t!357013 (toList!3777 lm!1837))) lt!1645924)))

(declare-fun b!4454265 () Bool)

(assert (=> b!4454265 (= e!2773687 (addToMapMapFromBucket!485 (_2!28278 (h!55684 (t!357013 (toList!3777 lm!1837)))) (extractMap!954 (t!357013 (t!357013 (toList!3777 lm!1837))))))))

(declare-fun b!4454266 () Bool)

(assert (=> b!4454266 (= e!2773687 (ListMap!3018 Nil!49938))))

(assert (= (and d!1358693 c!758294) b!4454265))

(assert (= (and d!1358693 (not c!758294)) b!4454266))

(declare-fun m!5155223 () Bool)

(assert (=> d!1358693 m!5155223))

(declare-fun m!5155225 () Bool)

(assert (=> d!1358693 m!5155225))

(declare-fun m!5155227 () Bool)

(assert (=> b!4454265 m!5155227))

(assert (=> b!4454265 m!5155227))

(declare-fun m!5155229 () Bool)

(assert (=> b!4454265 m!5155229))

(assert (=> b!4454000 d!1358693))

(declare-fun d!1358695 () Bool)

(declare-fun res!1846188 () Bool)

(declare-fun e!2773688 () Bool)

(assert (=> d!1358695 (=> res!1846188 e!2773688)))

(assert (=> d!1358695 (= res!1846188 ((_ is Nil!49938) (toList!3778 lt!1645568)))))

(assert (=> d!1358695 (= (forall!9795 (toList!3778 lt!1645568) lambda!159659) e!2773688)))

(declare-fun b!4454267 () Bool)

(declare-fun e!2773689 () Bool)

(assert (=> b!4454267 (= e!2773688 e!2773689)))

(declare-fun res!1846189 () Bool)

(assert (=> b!4454267 (=> (not res!1846189) (not e!2773689))))

(assert (=> b!4454267 (= res!1846189 (dynLambda!20956 lambda!159659 (h!55683 (toList!3778 lt!1645568))))))

(declare-fun b!4454268 () Bool)

(assert (=> b!4454268 (= e!2773689 (forall!9795 (t!357012 (toList!3778 lt!1645568)) lambda!159659))))

(assert (= (and d!1358695 (not res!1846188)) b!4454267))

(assert (= (and b!4454267 res!1846189) b!4454268))

(declare-fun b_lambda!147413 () Bool)

(assert (=> (not b_lambda!147413) (not b!4454267)))

(declare-fun m!5155231 () Bool)

(assert (=> b!4454267 m!5155231))

(declare-fun m!5155233 () Bool)

(assert (=> b!4454268 m!5155233))

(assert (=> b!4454063 d!1358695))

(declare-fun bs!790283 () Bool)

(declare-fun d!1358697 () Bool)

(assert (= bs!790283 (and d!1358697 d!1358595)))

(declare-fun lambda!159713 () Int)

(assert (=> bs!790283 (= (= lt!1645568 lt!1645717) (= lambda!159713 lambda!159659))))

(declare-fun bs!790284 () Bool)

(assert (= bs!790284 (and d!1358697 b!4454066)))

(assert (=> bs!790284 (= lambda!159713 lambda!159656)))

(declare-fun bs!790285 () Bool)

(assert (= bs!790285 (and d!1358697 b!4454215)))

(assert (=> bs!790285 (= (= lt!1645568 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159713 lambda!159693))))

(declare-fun bs!790286 () Bool)

(assert (= bs!790286 (and d!1358697 b!4454065)))

(assert (=> bs!790286 (= (= lt!1645568 lt!1645709) (= lambda!159713 lambda!159658))))

(declare-fun bs!790287 () Bool)

(assert (= bs!790287 (and d!1358697 d!1358669)))

(assert (=> bs!790287 (= (= lt!1645568 lt!1645849) (= lambda!159713 lambda!159695))))

(declare-fun bs!790288 () Bool)

(assert (= bs!790288 (and d!1358697 d!1358687)))

(assert (=> bs!790288 (= (= lt!1645568 lt!1645886) (= lambda!159713 lambda!159707))))

(assert (=> bs!790286 (= lambda!159713 lambda!159657)))

(declare-fun bs!790289 () Bool)

(assert (= bs!790289 (and d!1358697 b!4454248)))

(assert (=> bs!790289 (= (= lt!1645568 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159713 lambda!159703))))

(declare-fun bs!790290 () Bool)

(assert (= bs!790290 (and d!1358697 b!4454216)))

(assert (=> bs!790290 (= (= lt!1645568 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159713 lambda!159692))))

(assert (=> bs!790285 (= (= lt!1645568 lt!1645841) (= lambda!159713 lambda!159694))))

(declare-fun bs!790291 () Bool)

(assert (= bs!790291 (and d!1358697 b!4454249)))

(assert (=> bs!790291 (= (= lt!1645568 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159713 lambda!159702))))

(assert (=> bs!790289 (= (= lt!1645568 lt!1645878) (= lambda!159713 lambda!159705))))

(assert (=> d!1358697 true))

(assert (=> d!1358697 (forall!9795 (toList!3778 lt!1645568) lambda!159713)))

(declare-fun lt!1645930 () Unit!85733)

(declare-fun choose!28352 (ListMap!3017) Unit!85733)

(assert (=> d!1358697 (= lt!1645930 (choose!28352 lt!1645568))))

(assert (=> d!1358697 (= (lemmaContainsAllItsOwnKeys!220 lt!1645568) lt!1645930)))

(declare-fun bs!790292 () Bool)

(assert (= bs!790292 d!1358697))

(declare-fun m!5155271 () Bool)

(assert (=> bs!790292 m!5155271))

(declare-fun m!5155273 () Bool)

(assert (=> bs!790292 m!5155273))

(assert (=> bm!309945 d!1358697))

(declare-fun d!1358705 () Bool)

(declare-fun noDuplicatedKeys!201 (List!50062) Bool)

(assert (=> d!1358705 (= (invariantList!867 (toList!3778 lt!1645717)) (noDuplicatedKeys!201 (toList!3778 lt!1645717)))))

(declare-fun bs!790293 () Bool)

(assert (= bs!790293 d!1358705))

(declare-fun m!5155275 () Bool)

(assert (=> bs!790293 m!5155275))

(assert (=> b!4454064 d!1358705))

(declare-fun d!1358707 () Bool)

(declare-fun res!1846194 () Bool)

(declare-fun e!2773700 () Bool)

(assert (=> d!1358707 (=> res!1846194 e!2773700)))

(assert (=> d!1358707 (= res!1846194 (and ((_ is Cons!49938) (toList!3778 lt!1645568)) (= (_1!28277 (h!55683 (toList!3778 lt!1645568))) key!4369)))))

(assert (=> d!1358707 (= (containsKey!1305 (toList!3778 lt!1645568) key!4369) e!2773700)))

(declare-fun b!4454285 () Bool)

(declare-fun e!2773701 () Bool)

(assert (=> b!4454285 (= e!2773700 e!2773701)))

(declare-fun res!1846195 () Bool)

(assert (=> b!4454285 (=> (not res!1846195) (not e!2773701))))

(assert (=> b!4454285 (= res!1846195 ((_ is Cons!49938) (toList!3778 lt!1645568)))))

(declare-fun b!4454286 () Bool)

(assert (=> b!4454286 (= e!2773701 (containsKey!1305 (t!357012 (toList!3778 lt!1645568)) key!4369))))

(assert (= (and d!1358707 (not res!1846194)) b!4454285))

(assert (= (and b!4454285 res!1846195) b!4454286))

(declare-fun m!5155279 () Bool)

(assert (=> b!4454286 m!5155279))

(assert (=> d!1358609 d!1358707))

(declare-fun d!1358711 () Bool)

(declare-fun res!1846196 () Bool)

(declare-fun e!2773702 () Bool)

(assert (=> d!1358711 (=> res!1846196 e!2773702)))

(assert (=> d!1358711 (= res!1846196 ((_ is Nil!49938) (toList!3778 lt!1645568)))))

(assert (=> d!1358711 (= (forall!9795 (toList!3778 lt!1645568) (ite c!758260 lambda!159656 lambda!159658)) e!2773702)))

(declare-fun b!4454287 () Bool)

(declare-fun e!2773703 () Bool)

(assert (=> b!4454287 (= e!2773702 e!2773703)))

(declare-fun res!1846197 () Bool)

(assert (=> b!4454287 (=> (not res!1846197) (not e!2773703))))

(assert (=> b!4454287 (= res!1846197 (dynLambda!20956 (ite c!758260 lambda!159656 lambda!159658) (h!55683 (toList!3778 lt!1645568))))))

(declare-fun b!4454288 () Bool)

(assert (=> b!4454288 (= e!2773703 (forall!9795 (t!357012 (toList!3778 lt!1645568)) (ite c!758260 lambda!159656 lambda!159658)))))

(assert (= (and d!1358711 (not res!1846196)) b!4454287))

(assert (= (and b!4454287 res!1846197) b!4454288))

(declare-fun b_lambda!147415 () Bool)

(assert (=> (not b_lambda!147415) (not b!4454287)))

(declare-fun m!5155281 () Bool)

(assert (=> b!4454287 m!5155281))

(declare-fun m!5155283 () Bool)

(assert (=> b!4454288 m!5155283))

(assert (=> bm!309946 d!1358711))

(declare-fun b!4454289 () Bool)

(declare-fun e!2773709 () List!50065)

(assert (=> b!4454289 (= e!2773709 (getKeysList!313 (toList!3778 lt!1645709)))))

(declare-fun b!4454290 () Bool)

(declare-fun e!2773704 () Bool)

(assert (=> b!4454290 (= e!2773704 (contains!12507 (keys!17145 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun bm!309967 () Bool)

(declare-fun call!309972 () Bool)

(assert (=> bm!309967 (= call!309972 (contains!12507 e!2773709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun c!758302 () Bool)

(declare-fun c!758301 () Bool)

(assert (=> bm!309967 (= c!758302 c!758301)))

(declare-fun b!4454291 () Bool)

(declare-fun e!2773705 () Unit!85733)

(declare-fun e!2773706 () Unit!85733)

(assert (=> b!4454291 (= e!2773705 e!2773706)))

(declare-fun c!758303 () Bool)

(assert (=> b!4454291 (= c!758303 call!309972)))

(declare-fun d!1358713 () Bool)

(declare-fun e!2773707 () Bool)

(assert (=> d!1358713 e!2773707))

(declare-fun res!1846200 () Bool)

(assert (=> d!1358713 (=> res!1846200 e!2773707)))

(declare-fun e!2773708 () Bool)

(assert (=> d!1358713 (= res!1846200 e!2773708)))

(declare-fun res!1846199 () Bool)

(assert (=> d!1358713 (=> (not res!1846199) (not e!2773708))))

(declare-fun lt!1645932 () Bool)

(assert (=> d!1358713 (= res!1846199 (not lt!1645932))))

(declare-fun lt!1645938 () Bool)

(assert (=> d!1358713 (= lt!1645932 lt!1645938)))

(declare-fun lt!1645937 () Unit!85733)

(assert (=> d!1358713 (= lt!1645937 e!2773705)))

(assert (=> d!1358713 (= c!758301 lt!1645938)))

(assert (=> d!1358713 (= lt!1645938 (containsKey!1305 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> d!1358713 (= (contains!12505 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lt!1645932)))

(declare-fun b!4454292 () Bool)

(assert (=> b!4454292 (= e!2773709 (keys!17145 lt!1645709))))

(declare-fun b!4454293 () Bool)

(assert (=> b!4454293 (= e!2773708 (not (contains!12507 (keys!17145 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun b!4454294 () Bool)

(declare-fun Unit!85798 () Unit!85733)

(assert (=> b!4454294 (= e!2773706 Unit!85798)))

(declare-fun b!4454295 () Bool)

(assert (=> b!4454295 false))

(declare-fun lt!1645934 () Unit!85733)

(declare-fun lt!1645935 () Unit!85733)

(assert (=> b!4454295 (= lt!1645934 lt!1645935)))

(assert (=> b!4454295 (containsKey!1305 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454295 (= lt!1645935 (lemmaInGetKeysListThenContainsKey!311 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun Unit!85799 () Unit!85733)

(assert (=> b!4454295 (= e!2773706 Unit!85799)))

(declare-fun b!4454296 () Bool)

(declare-fun lt!1645931 () Unit!85733)

(assert (=> b!4454296 (= e!2773705 lt!1645931)))

(declare-fun lt!1645933 () Unit!85733)

(assert (=> b!4454296 (= lt!1645933 (lemmaContainsKeyImpliesGetValueByKeyDefined!736 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454296 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645936 () Unit!85733)

(assert (=> b!4454296 (= lt!1645936 lt!1645933)))

(assert (=> b!4454296 (= lt!1645931 (lemmaInListThenGetKeysListContains!310 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454296 call!309972))

(declare-fun b!4454297 () Bool)

(assert (=> b!4454297 (= e!2773707 e!2773704)))

(declare-fun res!1846198 () Bool)

(assert (=> b!4454297 (=> (not res!1846198) (not e!2773704))))

(assert (=> b!4454297 (= res!1846198 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645709) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(assert (= (and d!1358713 c!758301) b!4454296))

(assert (= (and d!1358713 (not c!758301)) b!4454291))

(assert (= (and b!4454291 c!758303) b!4454295))

(assert (= (and b!4454291 (not c!758303)) b!4454294))

(assert (= (or b!4454296 b!4454291) bm!309967))

(assert (= (and bm!309967 c!758302) b!4454289))

(assert (= (and bm!309967 (not c!758302)) b!4454292))

(assert (= (and d!1358713 res!1846199) b!4454293))

(assert (= (and d!1358713 (not res!1846200)) b!4454297))

(assert (= (and b!4454297 res!1846198) b!4454290))

(declare-fun m!5155285 () Bool)

(assert (=> bm!309967 m!5155285))

(declare-fun m!5155287 () Bool)

(assert (=> b!4454295 m!5155287))

(declare-fun m!5155289 () Bool)

(assert (=> b!4454295 m!5155289))

(declare-fun m!5155291 () Bool)

(assert (=> b!4454292 m!5155291))

(declare-fun m!5155293 () Bool)

(assert (=> b!4454296 m!5155293))

(declare-fun m!5155295 () Bool)

(assert (=> b!4454296 m!5155295))

(assert (=> b!4454296 m!5155295))

(declare-fun m!5155297 () Bool)

(assert (=> b!4454296 m!5155297))

(declare-fun m!5155299 () Bool)

(assert (=> b!4454296 m!5155299))

(assert (=> d!1358713 m!5155287))

(assert (=> b!4454297 m!5155295))

(assert (=> b!4454297 m!5155295))

(assert (=> b!4454297 m!5155297))

(assert (=> b!4454290 m!5155291))

(assert (=> b!4454290 m!5155291))

(declare-fun m!5155305 () Bool)

(assert (=> b!4454290 m!5155305))

(assert (=> b!4454293 m!5155291))

(assert (=> b!4454293 m!5155291))

(assert (=> b!4454293 m!5155305))

(declare-fun m!5155307 () Bool)

(assert (=> b!4454289 m!5155307))

(assert (=> b!4454065 d!1358713))

(declare-fun d!1358717 () Bool)

(declare-fun res!1846201 () Bool)

(declare-fun e!2773710 () Bool)

(assert (=> d!1358717 (=> res!1846201 e!2773710)))

(assert (=> d!1358717 (= res!1846201 ((_ is Nil!49938) (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> d!1358717 (= (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159658) e!2773710)))

(declare-fun b!4454298 () Bool)

(declare-fun e!2773711 () Bool)

(assert (=> b!4454298 (= e!2773710 e!2773711)))

(declare-fun res!1846202 () Bool)

(assert (=> b!4454298 (=> (not res!1846202) (not e!2773711))))

(assert (=> b!4454298 (= res!1846202 (dynLambda!20956 lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun b!4454299 () Bool)

(assert (=> b!4454299 (= e!2773711 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159658))))

(assert (= (and d!1358717 (not res!1846201)) b!4454298))

(assert (= (and b!4454298 res!1846202) b!4454299))

(declare-fun b_lambda!147417 () Bool)

(assert (=> (not b_lambda!147417) (not b!4454298)))

(declare-fun m!5155309 () Bool)

(assert (=> b!4454298 m!5155309))

(assert (=> b!4454299 m!5154813))

(assert (=> b!4454065 d!1358717))

(declare-fun d!1358719 () Bool)

(assert (=> d!1358719 (dynLambda!20956 lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(declare-fun lt!1645944 () Unit!85733)

(declare-fun choose!28354 (List!50062 Int tuple2!49966) Unit!85733)

(assert (=> d!1358719 (= lt!1645944 (choose!28354 (toList!3778 lt!1645718) lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun e!2773714 () Bool)

(assert (=> d!1358719 e!2773714))

(declare-fun res!1846205 () Bool)

(assert (=> d!1358719 (=> (not res!1846205) (not e!2773714))))

(assert (=> d!1358719 (= res!1846205 (forall!9795 (toList!3778 lt!1645718) lambda!159658))))

(assert (=> d!1358719 (= (forallContained!2166 (toList!3778 lt!1645718) lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645944)))

(declare-fun b!4454302 () Bool)

(declare-fun contains!12509 (List!50062 tuple2!49966) Bool)

(assert (=> b!4454302 (= e!2773714 (contains!12509 (toList!3778 lt!1645718) (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (= (and d!1358719 res!1846205) b!4454302))

(declare-fun b_lambda!147419 () Bool)

(assert (=> (not b_lambda!147419) (not d!1358719)))

(assert (=> d!1358719 m!5155309))

(declare-fun m!5155311 () Bool)

(assert (=> d!1358719 m!5155311))

(assert (=> d!1358719 m!5154827))

(declare-fun m!5155313 () Bool)

(assert (=> b!4454302 m!5155313))

(assert (=> b!4454065 d!1358719))

(declare-fun d!1358721 () Bool)

(declare-fun res!1846206 () Bool)

(declare-fun e!2773715 () Bool)

(assert (=> d!1358721 (=> res!1846206 e!2773715)))

(assert (=> d!1358721 (= res!1846206 ((_ is Nil!49938) (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> d!1358721 (= (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159658) e!2773715)))

(declare-fun b!4454303 () Bool)

(declare-fun e!2773716 () Bool)

(assert (=> b!4454303 (= e!2773715 e!2773716)))

(declare-fun res!1846207 () Bool)

(assert (=> b!4454303 (=> (not res!1846207) (not e!2773716))))

(assert (=> b!4454303 (= res!1846207 (dynLambda!20956 lambda!159658 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun b!4454304 () Bool)

(assert (=> b!4454304 (= e!2773716 (forall!9795 (t!357012 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lambda!159658))))

(assert (= (and d!1358721 (not res!1846206)) b!4454303))

(assert (= (and b!4454303 res!1846207) b!4454304))

(declare-fun b_lambda!147421 () Bool)

(assert (=> (not b_lambda!147421) (not b!4454303)))

(declare-fun m!5155315 () Bool)

(assert (=> b!4454303 m!5155315))

(declare-fun m!5155317 () Bool)

(assert (=> b!4454304 m!5155317))

(assert (=> b!4454065 d!1358721))

(declare-fun d!1358723 () Bool)

(declare-fun res!1846208 () Bool)

(declare-fun e!2773717 () Bool)

(assert (=> d!1358723 (=> res!1846208 e!2773717)))

(assert (=> d!1358723 (= res!1846208 ((_ is Nil!49938) (toList!3778 lt!1645718)))))

(assert (=> d!1358723 (= (forall!9795 (toList!3778 lt!1645718) lambda!159658) e!2773717)))

(declare-fun b!4454305 () Bool)

(declare-fun e!2773718 () Bool)

(assert (=> b!4454305 (= e!2773717 e!2773718)))

(declare-fun res!1846209 () Bool)

(assert (=> b!4454305 (=> (not res!1846209) (not e!2773718))))

(assert (=> b!4454305 (= res!1846209 (dynLambda!20956 lambda!159658 (h!55683 (toList!3778 lt!1645718))))))

(declare-fun b!4454306 () Bool)

(assert (=> b!4454306 (= e!2773718 (forall!9795 (t!357012 (toList!3778 lt!1645718)) lambda!159658))))

(assert (= (and d!1358723 (not res!1846208)) b!4454305))

(assert (= (and b!4454305 res!1846209) b!4454306))

(declare-fun b_lambda!147423 () Bool)

(assert (=> (not b_lambda!147423) (not b!4454305)))

(declare-fun m!5155319 () Bool)

(assert (=> b!4454305 m!5155319))

(declare-fun m!5155321 () Bool)

(assert (=> b!4454306 m!5155321))

(assert (=> b!4454065 d!1358723))

(declare-fun bs!790295 () Bool)

(declare-fun b!4454310 () Bool)

(assert (= bs!790295 (and b!4454310 d!1358595)))

(declare-fun lambda!159716 () Int)

(assert (=> bs!790295 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645717) (= lambda!159716 lambda!159659))))

(declare-fun bs!790296 () Bool)

(assert (= bs!790296 (and b!4454310 b!4454066)))

(assert (=> bs!790296 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159716 lambda!159656))))

(declare-fun bs!790297 () Bool)

(assert (= bs!790297 (and b!4454310 b!4454215)))

(assert (=> bs!790297 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159716 lambda!159693))))

(declare-fun bs!790298 () Bool)

(assert (= bs!790298 (and b!4454310 b!4454065)))

(assert (=> bs!790298 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645709) (= lambda!159716 lambda!159658))))

(declare-fun bs!790299 () Bool)

(assert (= bs!790299 (and b!4454310 d!1358669)))

(assert (=> bs!790299 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645849) (= lambda!159716 lambda!159695))))

(declare-fun bs!790301 () Bool)

(assert (= bs!790301 (and b!4454310 d!1358687)))

(assert (=> bs!790301 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645886) (= lambda!159716 lambda!159707))))

(assert (=> bs!790298 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159716 lambda!159657))))

(declare-fun bs!790303 () Bool)

(assert (= bs!790303 (and b!4454310 b!4454248)))

(assert (=> bs!790303 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159716 lambda!159703))))

(declare-fun bs!790305 () Bool)

(assert (= bs!790305 (and b!4454310 b!4454216)))

(assert (=> bs!790305 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159716 lambda!159692))))

(declare-fun bs!790307 () Bool)

(assert (= bs!790307 (and b!4454310 d!1358697)))

(assert (=> bs!790307 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159716 lambda!159713))))

(assert (=> bs!790297 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645841) (= lambda!159716 lambda!159694))))

(declare-fun bs!790310 () Bool)

(assert (= bs!790310 (and b!4454310 b!4454249)))

(assert (=> bs!790310 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159716 lambda!159702))))

(assert (=> bs!790303 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645878) (= lambda!159716 lambda!159705))))

(assert (=> b!4454310 true))

(declare-fun bs!790315 () Bool)

(declare-fun b!4454309 () Bool)

(assert (= bs!790315 (and b!4454309 d!1358595)))

(declare-fun lambda!159718 () Int)

(assert (=> bs!790315 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645717) (= lambda!159718 lambda!159659))))

(declare-fun bs!790318 () Bool)

(assert (= bs!790318 (and b!4454309 b!4454066)))

(assert (=> bs!790318 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159718 lambda!159656))))

(declare-fun bs!790320 () Bool)

(assert (= bs!790320 (and b!4454309 b!4454215)))

(assert (=> bs!790320 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159718 lambda!159693))))

(declare-fun bs!790321 () Bool)

(assert (= bs!790321 (and b!4454309 b!4454065)))

(assert (=> bs!790321 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645709) (= lambda!159718 lambda!159658))))

(declare-fun bs!790322 () Bool)

(assert (= bs!790322 (and b!4454309 d!1358669)))

(assert (=> bs!790322 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645849) (= lambda!159718 lambda!159695))))

(declare-fun bs!790323 () Bool)

(assert (= bs!790323 (and b!4454309 d!1358687)))

(assert (=> bs!790323 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645886) (= lambda!159718 lambda!159707))))

(assert (=> bs!790321 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159718 lambda!159657))))

(declare-fun bs!790325 () Bool)

(assert (= bs!790325 (and b!4454309 b!4454248)))

(assert (=> bs!790325 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159718 lambda!159703))))

(declare-fun bs!790326 () Bool)

(assert (= bs!790326 (and b!4454309 b!4454216)))

(assert (=> bs!790326 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159718 lambda!159692))))

(declare-fun bs!790328 () Bool)

(assert (= bs!790328 (and b!4454309 b!4454310)))

(assert (=> bs!790328 (= lambda!159718 lambda!159716)))

(declare-fun bs!790329 () Bool)

(assert (= bs!790329 (and b!4454309 d!1358697)))

(assert (=> bs!790329 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645568) (= lambda!159718 lambda!159713))))

(assert (=> bs!790320 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645841) (= lambda!159718 lambda!159694))))

(declare-fun bs!790330 () Bool)

(assert (= bs!790330 (and b!4454309 b!4454249)))

(assert (=> bs!790330 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159718 lambda!159702))))

(assert (=> bs!790325 (= (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645878) (= lambda!159718 lambda!159705))))

(assert (=> b!4454309 true))

(declare-fun lt!1645951 () ListMap!3017)

(declare-fun lambda!159719 () Int)

(assert (=> bs!790315 (= (= lt!1645951 lt!1645717) (= lambda!159719 lambda!159659))))

(assert (=> bs!790318 (= (= lt!1645951 lt!1645568) (= lambda!159719 lambda!159656))))

(assert (=> bs!790320 (= (= lt!1645951 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159719 lambda!159693))))

(assert (=> bs!790321 (= (= lt!1645951 lt!1645709) (= lambda!159719 lambda!159658))))

(assert (=> b!4454309 (= (= lt!1645951 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159719 lambda!159718))))

(assert (=> bs!790322 (= (= lt!1645951 lt!1645849) (= lambda!159719 lambda!159695))))

(assert (=> bs!790323 (= (= lt!1645951 lt!1645886) (= lambda!159719 lambda!159707))))

(assert (=> bs!790321 (= (= lt!1645951 lt!1645568) (= lambda!159719 lambda!159657))))

(assert (=> bs!790325 (= (= lt!1645951 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159719 lambda!159703))))

(assert (=> bs!790326 (= (= lt!1645951 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159719 lambda!159692))))

(assert (=> bs!790328 (= (= lt!1645951 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159719 lambda!159716))))

(assert (=> bs!790329 (= (= lt!1645951 lt!1645568) (= lambda!159719 lambda!159713))))

(assert (=> bs!790320 (= (= lt!1645951 lt!1645841) (= lambda!159719 lambda!159694))))

(assert (=> bs!790330 (= (= lt!1645951 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159719 lambda!159702))))

(assert (=> bs!790325 (= (= lt!1645951 lt!1645878) (= lambda!159719 lambda!159705))))

(assert (=> b!4454309 true))

(declare-fun bs!790331 () Bool)

(declare-fun d!1358725 () Bool)

(assert (= bs!790331 (and d!1358725 d!1358595)))

(declare-fun lambda!159720 () Int)

(declare-fun lt!1645959 () ListMap!3017)

(assert (=> bs!790331 (= (= lt!1645959 lt!1645717) (= lambda!159720 lambda!159659))))

(declare-fun bs!790332 () Bool)

(assert (= bs!790332 (and d!1358725 b!4454066)))

(assert (=> bs!790332 (= (= lt!1645959 lt!1645568) (= lambda!159720 lambda!159656))))

(declare-fun bs!790333 () Bool)

(assert (= bs!790333 (and d!1358725 b!4454215)))

(assert (=> bs!790333 (= (= lt!1645959 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159720 lambda!159693))))

(declare-fun bs!790334 () Bool)

(assert (= bs!790334 (and d!1358725 b!4454065)))

(assert (=> bs!790334 (= (= lt!1645959 lt!1645709) (= lambda!159720 lambda!159658))))

(declare-fun bs!790335 () Bool)

(assert (= bs!790335 (and d!1358725 b!4454309)))

(assert (=> bs!790335 (= (= lt!1645959 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159720 lambda!159718))))

(declare-fun bs!790336 () Bool)

(assert (= bs!790336 (and d!1358725 d!1358669)))

(assert (=> bs!790336 (= (= lt!1645959 lt!1645849) (= lambda!159720 lambda!159695))))

(declare-fun bs!790337 () Bool)

(assert (= bs!790337 (and d!1358725 d!1358687)))

(assert (=> bs!790337 (= (= lt!1645959 lt!1645886) (= lambda!159720 lambda!159707))))

(assert (=> bs!790335 (= (= lt!1645959 lt!1645951) (= lambda!159720 lambda!159719))))

(assert (=> bs!790334 (= (= lt!1645959 lt!1645568) (= lambda!159720 lambda!159657))))

(declare-fun bs!790338 () Bool)

(assert (= bs!790338 (and d!1358725 b!4454248)))

(assert (=> bs!790338 (= (= lt!1645959 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159720 lambda!159703))))

(declare-fun bs!790339 () Bool)

(assert (= bs!790339 (and d!1358725 b!4454216)))

(assert (=> bs!790339 (= (= lt!1645959 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159720 lambda!159692))))

(declare-fun bs!790340 () Bool)

(assert (= bs!790340 (and d!1358725 b!4454310)))

(assert (=> bs!790340 (= (= lt!1645959 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159720 lambda!159716))))

(declare-fun bs!790341 () Bool)

(assert (= bs!790341 (and d!1358725 d!1358697)))

(assert (=> bs!790341 (= (= lt!1645959 lt!1645568) (= lambda!159720 lambda!159713))))

(assert (=> bs!790333 (= (= lt!1645959 lt!1645841) (= lambda!159720 lambda!159694))))

(declare-fun bs!790342 () Bool)

(assert (= bs!790342 (and d!1358725 b!4454249)))

(assert (=> bs!790342 (= (= lt!1645959 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159720 lambda!159702))))

(assert (=> bs!790338 (= (= lt!1645959 lt!1645878) (= lambda!159720 lambda!159705))))

(assert (=> d!1358725 true))

(declare-fun c!758304 () Bool)

(declare-fun bm!309968 () Bool)

(declare-fun call!309973 () Bool)

(assert (=> bm!309968 (= call!309973 (forall!9795 (ite c!758304 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (ite c!758304 lambda!159716 lambda!159719)))))

(declare-fun b!4454307 () Bool)

(declare-fun res!1846212 () Bool)

(declare-fun e!2773721 () Bool)

(assert (=> b!4454307 (=> (not res!1846212) (not e!2773721))))

(assert (=> b!4454307 (= res!1846212 (forall!9795 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lambda!159720))))

(declare-fun bm!309969 () Bool)

(declare-fun call!309974 () Unit!85733)

(assert (=> bm!309969 (= call!309974 (lemmaContainsAllItsOwnKeys!220 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun b!4454308 () Bool)

(assert (=> b!4454308 (= e!2773721 (invariantList!867 (toList!3778 lt!1645959)))))

(declare-fun bm!309970 () Bool)

(declare-fun call!309975 () Bool)

(assert (=> bm!309970 (= call!309975 (forall!9795 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (ite c!758304 lambda!159716 lambda!159719)))))

(declare-fun e!2773720 () ListMap!3017)

(assert (=> b!4454309 (= e!2773720 lt!1645951)))

(declare-fun lt!1645960 () ListMap!3017)

(assert (=> b!4454309 (= lt!1645960 (+!1277 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454309 (= lt!1645951 (addToMapMapFromBucket!485 (t!357012 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (+!1277 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun lt!1645963 () Unit!85733)

(assert (=> b!4454309 (= lt!1645963 call!309974)))

(assert (=> b!4454309 (forall!9795 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lambda!159718)))

(declare-fun lt!1645950 () Unit!85733)

(assert (=> b!4454309 (= lt!1645950 lt!1645963)))

(assert (=> b!4454309 (forall!9795 (toList!3778 lt!1645960) lambda!159719)))

(declare-fun lt!1645954 () Unit!85733)

(declare-fun Unit!85802 () Unit!85733)

(assert (=> b!4454309 (= lt!1645954 Unit!85802)))

(assert (=> b!4454309 (forall!9795 (t!357012 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lambda!159719)))

(declare-fun lt!1645958 () Unit!85733)

(declare-fun Unit!85803 () Unit!85733)

(assert (=> b!4454309 (= lt!1645958 Unit!85803)))

(declare-fun lt!1645947 () Unit!85733)

(declare-fun Unit!85804 () Unit!85733)

(assert (=> b!4454309 (= lt!1645947 Unit!85804)))

(declare-fun lt!1645965 () Unit!85733)

(assert (=> b!4454309 (= lt!1645965 (forallContained!2166 (toList!3778 lt!1645960) lambda!159719 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454309 (contains!12505 lt!1645960 (_1!28277 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645953 () Unit!85733)

(declare-fun Unit!85805 () Unit!85733)

(assert (=> b!4454309 (= lt!1645953 Unit!85805)))

(assert (=> b!4454309 (contains!12505 lt!1645951 (_1!28277 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645955 () Unit!85733)

(declare-fun Unit!85806 () Unit!85733)

(assert (=> b!4454309 (= lt!1645955 Unit!85806)))

(assert (=> b!4454309 call!309973))

(declare-fun lt!1645948 () Unit!85733)

(declare-fun Unit!85807 () Unit!85733)

(assert (=> b!4454309 (= lt!1645948 Unit!85807)))

(assert (=> b!4454309 (forall!9795 (toList!3778 lt!1645960) lambda!159719)))

(declare-fun lt!1645966 () Unit!85733)

(declare-fun Unit!85808 () Unit!85733)

(assert (=> b!4454309 (= lt!1645966 Unit!85808)))

(declare-fun lt!1645949 () Unit!85733)

(declare-fun Unit!85809 () Unit!85733)

(assert (=> b!4454309 (= lt!1645949 Unit!85809)))

(declare-fun lt!1645956 () Unit!85733)

(assert (=> b!4454309 (= lt!1645956 (addForallContainsKeyThenBeforeAdding!220 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645951 (_1!28277 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (_2!28277 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(assert (=> b!4454309 (forall!9795 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lambda!159719)))

(declare-fun lt!1645962 () Unit!85733)

(assert (=> b!4454309 (= lt!1645962 lt!1645956)))

(assert (=> b!4454309 (forall!9795 (toList!3778 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lambda!159719)))

(declare-fun lt!1645964 () Unit!85733)

(declare-fun Unit!85810 () Unit!85733)

(assert (=> b!4454309 (= lt!1645964 Unit!85810)))

(declare-fun res!1846210 () Bool)

(assert (=> b!4454309 (= res!1846210 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159719))))

(declare-fun e!2773719 () Bool)

(assert (=> b!4454309 (=> (not res!1846210) (not e!2773719))))

(assert (=> b!4454309 e!2773719))

(declare-fun lt!1645957 () Unit!85733)

(declare-fun Unit!85811 () Unit!85733)

(assert (=> b!4454309 (= lt!1645957 Unit!85811)))

(assert (=> b!4454310 (= e!2773720 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun lt!1645967 () Unit!85733)

(assert (=> b!4454310 (= lt!1645967 call!309974)))

(assert (=> b!4454310 call!309975))

(declare-fun lt!1645952 () Unit!85733)

(assert (=> b!4454310 (= lt!1645952 lt!1645967)))

(assert (=> b!4454310 call!309973))

(declare-fun lt!1645961 () Unit!85733)

(declare-fun Unit!85812 () Unit!85733)

(assert (=> b!4454310 (= lt!1645961 Unit!85812)))

(declare-fun b!4454311 () Bool)

(assert (=> b!4454311 (= e!2773719 call!309975)))

(assert (=> d!1358725 e!2773721))

(declare-fun res!1846211 () Bool)

(assert (=> d!1358725 (=> (not res!1846211) (not e!2773721))))

(assert (=> d!1358725 (= res!1846211 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159720))))

(assert (=> d!1358725 (= lt!1645959 e!2773720)))

(assert (=> d!1358725 (= c!758304 ((_ is Nil!49938) (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> d!1358725 (noDuplicateKeys!886 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> d!1358725 (= (addToMapMapFromBucket!485 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lt!1645959)))

(assert (= (and d!1358725 c!758304) b!4454310))

(assert (= (and d!1358725 (not c!758304)) b!4454309))

(assert (= (and b!4454309 res!1846210) b!4454311))

(assert (= (or b!4454310 b!4454311) bm!309970))

(assert (= (or b!4454310 b!4454309) bm!309968))

(assert (= (or b!4454310 b!4454309) bm!309969))

(assert (= (and d!1358725 res!1846211) b!4454307))

(assert (= (and b!4454307 res!1846212) b!4454308))

(declare-fun m!5155339 () Bool)

(assert (=> bm!309968 m!5155339))

(declare-fun m!5155343 () Bool)

(assert (=> b!4454309 m!5155343))

(declare-fun m!5155345 () Bool)

(assert (=> b!4454309 m!5155345))

(declare-fun m!5155349 () Bool)

(assert (=> b!4454309 m!5155349))

(declare-fun m!5155351 () Bool)

(assert (=> b!4454309 m!5155351))

(declare-fun m!5155355 () Bool)

(assert (=> b!4454309 m!5155355))

(assert (=> b!4454309 m!5154817))

(declare-fun m!5155357 () Bool)

(assert (=> b!4454309 m!5155357))

(declare-fun m!5155361 () Bool)

(assert (=> b!4454309 m!5155361))

(declare-fun m!5155363 () Bool)

(assert (=> b!4454309 m!5155363))

(declare-fun m!5155365 () Bool)

(assert (=> b!4454309 m!5155365))

(declare-fun m!5155369 () Bool)

(assert (=> b!4454309 m!5155369))

(declare-fun m!5155371 () Bool)

(assert (=> b!4454309 m!5155371))

(assert (=> b!4454309 m!5154817))

(assert (=> b!4454309 m!5155349))

(assert (=> b!4454309 m!5155345))

(assert (=> b!4454309 m!5155363))

(declare-fun m!5155373 () Bool)

(assert (=> b!4454307 m!5155373))

(assert (=> bm!309969 m!5154817))

(declare-fun m!5155375 () Bool)

(assert (=> bm!309969 m!5155375))

(declare-fun m!5155377 () Bool)

(assert (=> b!4454308 m!5155377))

(declare-fun m!5155379 () Bool)

(assert (=> d!1358725 m!5155379))

(declare-fun m!5155381 () Bool)

(assert (=> d!1358725 m!5155381))

(declare-fun m!5155383 () Bool)

(assert (=> bm!309970 m!5155383))

(assert (=> b!4454065 d!1358725))

(declare-fun bs!790353 () Bool)

(declare-fun d!1358755 () Bool)

(assert (= bs!790353 (and d!1358755 d!1358595)))

(declare-fun lambda!159725 () Int)

(assert (=> bs!790353 (= (= lt!1645709 lt!1645717) (= lambda!159725 lambda!159659))))

(declare-fun bs!790354 () Bool)

(assert (= bs!790354 (and d!1358755 b!4454066)))

(assert (=> bs!790354 (= (= lt!1645709 lt!1645568) (= lambda!159725 lambda!159656))))

(declare-fun bs!790355 () Bool)

(assert (= bs!790355 (and d!1358755 b!4454215)))

(assert (=> bs!790355 (= (= lt!1645709 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159725 lambda!159693))))

(declare-fun bs!790356 () Bool)

(assert (= bs!790356 (and d!1358755 b!4454065)))

(assert (=> bs!790356 (= lambda!159725 lambda!159658)))

(declare-fun bs!790357 () Bool)

(assert (= bs!790357 (and d!1358755 b!4454309)))

(assert (=> bs!790357 (= (= lt!1645709 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159725 lambda!159718))))

(declare-fun bs!790358 () Bool)

(assert (= bs!790358 (and d!1358755 d!1358669)))

(assert (=> bs!790358 (= (= lt!1645709 lt!1645849) (= lambda!159725 lambda!159695))))

(declare-fun bs!790359 () Bool)

(assert (= bs!790359 (and d!1358755 d!1358725)))

(assert (=> bs!790359 (= (= lt!1645709 lt!1645959) (= lambda!159725 lambda!159720))))

(declare-fun bs!790360 () Bool)

(assert (= bs!790360 (and d!1358755 d!1358687)))

(assert (=> bs!790360 (= (= lt!1645709 lt!1645886) (= lambda!159725 lambda!159707))))

(assert (=> bs!790357 (= (= lt!1645709 lt!1645951) (= lambda!159725 lambda!159719))))

(assert (=> bs!790356 (= (= lt!1645709 lt!1645568) (= lambda!159725 lambda!159657))))

(declare-fun bs!790361 () Bool)

(assert (= bs!790361 (and d!1358755 b!4454248)))

(assert (=> bs!790361 (= (= lt!1645709 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159725 lambda!159703))))

(declare-fun bs!790362 () Bool)

(assert (= bs!790362 (and d!1358755 b!4454216)))

(assert (=> bs!790362 (= (= lt!1645709 (extractMap!954 (t!357013 (toList!3777 (tail!7460 lm!1837))))) (= lambda!159725 lambda!159692))))

(declare-fun bs!790363 () Bool)

(assert (= bs!790363 (and d!1358755 b!4454310)))

(assert (=> bs!790363 (= (= lt!1645709 (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (= lambda!159725 lambda!159716))))

(declare-fun bs!790364 () Bool)

(assert (= bs!790364 (and d!1358755 d!1358697)))

(assert (=> bs!790364 (= (= lt!1645709 lt!1645568) (= lambda!159725 lambda!159713))))

(assert (=> bs!790355 (= (= lt!1645709 lt!1645841) (= lambda!159725 lambda!159694))))

(declare-fun bs!790365 () Bool)

(assert (= bs!790365 (and d!1358755 b!4454249)))

(assert (=> bs!790365 (= (= lt!1645709 (extractMap!954 (t!357013 (toList!3777 lm!1837)))) (= lambda!159725 lambda!159702))))

(assert (=> bs!790361 (= (= lt!1645709 lt!1645878) (= lambda!159725 lambda!159705))))

(assert (=> d!1358755 true))

(assert (=> d!1358755 (forall!9795 (toList!3778 lt!1645568) lambda!159725)))

(declare-fun lt!1645971 () Unit!85733)

(declare-fun choose!28355 (ListMap!3017 ListMap!3017 K!11315 V!11561) Unit!85733)

(assert (=> d!1358755 (= lt!1645971 (choose!28355 lt!1645568 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> d!1358755 (forall!9795 (toList!3778 (+!1277 lt!1645568 (tuple2!49967 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))) lambda!159725)))

(assert (=> d!1358755 (= (addForallContainsKeyThenBeforeAdding!220 lt!1645568 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lt!1645971)))

(declare-fun bs!790366 () Bool)

(assert (= bs!790366 d!1358755))

(declare-fun m!5155385 () Bool)

(assert (=> bs!790366 m!5155385))

(declare-fun m!5155387 () Bool)

(assert (=> bs!790366 m!5155387))

(declare-fun m!5155389 () Bool)

(assert (=> bs!790366 m!5155389))

(declare-fun m!5155391 () Bool)

(assert (=> bs!790366 m!5155391))

(assert (=> b!4454065 d!1358755))

(declare-fun d!1358757 () Bool)

(declare-fun res!1846221 () Bool)

(declare-fun e!2773734 () Bool)

(assert (=> d!1358757 (=> res!1846221 e!2773734)))

(assert (=> d!1358757 (= res!1846221 ((_ is Nil!49938) (toList!3778 lt!1645568)))))

(assert (=> d!1358757 (= (forall!9795 (toList!3778 lt!1645568) lambda!159657) e!2773734)))

(declare-fun b!4454327 () Bool)

(declare-fun e!2773735 () Bool)

(assert (=> b!4454327 (= e!2773734 e!2773735)))

(declare-fun res!1846222 () Bool)

(assert (=> b!4454327 (=> (not res!1846222) (not e!2773735))))

(assert (=> b!4454327 (= res!1846222 (dynLambda!20956 lambda!159657 (h!55683 (toList!3778 lt!1645568))))))

(declare-fun b!4454328 () Bool)

(assert (=> b!4454328 (= e!2773735 (forall!9795 (t!357012 (toList!3778 lt!1645568)) lambda!159657))))

(assert (= (and d!1358757 (not res!1846221)) b!4454327))

(assert (= (and b!4454327 res!1846222) b!4454328))

(declare-fun b_lambda!147449 () Bool)

(assert (=> (not b_lambda!147449) (not b!4454327)))

(declare-fun m!5155393 () Bool)

(assert (=> b!4454327 m!5155393))

(declare-fun m!5155395 () Bool)

(assert (=> b!4454328 m!5155395))

(assert (=> b!4454065 d!1358757))

(declare-fun d!1358759 () Bool)

(declare-fun e!2773738 () Bool)

(assert (=> d!1358759 e!2773738))

(declare-fun res!1846228 () Bool)

(assert (=> d!1358759 (=> (not res!1846228) (not e!2773738))))

(declare-fun lt!1645980 () ListMap!3017)

(assert (=> d!1358759 (= res!1846228 (contains!12505 lt!1645980 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645981 () List!50062)

(assert (=> d!1358759 (= lt!1645980 (ListMap!3018 lt!1645981))))

(declare-fun lt!1645983 () Unit!85733)

(declare-fun lt!1645982 () Unit!85733)

(assert (=> d!1358759 (= lt!1645983 lt!1645982)))

(assert (=> d!1358759 (= (getValueByKey!831 lt!1645981 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (Some!10844 (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!542 (List!50062 K!11315 V!11561) Unit!85733)

(assert (=> d!1358759 (= lt!1645982 (lemmaContainsTupThenGetReturnValue!542 lt!1645981 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun insertNoDuplicatedKeys!236 (List!50062 K!11315 V!11561) List!50062)

(assert (=> d!1358759 (= lt!1645981 (insertNoDuplicatedKeys!236 (toList!3778 lt!1645568) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> d!1358759 (= (+!1277 lt!1645568 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) lt!1645980)))

(declare-fun b!4454333 () Bool)

(declare-fun res!1846227 () Bool)

(assert (=> b!4454333 (=> (not res!1846227) (not e!2773738))))

(assert (=> b!4454333 (= res!1846227 (= (getValueByKey!831 (toList!3778 lt!1645980) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (Some!10844 (_2!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun b!4454334 () Bool)

(assert (=> b!4454334 (= e!2773738 (contains!12509 (toList!3778 lt!1645980) (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (= (and d!1358759 res!1846228) b!4454333))

(assert (= (and b!4454333 res!1846227) b!4454334))

(declare-fun m!5155397 () Bool)

(assert (=> d!1358759 m!5155397))

(declare-fun m!5155399 () Bool)

(assert (=> d!1358759 m!5155399))

(declare-fun m!5155401 () Bool)

(assert (=> d!1358759 m!5155401))

(declare-fun m!5155403 () Bool)

(assert (=> d!1358759 m!5155403))

(declare-fun m!5155405 () Bool)

(assert (=> b!4454333 m!5155405))

(declare-fun m!5155407 () Bool)

(assert (=> b!4454334 m!5155407))

(assert (=> b!4454065 d!1358759))

(declare-fun b!4454335 () Bool)

(declare-fun e!2773744 () List!50065)

(assert (=> b!4454335 (= e!2773744 (getKeysList!313 (toList!3778 lt!1645718)))))

(declare-fun b!4454336 () Bool)

(declare-fun e!2773739 () Bool)

(assert (=> b!4454336 (= e!2773739 (contains!12507 (keys!17145 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun bm!309971 () Bool)

(declare-fun call!309976 () Bool)

(assert (=> bm!309971 (= call!309976 (contains!12507 e!2773744 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun c!758306 () Bool)

(declare-fun c!758305 () Bool)

(assert (=> bm!309971 (= c!758306 c!758305)))

(declare-fun b!4454337 () Bool)

(declare-fun e!2773740 () Unit!85733)

(declare-fun e!2773741 () Unit!85733)

(assert (=> b!4454337 (= e!2773740 e!2773741)))

(declare-fun c!758307 () Bool)

(assert (=> b!4454337 (= c!758307 call!309976)))

(declare-fun d!1358761 () Bool)

(declare-fun e!2773742 () Bool)

(assert (=> d!1358761 e!2773742))

(declare-fun res!1846231 () Bool)

(assert (=> d!1358761 (=> res!1846231 e!2773742)))

(declare-fun e!2773743 () Bool)

(assert (=> d!1358761 (= res!1846231 e!2773743)))

(declare-fun res!1846230 () Bool)

(assert (=> d!1358761 (=> (not res!1846230) (not e!2773743))))

(declare-fun lt!1645985 () Bool)

(assert (=> d!1358761 (= res!1846230 (not lt!1645985))))

(declare-fun lt!1645991 () Bool)

(assert (=> d!1358761 (= lt!1645985 lt!1645991)))

(declare-fun lt!1645990 () Unit!85733)

(assert (=> d!1358761 (= lt!1645990 e!2773740)))

(assert (=> d!1358761 (= c!758305 lt!1645991)))

(assert (=> d!1358761 (= lt!1645991 (containsKey!1305 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> d!1358761 (= (contains!12505 lt!1645718 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) lt!1645985)))

(declare-fun b!4454338 () Bool)

(assert (=> b!4454338 (= e!2773744 (keys!17145 lt!1645718))))

(declare-fun b!4454339 () Bool)

(assert (=> b!4454339 (= e!2773743 (not (contains!12507 (keys!17145 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun b!4454340 () Bool)

(declare-fun Unit!85824 () Unit!85733)

(assert (=> b!4454340 (= e!2773741 Unit!85824)))

(declare-fun b!4454341 () Bool)

(assert (=> b!4454341 false))

(declare-fun lt!1645987 () Unit!85733)

(declare-fun lt!1645988 () Unit!85733)

(assert (=> b!4454341 (= lt!1645987 lt!1645988)))

(assert (=> b!4454341 (containsKey!1305 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> b!4454341 (= lt!1645988 (lemmaInGetKeysListThenContainsKey!311 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun Unit!85825 () Unit!85733)

(assert (=> b!4454341 (= e!2773741 Unit!85825)))

(declare-fun b!4454342 () Bool)

(declare-fun lt!1645984 () Unit!85733)

(assert (=> b!4454342 (= e!2773740 lt!1645984)))

(declare-fun lt!1645986 () Unit!85733)

(assert (=> b!4454342 (= lt!1645986 (lemmaContainsKeyImpliesGetValueByKeyDefined!736 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454342 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun lt!1645989 () Unit!85733)

(assert (=> b!4454342 (= lt!1645989 lt!1645986)))

(assert (=> b!4454342 (= lt!1645984 (lemmaInListThenGetKeysListContains!310 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> b!4454342 call!309976))

(declare-fun b!4454343 () Bool)

(assert (=> b!4454343 (= e!2773742 e!2773739)))

(declare-fun res!1846229 () Bool)

(assert (=> b!4454343 (=> (not res!1846229) (not e!2773739))))

(assert (=> b!4454343 (= res!1846229 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645718) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(assert (= (and d!1358761 c!758305) b!4454342))

(assert (= (and d!1358761 (not c!758305)) b!4454337))

(assert (= (and b!4454337 c!758307) b!4454341))

(assert (= (and b!4454337 (not c!758307)) b!4454340))

(assert (= (or b!4454342 b!4454337) bm!309971))

(assert (= (and bm!309971 c!758306) b!4454335))

(assert (= (and bm!309971 (not c!758306)) b!4454338))

(assert (= (and d!1358761 res!1846230) b!4454339))

(assert (= (and d!1358761 (not res!1846231)) b!4454343))

(assert (= (and b!4454343 res!1846229) b!4454336))

(declare-fun m!5155409 () Bool)

(assert (=> bm!309971 m!5155409))

(declare-fun m!5155411 () Bool)

(assert (=> b!4454341 m!5155411))

(declare-fun m!5155413 () Bool)

(assert (=> b!4454341 m!5155413))

(declare-fun m!5155415 () Bool)

(assert (=> b!4454338 m!5155415))

(declare-fun m!5155417 () Bool)

(assert (=> b!4454342 m!5155417))

(declare-fun m!5155419 () Bool)

(assert (=> b!4454342 m!5155419))

(assert (=> b!4454342 m!5155419))

(declare-fun m!5155421 () Bool)

(assert (=> b!4454342 m!5155421))

(declare-fun m!5155423 () Bool)

(assert (=> b!4454342 m!5155423))

(assert (=> d!1358761 m!5155411))

(assert (=> b!4454343 m!5155419))

(assert (=> b!4454343 m!5155419))

(assert (=> b!4454343 m!5155421))

(assert (=> b!4454336 m!5155415))

(assert (=> b!4454336 m!5155415))

(declare-fun m!5155425 () Bool)

(assert (=> b!4454336 m!5155425))

(assert (=> b!4454339 m!5155415))

(assert (=> b!4454339 m!5155415))

(assert (=> b!4454339 m!5155425))

(declare-fun m!5155427 () Bool)

(assert (=> b!4454335 m!5155427))

(assert (=> b!4454065 d!1358761))

(declare-fun d!1358763 () Bool)

(declare-fun res!1846232 () Bool)

(declare-fun e!2773745 () Bool)

(assert (=> d!1358763 (=> res!1846232 e!2773745)))

(assert (=> d!1358763 (= res!1846232 ((_ is Nil!49938) (toList!3778 lt!1645568)))))

(assert (=> d!1358763 (= (forall!9795 (toList!3778 lt!1645568) lambda!159658) e!2773745)))

(declare-fun b!4454344 () Bool)

(declare-fun e!2773746 () Bool)

(assert (=> b!4454344 (= e!2773745 e!2773746)))

(declare-fun res!1846233 () Bool)

(assert (=> b!4454344 (=> (not res!1846233) (not e!2773746))))

(assert (=> b!4454344 (= res!1846233 (dynLambda!20956 lambda!159658 (h!55683 (toList!3778 lt!1645568))))))

(declare-fun b!4454345 () Bool)

(assert (=> b!4454345 (= e!2773746 (forall!9795 (t!357012 (toList!3778 lt!1645568)) lambda!159658))))

(assert (= (and d!1358763 (not res!1846232)) b!4454344))

(assert (= (and b!4454344 res!1846233) b!4454345))

(declare-fun b_lambda!147451 () Bool)

(assert (=> (not b_lambda!147451) (not b!4454344)))

(declare-fun m!5155429 () Bool)

(assert (=> b!4454344 m!5155429))

(declare-fun m!5155431 () Bool)

(assert (=> b!4454345 m!5155431))

(assert (=> b!4454065 d!1358763))

(declare-fun b!4454372 () Bool)

(assert (=> b!4454372 true))

(declare-fun bs!790367 () Bool)

(declare-fun b!4454371 () Bool)

(assert (= bs!790367 (and b!4454371 b!4454372)))

(declare-fun lambda!159735 () Int)

(declare-fun lambda!159734 () Int)

(assert (=> bs!790367 (= (= (Cons!49938 (h!55683 (toList!3778 lt!1645568)) (t!357012 (toList!3778 lt!1645568))) (t!357012 (toList!3778 lt!1645568))) (= lambda!159735 lambda!159734))))

(assert (=> b!4454371 true))

(declare-fun bs!790368 () Bool)

(declare-fun b!4454370 () Bool)

(assert (= bs!790368 (and b!4454370 b!4454372)))

(declare-fun lambda!159736 () Int)

(assert (=> bs!790368 (= (= (toList!3778 lt!1645568) (t!357012 (toList!3778 lt!1645568))) (= lambda!159736 lambda!159734))))

(declare-fun bs!790369 () Bool)

(assert (= bs!790369 (and b!4454370 b!4454371)))

(assert (=> bs!790369 (= (= (toList!3778 lt!1645568) (Cons!49938 (h!55683 (toList!3778 lt!1645568)) (t!357012 (toList!3778 lt!1645568)))) (= lambda!159736 lambda!159735))))

(assert (=> b!4454370 true))

(declare-fun b!4454364 () Bool)

(declare-fun e!2773755 () Unit!85733)

(declare-fun Unit!85826 () Unit!85733)

(assert (=> b!4454364 (= e!2773755 Unit!85826)))

(declare-fun d!1358765 () Bool)

(declare-fun e!2773757 () Bool)

(assert (=> d!1358765 e!2773757))

(declare-fun res!1846240 () Bool)

(assert (=> d!1358765 (=> (not res!1846240) (not e!2773757))))

(declare-fun lt!1646008 () List!50065)

(declare-fun noDuplicate!686 (List!50065) Bool)

(assert (=> d!1358765 (= res!1846240 (noDuplicate!686 lt!1646008))))

(declare-fun e!2773758 () List!50065)

(assert (=> d!1358765 (= lt!1646008 e!2773758)))

(declare-fun c!758315 () Bool)

(assert (=> d!1358765 (= c!758315 ((_ is Cons!49938) (toList!3778 lt!1645568)))))

(assert (=> d!1358765 (invariantList!867 (toList!3778 lt!1645568))))

(assert (=> d!1358765 (= (getKeysList!313 (toList!3778 lt!1645568)) lt!1646008)))

(declare-fun b!4454365 () Bool)

(assert (=> b!4454365 false))

(declare-fun e!2773756 () Unit!85733)

(declare-fun Unit!85827 () Unit!85733)

(assert (=> b!4454365 (= e!2773756 Unit!85827)))

(declare-fun b!4454366 () Bool)

(assert (=> b!4454366 (= e!2773758 Nil!49941)))

(declare-fun b!4454367 () Bool)

(declare-fun res!1846241 () Bool)

(assert (=> b!4454367 (=> (not res!1846241) (not e!2773757))))

(declare-fun length!228 (List!50065) Int)

(declare-fun length!229 (List!50062) Int)

(assert (=> b!4454367 (= res!1846241 (= (length!228 lt!1646008) (length!229 (toList!3778 lt!1645568))))))

(declare-fun b!4454368 () Bool)

(declare-fun Unit!85828 () Unit!85733)

(assert (=> b!4454368 (= e!2773756 Unit!85828)))

(declare-fun lambda!159737 () Int)

(declare-fun b!4454369 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8039 (List!50065) (InoxSet K!11315))

(declare-fun map!10932 (List!50062 Int) List!50065)

(assert (=> b!4454369 (= e!2773757 (= (content!8039 lt!1646008) (content!8039 (map!10932 (toList!3778 lt!1645568) lambda!159737))))))

(declare-fun res!1846242 () Bool)

(assert (=> b!4454370 (=> (not res!1846242) (not e!2773757))))

(declare-fun forall!9797 (List!50065 Int) Bool)

(assert (=> b!4454370 (= res!1846242 (forall!9797 lt!1646008 lambda!159736))))

(assert (=> b!4454371 (= e!2773758 (Cons!49941 (_1!28277 (h!55683 (toList!3778 lt!1645568))) (getKeysList!313 (t!357012 (toList!3778 lt!1645568)))))))

(declare-fun c!758314 () Bool)

(assert (=> b!4454371 (= c!758314 (containsKey!1305 (t!357012 (toList!3778 lt!1645568)) (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun lt!1646006 () Unit!85733)

(assert (=> b!4454371 (= lt!1646006 e!2773756)))

(declare-fun c!758316 () Bool)

(assert (=> b!4454371 (= c!758316 (contains!12507 (getKeysList!313 (t!357012 (toList!3778 lt!1645568))) (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun lt!1646011 () Unit!85733)

(assert (=> b!4454371 (= lt!1646011 e!2773755)))

(declare-fun lt!1646012 () List!50065)

(assert (=> b!4454371 (= lt!1646012 (getKeysList!313 (t!357012 (toList!3778 lt!1645568))))))

(declare-fun lt!1646010 () Unit!85733)

(declare-fun lemmaForallContainsAddHeadPreserves!108 (List!50062 List!50065 tuple2!49966) Unit!85733)

(assert (=> b!4454371 (= lt!1646010 (lemmaForallContainsAddHeadPreserves!108 (t!357012 (toList!3778 lt!1645568)) lt!1646012 (h!55683 (toList!3778 lt!1645568))))))

(assert (=> b!4454371 (forall!9797 lt!1646012 lambda!159735)))

(declare-fun lt!1646009 () Unit!85733)

(assert (=> b!4454371 (= lt!1646009 lt!1646010)))

(assert (=> b!4454372 false))

(declare-fun lt!1646007 () Unit!85733)

(declare-fun forallContained!2168 (List!50065 Int K!11315) Unit!85733)

(assert (=> b!4454372 (= lt!1646007 (forallContained!2168 (getKeysList!313 (t!357012 (toList!3778 lt!1645568))) lambda!159734 (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun Unit!85829 () Unit!85733)

(assert (=> b!4454372 (= e!2773755 Unit!85829)))

(assert (= (and d!1358765 c!758315) b!4454371))

(assert (= (and d!1358765 (not c!758315)) b!4454366))

(assert (= (and b!4454371 c!758314) b!4454365))

(assert (= (and b!4454371 (not c!758314)) b!4454368))

(assert (= (and b!4454371 c!758316) b!4454372))

(assert (= (and b!4454371 (not c!758316)) b!4454364))

(assert (= (and d!1358765 res!1846240) b!4454367))

(assert (= (and b!4454367 res!1846241) b!4454370))

(assert (= (and b!4454370 res!1846242) b!4454369))

(declare-fun m!5155433 () Bool)

(assert (=> b!4454370 m!5155433))

(declare-fun m!5155435 () Bool)

(assert (=> b!4454371 m!5155435))

(declare-fun m!5155437 () Bool)

(assert (=> b!4454371 m!5155437))

(assert (=> b!4454371 m!5155435))

(declare-fun m!5155439 () Bool)

(assert (=> b!4454371 m!5155439))

(declare-fun m!5155441 () Bool)

(assert (=> b!4454371 m!5155441))

(declare-fun m!5155443 () Bool)

(assert (=> b!4454371 m!5155443))

(assert (=> b!4454372 m!5155435))

(assert (=> b!4454372 m!5155435))

(declare-fun m!5155445 () Bool)

(assert (=> b!4454372 m!5155445))

(declare-fun m!5155447 () Bool)

(assert (=> b!4454369 m!5155447))

(declare-fun m!5155449 () Bool)

(assert (=> b!4454369 m!5155449))

(assert (=> b!4454369 m!5155449))

(declare-fun m!5155451 () Bool)

(assert (=> b!4454369 m!5155451))

(declare-fun m!5155453 () Bool)

(assert (=> d!1358765 m!5155453))

(declare-fun m!5155455 () Bool)

(assert (=> d!1358765 m!5155455))

(declare-fun m!5155457 () Bool)

(assert (=> b!4454367 m!5155457))

(declare-fun m!5155459 () Bool)

(assert (=> b!4454367 m!5155459))

(assert (=> b!4454088 d!1358765))

(declare-fun d!1358767 () Bool)

(declare-fun lt!1646015 () Bool)

(assert (=> d!1358767 (= lt!1646015 (select (content!8039 (keys!17145 lt!1645568)) key!4369))))

(declare-fun e!2773764 () Bool)

(assert (=> d!1358767 (= lt!1646015 e!2773764)))

(declare-fun res!1846248 () Bool)

(assert (=> d!1358767 (=> (not res!1846248) (not e!2773764))))

(assert (=> d!1358767 (= res!1846248 ((_ is Cons!49941) (keys!17145 lt!1645568)))))

(assert (=> d!1358767 (= (contains!12507 (keys!17145 lt!1645568) key!4369) lt!1646015)))

(declare-fun b!4454379 () Bool)

(declare-fun e!2773763 () Bool)

(assert (=> b!4454379 (= e!2773764 e!2773763)))

(declare-fun res!1846247 () Bool)

(assert (=> b!4454379 (=> res!1846247 e!2773763)))

(assert (=> b!4454379 (= res!1846247 (= (h!55686 (keys!17145 lt!1645568)) key!4369))))

(declare-fun b!4454380 () Bool)

(assert (=> b!4454380 (= e!2773763 (contains!12507 (t!357015 (keys!17145 lt!1645568)) key!4369))))

(assert (= (and d!1358767 res!1846248) b!4454379))

(assert (= (and b!4454379 (not res!1846247)) b!4454380))

(assert (=> d!1358767 m!5154853))

(declare-fun m!5155461 () Bool)

(assert (=> d!1358767 m!5155461))

(declare-fun m!5155463 () Bool)

(assert (=> d!1358767 m!5155463))

(declare-fun m!5155465 () Bool)

(assert (=> b!4454380 m!5155465))

(assert (=> b!4454089 d!1358767))

(declare-fun bs!790370 () Bool)

(declare-fun b!4454388 () Bool)

(assert (= bs!790370 (and b!4454388 b!4454372)))

(declare-fun lambda!159742 () Int)

(assert (=> bs!790370 (= (= (toList!3778 lt!1645568) (t!357012 (toList!3778 lt!1645568))) (= lambda!159742 lambda!159734))))

(declare-fun bs!790371 () Bool)

(assert (= bs!790371 (and b!4454388 b!4454371)))

(assert (=> bs!790371 (= (= (toList!3778 lt!1645568) (Cons!49938 (h!55683 (toList!3778 lt!1645568)) (t!357012 (toList!3778 lt!1645568)))) (= lambda!159742 lambda!159735))))

(declare-fun bs!790372 () Bool)

(assert (= bs!790372 (and b!4454388 b!4454370)))

(assert (=> bs!790372 (= lambda!159742 lambda!159736)))

(assert (=> b!4454388 true))

(declare-fun bs!790373 () Bool)

(declare-fun b!4454389 () Bool)

(assert (= bs!790373 (and b!4454389 b!4454369)))

(declare-fun lambda!159743 () Int)

(assert (=> bs!790373 (= lambda!159743 lambda!159737)))

(declare-fun d!1358769 () Bool)

(declare-fun e!2773767 () Bool)

(assert (=> d!1358769 e!2773767))

(declare-fun res!1846257 () Bool)

(assert (=> d!1358769 (=> (not res!1846257) (not e!2773767))))

(declare-fun lt!1646018 () List!50065)

(assert (=> d!1358769 (= res!1846257 (noDuplicate!686 lt!1646018))))

(assert (=> d!1358769 (= lt!1646018 (getKeysList!313 (toList!3778 lt!1645568)))))

(assert (=> d!1358769 (= (keys!17145 lt!1645568) lt!1646018)))

(declare-fun b!4454387 () Bool)

(declare-fun res!1846256 () Bool)

(assert (=> b!4454387 (=> (not res!1846256) (not e!2773767))))

(assert (=> b!4454387 (= res!1846256 (= (length!228 lt!1646018) (length!229 (toList!3778 lt!1645568))))))

(declare-fun res!1846255 () Bool)

(assert (=> b!4454388 (=> (not res!1846255) (not e!2773767))))

(assert (=> b!4454388 (= res!1846255 (forall!9797 lt!1646018 lambda!159742))))

(assert (=> b!4454389 (= e!2773767 (= (content!8039 lt!1646018) (content!8039 (map!10932 (toList!3778 lt!1645568) lambda!159743))))))

(assert (= (and d!1358769 res!1846257) b!4454387))

(assert (= (and b!4454387 res!1846256) b!4454388))

(assert (= (and b!4454388 res!1846255) b!4454389))

(declare-fun m!5155467 () Bool)

(assert (=> d!1358769 m!5155467))

(assert (=> d!1358769 m!5154865))

(declare-fun m!5155469 () Bool)

(assert (=> b!4454387 m!5155469))

(assert (=> b!4454387 m!5155459))

(declare-fun m!5155471 () Bool)

(assert (=> b!4454388 m!5155471))

(declare-fun m!5155473 () Bool)

(assert (=> b!4454389 m!5155473))

(declare-fun m!5155475 () Bool)

(assert (=> b!4454389 m!5155475))

(assert (=> b!4454389 m!5155475))

(declare-fun m!5155477 () Bool)

(assert (=> b!4454389 m!5155477))

(assert (=> b!4454089 d!1358769))

(declare-fun d!1358771 () Bool)

(declare-fun lt!1646019 () Bool)

(assert (=> d!1358771 (= lt!1646019 (select (content!8039 e!2773571) key!4369))))

(declare-fun e!2773769 () Bool)

(assert (=> d!1358771 (= lt!1646019 e!2773769)))

(declare-fun res!1846259 () Bool)

(assert (=> d!1358771 (=> (not res!1846259) (not e!2773769))))

(assert (=> d!1358771 (= res!1846259 ((_ is Cons!49941) e!2773571))))

(assert (=> d!1358771 (= (contains!12507 e!2773571 key!4369) lt!1646019)))

(declare-fun b!4454392 () Bool)

(declare-fun e!2773768 () Bool)

(assert (=> b!4454392 (= e!2773769 e!2773768)))

(declare-fun res!1846258 () Bool)

(assert (=> b!4454392 (=> res!1846258 e!2773768)))

(assert (=> b!4454392 (= res!1846258 (= (h!55686 e!2773571) key!4369))))

(declare-fun b!4454393 () Bool)

(assert (=> b!4454393 (= e!2773768 (contains!12507 (t!357015 e!2773571) key!4369))))

(assert (= (and d!1358771 res!1846259) b!4454392))

(assert (= (and b!4454392 (not res!1846258)) b!4454393))

(declare-fun m!5155479 () Bool)

(assert (=> d!1358771 m!5155479))

(declare-fun m!5155481 () Bool)

(assert (=> d!1358771 m!5155481))

(declare-fun m!5155483 () Bool)

(assert (=> b!4454393 m!5155483))

(assert (=> bm!309949 d!1358771))

(declare-fun d!1358773 () Bool)

(declare-fun res!1846264 () Bool)

(declare-fun e!2773774 () Bool)

(assert (=> d!1358773 (=> res!1846264 e!2773774)))

(assert (=> d!1358773 (= res!1846264 (or ((_ is Nil!49939) (toList!3777 lm!1837)) ((_ is Nil!49939) (t!357013 (toList!3777 lm!1837)))))))

(assert (=> d!1358773 (= (isStrictlySorted!295 (toList!3777 lm!1837)) e!2773774)))

(declare-fun b!4454398 () Bool)

(declare-fun e!2773775 () Bool)

(assert (=> b!4454398 (= e!2773774 e!2773775)))

(declare-fun res!1846265 () Bool)

(assert (=> b!4454398 (=> (not res!1846265) (not e!2773775))))

(assert (=> b!4454398 (= res!1846265 (bvslt (_1!28278 (h!55684 (toList!3777 lm!1837))) (_1!28278 (h!55684 (t!357013 (toList!3777 lm!1837))))))))

(declare-fun b!4454399 () Bool)

(assert (=> b!4454399 (= e!2773775 (isStrictlySorted!295 (t!357013 (toList!3777 lm!1837))))))

(assert (= (and d!1358773 (not res!1846264)) b!4454398))

(assert (= (and b!4454398 res!1846265) b!4454399))

(declare-fun m!5155485 () Bool)

(assert (=> b!4454399 m!5155485))

(assert (=> d!1358617 d!1358773))

(declare-fun d!1358775 () Bool)

(assert (=> d!1358775 (= (invariantList!867 (toList!3778 lt!1645574)) (noDuplicatedKeys!201 (toList!3778 lt!1645574)))))

(declare-fun bs!790374 () Bool)

(assert (= bs!790374 d!1358775))

(declare-fun m!5155487 () Bool)

(assert (=> bs!790374 m!5155487))

(assert (=> d!1358591 d!1358775))

(declare-fun d!1358777 () Bool)

(declare-fun res!1846266 () Bool)

(declare-fun e!2773776 () Bool)

(assert (=> d!1358777 (=> res!1846266 e!2773776)))

(assert (=> d!1358777 (= res!1846266 ((_ is Nil!49939) (toList!3777 lm!1837)))))

(assert (=> d!1358777 (= (forall!9793 (toList!3777 lm!1837) lambda!159594) e!2773776)))

(declare-fun b!4454400 () Bool)

(declare-fun e!2773777 () Bool)

(assert (=> b!4454400 (= e!2773776 e!2773777)))

(declare-fun res!1846267 () Bool)

(assert (=> b!4454400 (=> (not res!1846267) (not e!2773777))))

(assert (=> b!4454400 (= res!1846267 (dynLambda!20954 lambda!159594 (h!55684 (toList!3777 lm!1837))))))

(declare-fun b!4454401 () Bool)

(assert (=> b!4454401 (= e!2773777 (forall!9793 (t!357013 (toList!3777 lm!1837)) lambda!159594))))

(assert (= (and d!1358777 (not res!1846266)) b!4454400))

(assert (= (and b!4454400 res!1846267) b!4454401))

(declare-fun b_lambda!147453 () Bool)

(assert (=> (not b_lambda!147453) (not b!4454400)))

(declare-fun m!5155489 () Bool)

(assert (=> b!4454400 m!5155489))

(declare-fun m!5155491 () Bool)

(assert (=> b!4454401 m!5155491))

(assert (=> d!1358591 d!1358777))

(assert (=> b!4454091 d!1358769))

(assert (=> b!4454092 d!1358767))

(assert (=> b!4454092 d!1358769))

(declare-fun d!1358779 () Bool)

(assert (=> d!1358779 (= (tail!7462 (toList!3777 lm!1837)) (t!357013 (toList!3777 lm!1837)))))

(assert (=> d!1358613 d!1358779))

(assert (=> b!4454094 d!1358707))

(declare-fun d!1358781 () Bool)

(assert (=> d!1358781 (containsKey!1305 (toList!3778 lt!1645568) key!4369)))

(declare-fun lt!1646022 () Unit!85733)

(declare-fun choose!28359 (List!50062 K!11315) Unit!85733)

(assert (=> d!1358781 (= lt!1646022 (choose!28359 (toList!3778 lt!1645568) key!4369))))

(assert (=> d!1358781 (invariantList!867 (toList!3778 lt!1645568))))

(assert (=> d!1358781 (= (lemmaInGetKeysListThenContainsKey!311 (toList!3778 lt!1645568) key!4369) lt!1646022)))

(declare-fun bs!790375 () Bool)

(assert (= bs!790375 d!1358781))

(assert (=> bs!790375 m!5154849))

(declare-fun m!5155493 () Bool)

(assert (=> bs!790375 m!5155493))

(assert (=> bs!790375 m!5155455))

(assert (=> b!4454094 d!1358781))

(declare-fun d!1358783 () Bool)

(assert (=> d!1358783 (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645568) key!4369))))

(declare-fun lt!1646025 () Unit!85733)

(declare-fun choose!28360 (List!50062 K!11315) Unit!85733)

(assert (=> d!1358783 (= lt!1646025 (choose!28360 (toList!3778 lt!1645568) key!4369))))

(assert (=> d!1358783 (invariantList!867 (toList!3778 lt!1645568))))

(assert (=> d!1358783 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!736 (toList!3778 lt!1645568) key!4369) lt!1646025)))

(declare-fun bs!790376 () Bool)

(assert (= bs!790376 d!1358783))

(assert (=> bs!790376 m!5154857))

(assert (=> bs!790376 m!5154857))

(assert (=> bs!790376 m!5154859))

(declare-fun m!5155495 () Bool)

(assert (=> bs!790376 m!5155495))

(assert (=> bs!790376 m!5155455))

(assert (=> b!4454095 d!1358783))

(declare-fun d!1358785 () Bool)

(declare-fun isEmpty!28443 (Option!10845) Bool)

(assert (=> d!1358785 (= (isDefined!8133 (getValueByKey!831 (toList!3778 lt!1645568) key!4369)) (not (isEmpty!28443 (getValueByKey!831 (toList!3778 lt!1645568) key!4369))))))

(declare-fun bs!790377 () Bool)

(assert (= bs!790377 d!1358785))

(assert (=> bs!790377 m!5154857))

(declare-fun m!5155497 () Bool)

(assert (=> bs!790377 m!5155497))

(assert (=> b!4454095 d!1358785))

(declare-fun b!4454410 () Bool)

(declare-fun e!2773782 () Option!10845)

(assert (=> b!4454410 (= e!2773782 (Some!10844 (_2!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun d!1358787 () Bool)

(declare-fun c!758321 () Bool)

(assert (=> d!1358787 (= c!758321 (and ((_ is Cons!49938) (toList!3778 lt!1645568)) (= (_1!28277 (h!55683 (toList!3778 lt!1645568))) key!4369)))))

(assert (=> d!1358787 (= (getValueByKey!831 (toList!3778 lt!1645568) key!4369) e!2773782)))

(declare-fun b!4454413 () Bool)

(declare-fun e!2773783 () Option!10845)

(assert (=> b!4454413 (= e!2773783 None!10844)))

(declare-fun b!4454411 () Bool)

(assert (=> b!4454411 (= e!2773782 e!2773783)))

(declare-fun c!758322 () Bool)

(assert (=> b!4454411 (= c!758322 (and ((_ is Cons!49938) (toList!3778 lt!1645568)) (not (= (_1!28277 (h!55683 (toList!3778 lt!1645568))) key!4369))))))

(declare-fun b!4454412 () Bool)

(assert (=> b!4454412 (= e!2773783 (getValueByKey!831 (t!357012 (toList!3778 lt!1645568)) key!4369))))

(assert (= (and d!1358787 c!758321) b!4454410))

(assert (= (and d!1358787 (not c!758321)) b!4454411))

(assert (= (and b!4454411 c!758322) b!4454412))

(assert (= (and b!4454411 (not c!758322)) b!4454413))

(declare-fun m!5155499 () Bool)

(assert (=> b!4454412 m!5155499))

(assert (=> b!4454095 d!1358787))

(declare-fun d!1358789 () Bool)

(assert (=> d!1358789 (contains!12507 (getKeysList!313 (toList!3778 lt!1645568)) key!4369)))

(declare-fun lt!1646028 () Unit!85733)

(declare-fun choose!28361 (List!50062 K!11315) Unit!85733)

(assert (=> d!1358789 (= lt!1646028 (choose!28361 (toList!3778 lt!1645568) key!4369))))

(assert (=> d!1358789 (invariantList!867 (toList!3778 lt!1645568))))

(assert (=> d!1358789 (= (lemmaInListThenGetKeysListContains!310 (toList!3778 lt!1645568) key!4369) lt!1646028)))

(declare-fun bs!790378 () Bool)

(assert (= bs!790378 d!1358789))

(assert (=> bs!790378 m!5154865))

(assert (=> bs!790378 m!5154865))

(declare-fun m!5155501 () Bool)

(assert (=> bs!790378 m!5155501))

(declare-fun m!5155503 () Bool)

(assert (=> bs!790378 m!5155503))

(assert (=> bs!790378 m!5155455))

(assert (=> b!4454095 d!1358789))

(declare-fun d!1358791 () Bool)

(declare-fun res!1846268 () Bool)

(declare-fun e!2773784 () Bool)

(assert (=> d!1358791 (=> res!1846268 e!2773784)))

(assert (=> d!1358791 (= res!1846268 ((_ is Nil!49938) (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> d!1358791 (= (forall!9795 (_2!28278 (h!55684 (toList!3777 lm!1837))) lambda!159659) e!2773784)))

(declare-fun b!4454414 () Bool)

(declare-fun e!2773785 () Bool)

(assert (=> b!4454414 (= e!2773784 e!2773785)))

(declare-fun res!1846269 () Bool)

(assert (=> b!4454414 (=> (not res!1846269) (not e!2773785))))

(assert (=> b!4454414 (= res!1846269 (dynLambda!20956 lambda!159659 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(declare-fun b!4454415 () Bool)

(assert (=> b!4454415 (= e!2773785 (forall!9795 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) lambda!159659))))

(assert (= (and d!1358791 (not res!1846268)) b!4454414))

(assert (= (and b!4454414 res!1846269) b!4454415))

(declare-fun b_lambda!147455 () Bool)

(assert (=> (not b_lambda!147455) (not b!4454414)))

(declare-fun m!5155505 () Bool)

(assert (=> b!4454414 m!5155505))

(declare-fun m!5155507 () Bool)

(assert (=> b!4454415 m!5155507))

(assert (=> d!1358595 d!1358791))

(declare-fun d!1358793 () Bool)

(declare-fun res!1846274 () Bool)

(declare-fun e!2773790 () Bool)

(assert (=> d!1358793 (=> res!1846274 e!2773790)))

(assert (=> d!1358793 (= res!1846274 (not ((_ is Cons!49938) (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (=> d!1358793 (= (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 lm!1837)))) e!2773790)))

(declare-fun b!4454420 () Bool)

(declare-fun e!2773791 () Bool)

(assert (=> b!4454420 (= e!2773790 e!2773791)))

(declare-fun res!1846275 () Bool)

(assert (=> b!4454420 (=> (not res!1846275) (not e!2773791))))

(declare-fun containsKey!1307 (List!50062 K!11315) Bool)

(assert (=> b!4454420 (= res!1846275 (not (containsKey!1307 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))) (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun b!4454421 () Bool)

(assert (=> b!4454421 (= e!2773791 (noDuplicateKeys!886 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))

(assert (= (and d!1358793 (not res!1846274)) b!4454420))

(assert (= (and b!4454420 res!1846275) b!4454421))

(declare-fun m!5155509 () Bool)

(assert (=> b!4454420 m!5155509))

(assert (=> b!4454421 m!5155381))

(assert (=> d!1358595 d!1358793))

(assert (=> b!4454096 d!1358785))

(assert (=> b!4454096 d!1358787))

(declare-fun d!1358795 () Bool)

(assert (=> d!1358795 (= (invariantList!867 (toList!3778 lt!1645750)) (noDuplicatedKeys!201 (toList!3778 lt!1645750)))))

(declare-fun bs!790379 () Bool)

(assert (= bs!790379 d!1358795))

(declare-fun m!5155511 () Bool)

(assert (=> bs!790379 m!5155511))

(assert (=> d!1358611 d!1358795))

(declare-fun d!1358797 () Bool)

(declare-fun res!1846276 () Bool)

(declare-fun e!2773792 () Bool)

(assert (=> d!1358797 (=> res!1846276 e!2773792)))

(assert (=> d!1358797 (= res!1846276 ((_ is Nil!49939) (toList!3777 (tail!7460 lm!1837))))))

(assert (=> d!1358797 (= (forall!9793 (toList!3777 (tail!7460 lm!1837)) lambda!159660) e!2773792)))

(declare-fun b!4454422 () Bool)

(declare-fun e!2773793 () Bool)

(assert (=> b!4454422 (= e!2773792 e!2773793)))

(declare-fun res!1846277 () Bool)

(assert (=> b!4454422 (=> (not res!1846277) (not e!2773793))))

(assert (=> b!4454422 (= res!1846277 (dynLambda!20954 lambda!159660 (h!55684 (toList!3777 (tail!7460 lm!1837)))))))

(declare-fun b!4454423 () Bool)

(assert (=> b!4454423 (= e!2773793 (forall!9793 (t!357013 (toList!3777 (tail!7460 lm!1837))) lambda!159660))))

(assert (= (and d!1358797 (not res!1846276)) b!4454422))

(assert (= (and b!4454422 res!1846277) b!4454423))

(declare-fun b_lambda!147457 () Bool)

(assert (=> (not b_lambda!147457) (not b!4454422)))

(declare-fun m!5155513 () Bool)

(assert (=> b!4454422 m!5155513))

(declare-fun m!5155515 () Bool)

(assert (=> b!4454423 m!5155515))

(assert (=> d!1358611 d!1358797))

(declare-fun d!1358799 () Bool)

(declare-fun res!1846278 () Bool)

(declare-fun e!2773794 () Bool)

(assert (=> d!1358799 (=> res!1846278 e!2773794)))

(assert (=> d!1358799 (= res!1846278 ((_ is Nil!49939) (toList!3777 lm!1837)))))

(assert (=> d!1358799 (= (forall!9793 (toList!3777 lm!1837) lambda!159663) e!2773794)))

(declare-fun b!4454424 () Bool)

(declare-fun e!2773795 () Bool)

(assert (=> b!4454424 (= e!2773794 e!2773795)))

(declare-fun res!1846279 () Bool)

(assert (=> b!4454424 (=> (not res!1846279) (not e!2773795))))

(assert (=> b!4454424 (= res!1846279 (dynLambda!20954 lambda!159663 (h!55684 (toList!3777 lm!1837))))))

(declare-fun b!4454425 () Bool)

(assert (=> b!4454425 (= e!2773795 (forall!9793 (t!357013 (toList!3777 lm!1837)) lambda!159663))))

(assert (= (and d!1358799 (not res!1846278)) b!4454424))

(assert (= (and b!4454424 res!1846279) b!4454425))

(declare-fun b_lambda!147459 () Bool)

(assert (=> (not b_lambda!147459) (not b!4454424)))

(declare-fun m!5155517 () Bool)

(assert (=> b!4454424 m!5155517))

(declare-fun m!5155519 () Bool)

(assert (=> b!4454425 m!5155519))

(assert (=> d!1358619 d!1358799))

(assert (=> bs!790143 d!1358793))

(declare-fun b!4454430 () Bool)

(declare-fun tp_is_empty!26779 () Bool)

(declare-fun tp!1334791 () Bool)

(declare-fun e!2773798 () Bool)

(assert (=> b!4454430 (= e!2773798 (and tp_is_empty!26775 tp_is_empty!26779 tp!1334791))))

(assert (=> b!4454111 (= tp!1334782 e!2773798)))

(assert (= (and b!4454111 ((_ is Cons!49938) (_2!28278 (h!55684 (toList!3777 lm!1837))))) b!4454430))

(declare-fun b!4454431 () Bool)

(declare-fun e!2773799 () Bool)

(declare-fun tp!1334792 () Bool)

(declare-fun tp!1334793 () Bool)

(assert (=> b!4454431 (= e!2773799 (and tp!1334792 tp!1334793))))

(assert (=> b!4454111 (= tp!1334783 e!2773799)))

(assert (= (and b!4454111 ((_ is Cons!49939) (t!357013 (toList!3777 lm!1837)))) b!4454431))

(declare-fun b_lambda!147461 () Bool)

(assert (= b_lambda!147417 (or b!4454065 b_lambda!147461)))

(declare-fun bs!790380 () Bool)

(declare-fun d!1358801 () Bool)

(assert (= bs!790380 (and d!1358801 b!4454065)))

(assert (=> bs!790380 (= (dynLambda!20956 lambda!159658 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (contains!12505 lt!1645709 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(assert (=> bs!790380 m!5154821))

(assert (=> b!4454298 d!1358801))

(declare-fun b_lambda!147463 () Bool)

(assert (= b_lambda!147455 (or d!1358595 b_lambda!147463)))

(declare-fun bs!790381 () Bool)

(declare-fun d!1358803 () Bool)

(assert (= bs!790381 (and d!1358803 d!1358595)))

(assert (=> bs!790381 (= (dynLambda!20956 lambda!159659 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837))))) (contains!12505 lt!1645717 (_1!28277 (h!55683 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))))

(declare-fun m!5155521 () Bool)

(assert (=> bs!790381 m!5155521))

(assert (=> b!4454414 d!1358803))

(declare-fun b_lambda!147465 () Bool)

(assert (= b_lambda!147419 (or b!4454065 b_lambda!147465)))

(assert (=> d!1358719 d!1358801))

(declare-fun b_lambda!147467 () Bool)

(assert (= b_lambda!147421 (or b!4454065 b_lambda!147467)))

(declare-fun bs!790382 () Bool)

(declare-fun d!1358805 () Bool)

(assert (= bs!790382 (and d!1358805 b!4454065)))

(assert (=> bs!790382 (= (dynLambda!20956 lambda!159658 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837)))))) (contains!12505 lt!1645709 (_1!28277 (h!55683 (t!357012 (_2!28278 (h!55684 (toList!3777 lm!1837))))))))))

(declare-fun m!5155523 () Bool)

(assert (=> bs!790382 m!5155523))

(assert (=> b!4454303 d!1358805))

(declare-fun b_lambda!147469 () Bool)

(assert (= b_lambda!147457 (or d!1358611 b_lambda!147469)))

(declare-fun bs!790383 () Bool)

(declare-fun d!1358807 () Bool)

(assert (= bs!790383 (and d!1358807 d!1358611)))

(assert (=> bs!790383 (= (dynLambda!20954 lambda!159660 (h!55684 (toList!3777 (tail!7460 lm!1837)))) (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 (tail!7460 lm!1837))))))))

(assert (=> bs!790383 m!5155133))

(assert (=> b!4454422 d!1358807))

(declare-fun b_lambda!147471 () Bool)

(assert (= b_lambda!147453 (or d!1358591 b_lambda!147471)))

(declare-fun bs!790384 () Bool)

(declare-fun d!1358809 () Bool)

(assert (= bs!790384 (and d!1358809 d!1358591)))

(assert (=> bs!790384 (= (dynLambda!20954 lambda!159594 (h!55684 (toList!3777 lm!1837))) (noDuplicateKeys!886 (_2!28278 (h!55684 (toList!3777 lm!1837)))))))

(assert (=> bs!790384 m!5154843))

(assert (=> b!4454400 d!1358809))

(declare-fun b_lambda!147473 () Bool)

(assert (= b_lambda!147413 (or d!1358595 b_lambda!147473)))

(declare-fun bs!790385 () Bool)

(declare-fun d!1358811 () Bool)

(assert (= bs!790385 (and d!1358811 d!1358595)))

(assert (=> bs!790385 (= (dynLambda!20956 lambda!159659 (h!55683 (toList!3778 lt!1645568))) (contains!12505 lt!1645717 (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun m!5155525 () Bool)

(assert (=> bs!790385 m!5155525))

(assert (=> b!4454267 d!1358811))

(declare-fun b_lambda!147475 () Bool)

(assert (= b_lambda!147449 (or b!4454065 b_lambda!147475)))

(declare-fun bs!790386 () Bool)

(declare-fun d!1358813 () Bool)

(assert (= bs!790386 (and d!1358813 b!4454065)))

(assert (=> bs!790386 (= (dynLambda!20956 lambda!159657 (h!55683 (toList!3778 lt!1645568))) (contains!12505 lt!1645568 (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun m!5155527 () Bool)

(assert (=> bs!790386 m!5155527))

(assert (=> b!4454327 d!1358813))

(declare-fun b_lambda!147477 () Bool)

(assert (= b_lambda!147459 (or d!1358619 b_lambda!147477)))

(declare-fun bs!790387 () Bool)

(declare-fun d!1358815 () Bool)

(assert (= bs!790387 (and d!1358815 d!1358619)))

(declare-fun allKeysSameHash!832 (List!50062 (_ BitVec 64) Hashable!5291) Bool)

(assert (=> bs!790387 (= (dynLambda!20954 lambda!159663 (h!55684 (toList!3777 lm!1837))) (allKeysSameHash!832 (_2!28278 (h!55684 (toList!3777 lm!1837))) (_1!28278 (h!55684 (toList!3777 lm!1837))) hashF!1304))))

(declare-fun m!5155529 () Bool)

(assert (=> bs!790387 m!5155529))

(assert (=> b!4454424 d!1358815))

(declare-fun b_lambda!147479 () Bool)

(assert (= b_lambda!147423 (or b!4454065 b_lambda!147479)))

(declare-fun bs!790388 () Bool)

(declare-fun d!1358817 () Bool)

(assert (= bs!790388 (and d!1358817 b!4454065)))

(assert (=> bs!790388 (= (dynLambda!20956 lambda!159658 (h!55683 (toList!3778 lt!1645718))) (contains!12505 lt!1645709 (_1!28277 (h!55683 (toList!3778 lt!1645718)))))))

(declare-fun m!5155531 () Bool)

(assert (=> bs!790388 m!5155531))

(assert (=> b!4454305 d!1358817))

(declare-fun b_lambda!147481 () Bool)

(assert (= b_lambda!147403 (or start!436288 b_lambda!147481)))

(declare-fun bs!790389 () Bool)

(declare-fun d!1358819 () Bool)

(assert (= bs!790389 (and d!1358819 start!436288)))

(assert (=> bs!790389 (= (dynLambda!20954 lambda!159585 (h!55684 (t!357013 (toList!3777 lm!1837)))) (noDuplicateKeys!886 (_2!28278 (h!55684 (t!357013 (toList!3777 lm!1837))))))))

(declare-fun m!5155533 () Bool)

(assert (=> bs!790389 m!5155533))

(assert (=> b!4454232 d!1358819))

(declare-fun b_lambda!147483 () Bool)

(assert (= b_lambda!147451 (or b!4454065 b_lambda!147483)))

(declare-fun bs!790390 () Bool)

(declare-fun d!1358821 () Bool)

(assert (= bs!790390 (and d!1358821 b!4454065)))

(assert (=> bs!790390 (= (dynLambda!20956 lambda!159658 (h!55683 (toList!3778 lt!1645568))) (contains!12505 lt!1645709 (_1!28277 (h!55683 (toList!3778 lt!1645568)))))))

(declare-fun m!5155535 () Bool)

(assert (=> bs!790390 m!5155535))

(assert (=> b!4454344 d!1358821))

(check-sat (not b!4454296) (not d!1358675) (not b!4454431) (not b!4454333) (not b!4454214) (not d!1358769) (not b!4454412) (not bs!790390) (not b!4454328) (not b!4454421) (not d!1358775) (not b!4454304) (not d!1358789) (not b!4454401) (not bs!790388) (not d!1358755) (not b!4454213) (not b!4454295) (not d!1358705) (not d!1358767) (not b!4454369) (not b!4454389) (not b!4454233) (not bm!309958) (not b!4454247) (not bs!790387) (not b!4454338) (not bm!309969) (not b!4454268) (not b!4454339) (not b!4454265) (not b!4454367) (not bm!309967) (not d!1358771) (not b!4454309) (not d!1358697) (not b!4454425) (not b!4454334) (not b!4454335) (not b!4454336) (not d!1358725) (not b!4454423) (not d!1358795) (not b_lambda!147481) (not d!1358781) (not bm!309957) tp_is_empty!26775 (not b!4454241) (not d!1358719) (not bs!790389) (not bs!790385) (not b!4454306) (not b_lambda!147471) (not b_lambda!147461) (not b!4454372) tp_is_empty!26779 (not bs!790381) (not b!4454297) (not b!4454342) (not b!4454230) (not bs!790386) (not b!4454293) (not b!4454430) (not b!4454289) (not b!4454370) (not b!4454399) (not bm!309962) (not b!4454307) (not b!4454345) (not b!4454388) (not b_lambda!147415) (not b_lambda!147483) (not bm!309961) (not bs!790380) (not b_lambda!147407) (not b_lambda!147383) (not b_lambda!147479) (not b!4454302) (not d!1358761) (not d!1358765) (not b!4454288) (not b!4454420) (not d!1358687) (not b_lambda!147475) (not d!1358759) (not b!4454343) (not b!4454246) (not bs!790382) (not bs!790383) (not b_lambda!147467) (not b_lambda!147469) (not d!1358693) (not b_lambda!147473) (not d!1358785) (not bm!309971) (not bm!309960) (not d!1358783) (not b_lambda!147465) (not b_lambda!147477) (not b!4454415) (not b!4454292) (not bm!309970) (not bm!309956) (not bs!790384) (not b!4454286) (not b!4454290) (not b!4454308) (not b!4454380) (not b_lambda!147463) (not b!4454371) (not b!4454215) (not b!4454299) (not b!4454393) (not b!4454248) (not b!4454341) (not b!4454387) (not bm!309968) (not d!1358669) (not d!1358713))
(check-sat)
