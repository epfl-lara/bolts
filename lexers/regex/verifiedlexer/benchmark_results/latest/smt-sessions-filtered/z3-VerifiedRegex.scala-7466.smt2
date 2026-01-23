; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396022 () Bool)

(assert start!396022)

(declare-fun b!4158022 () Bool)

(declare-fun res!1703074 () Bool)

(declare-fun e!2580566 () Bool)

(assert (=> b!4158022 (=> (not res!1703074) (not e!2580566))))

(declare-datatypes ((B!2641 0))(
  ( (B!2642 (val!14612 Int)) )
))
(declare-fun e1!32 () B!2641)

(declare-fun e2!32 () B!2641)

(assert (=> b!4158022 (= res!1703074 (not (= e1!32 e2!32)))))

(declare-fun b!4158023 () Bool)

(declare-fun res!1703071 () Bool)

(declare-fun e!2580564 () Bool)

(assert (=> b!4158023 (=> res!1703071 e!2580564)))

(declare-datatypes ((List!45489 0))(
  ( (Nil!45365) (Cons!45365 (h!50785 B!2641) (t!343520 List!45489)) )
))
(declare-fun l!3062 () List!45489)

(declare-fun contains!9223 (List!45489 B!2641) Bool)

(assert (=> b!4158023 (= res!1703071 (not (contains!9223 (t!343520 l!3062) e2!32)))))

(declare-fun b!4158024 () Bool)

(declare-fun res!1703075 () Bool)

(assert (=> b!4158024 (=> (not res!1703075) (not e!2580566))))

(assert (=> b!4158024 (= res!1703075 (contains!9223 l!3062 e2!32))))

(declare-fun b!4158025 () Bool)

(declare-fun e!2580563 () Bool)

(assert (=> b!4158025 (= e!2580563 (not e!2580564))))

(declare-fun res!1703076 () Bool)

(assert (=> b!4158025 (=> res!1703076 e!2580564)))

(assert (=> b!4158025 (= res!1703076 (not (contains!9223 (t!343520 l!3062) e1!32)))))

(declare-fun lt!1481979 () Int)

(declare-fun lt!1481973 () List!45489)

(declare-fun getIndex!844 (List!45489 B!2641) Int)

(assert (=> b!4158025 (= lt!1481979 (+ 1 (getIndex!844 lt!1481973 e2!32)))))

(declare-datatypes ((Unit!64521 0))(
  ( (Unit!64522) )
))
(declare-fun lt!1481975 () Unit!64521)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!4 (List!45489 B!2641) Unit!64521)

(assert (=> b!4158025 (= lt!1481975 (lemmaNotHeadSoGetIndexTailIsMinusOne!4 l!3062 e2!32))))

(declare-fun lt!1481976 () Int)

(assert (=> b!4158025 (= lt!1481976 (+ 1 (getIndex!844 lt!1481973 e1!32)))))

(declare-fun lt!1481980 () Unit!64521)

(assert (=> b!4158025 (= lt!1481980 (lemmaNotHeadSoGetIndexTailIsMinusOne!4 l!3062 e1!32))))

(assert (=> b!4158025 (contains!9223 lt!1481973 e1!32)))

(declare-fun tail!6655 (List!45489) List!45489)

(assert (=> b!4158025 (= lt!1481973 (tail!6655 l!3062))))

(declare-fun lt!1481977 () Unit!64521)

(declare-fun lemmaContainsAndNotHdThenTlContains!6 (List!45489 B!2641) Unit!64521)

(assert (=> b!4158025 (= lt!1481977 (lemmaContainsAndNotHdThenTlContains!6 l!3062 e1!32))))

(declare-fun b!4158027 () Bool)

(assert (=> b!4158027 (= e!2580566 e!2580563)))

(declare-fun res!1703072 () Bool)

(assert (=> b!4158027 (=> (not res!1703072) (not e!2580563))))

(get-info :version)

(assert (=> b!4158027 (= res!1703072 (and (< lt!1481976 lt!1481979) (or (not ((_ is Cons!45365) l!3062)) (not (= (h!50785 l!3062) e1!32))) ((_ is Cons!45365) l!3062) (not (= (h!50785 l!3062) e1!32))))))

(assert (=> b!4158027 (= lt!1481979 (getIndex!844 l!3062 e2!32))))

(assert (=> b!4158027 (= lt!1481976 (getIndex!844 l!3062 e1!32))))

(declare-fun b!4158028 () Bool)

(assert (=> b!4158028 (= e!2580564 true)))

(declare-fun lt!1481974 () Int)

(assert (=> b!4158028 (= lt!1481974 (getIndex!844 (t!343520 l!3062) e2!32))))

(declare-fun lt!1481978 () Int)

(assert (=> b!4158028 (= lt!1481978 (getIndex!844 (t!343520 l!3062) e1!32))))

(declare-fun res!1703073 () Bool)

(assert (=> start!396022 (=> (not res!1703073) (not e!2580566))))

(assert (=> start!396022 (= res!1703073 (contains!9223 l!3062 e1!32))))

(assert (=> start!396022 e!2580566))

(declare-fun e!2580565 () Bool)

(assert (=> start!396022 e!2580565))

(declare-fun tp_is_empty!21689 () Bool)

(assert (=> start!396022 tp_is_empty!21689))

(declare-fun b!4158026 () Bool)

(declare-fun tp!1268876 () Bool)

(assert (=> b!4158026 (= e!2580565 (and tp_is_empty!21689 tp!1268876))))

(assert (= (and start!396022 res!1703073) b!4158024))

(assert (= (and b!4158024 res!1703075) b!4158022))

(assert (= (and b!4158022 res!1703074) b!4158027))

(assert (= (and b!4158027 res!1703072) b!4158025))

(assert (= (and b!4158025 (not res!1703076)) b!4158023))

(assert (= (and b!4158023 (not res!1703071)) b!4158028))

(assert (= (and start!396022 ((_ is Cons!45365) l!3062)) b!4158026))

(declare-fun m!4751875 () Bool)

(assert (=> b!4158028 m!4751875))

(declare-fun m!4751877 () Bool)

(assert (=> b!4158028 m!4751877))

(declare-fun m!4751879 () Bool)

(assert (=> start!396022 m!4751879))

(declare-fun m!4751881 () Bool)

(assert (=> b!4158027 m!4751881))

(declare-fun m!4751883 () Bool)

(assert (=> b!4158027 m!4751883))

(declare-fun m!4751885 () Bool)

(assert (=> b!4158025 m!4751885))

(declare-fun m!4751887 () Bool)

(assert (=> b!4158025 m!4751887))

(declare-fun m!4751889 () Bool)

(assert (=> b!4158025 m!4751889))

(declare-fun m!4751891 () Bool)

(assert (=> b!4158025 m!4751891))

(declare-fun m!4751893 () Bool)

(assert (=> b!4158025 m!4751893))

(declare-fun m!4751895 () Bool)

(assert (=> b!4158025 m!4751895))

(declare-fun m!4751897 () Bool)

(assert (=> b!4158025 m!4751897))

(declare-fun m!4751899 () Bool)

(assert (=> b!4158025 m!4751899))

(declare-fun m!4751901 () Bool)

(assert (=> b!4158024 m!4751901))

(declare-fun m!4751903 () Bool)

(assert (=> b!4158023 m!4751903))

(check-sat (not b!4158023) (not b!4158027) tp_is_empty!21689 (not b!4158025) (not start!396022) (not b!4158026) (not b!4158028) (not b!4158024))
(check-sat)
