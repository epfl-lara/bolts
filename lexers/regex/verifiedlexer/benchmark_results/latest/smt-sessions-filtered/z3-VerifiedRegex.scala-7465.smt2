; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396018 () Bool)

(assert start!396018)

(declare-fun b!4157981 () Bool)

(declare-fun e!2580541 () Bool)

(declare-fun e!2580540 () Bool)

(assert (=> b!4157981 (= e!2580541 e!2580540)))

(declare-fun res!1703036 () Bool)

(assert (=> b!4157981 (=> (not res!1703036) (not e!2580540))))

(declare-datatypes ((B!2637 0))(
  ( (B!2638 (val!14610 Int)) )
))
(declare-fun e2!32 () B!2637)

(declare-fun lt!1481932 () Int)

(declare-datatypes ((List!45487 0))(
  ( (Nil!45363) (Cons!45363 (h!50783 B!2637) (t!343518 List!45487)) )
))
(declare-fun l!3062 () List!45487)

(declare-fun getIndex!842 (List!45487 B!2637) Int)

(assert (=> b!4157981 (= res!1703036 (< lt!1481932 (getIndex!842 l!3062 e2!32)))))

(declare-fun e1!32 () B!2637)

(assert (=> b!4157981 (= lt!1481932 (getIndex!842 l!3062 e1!32))))

(declare-fun b!4157982 () Bool)

(declare-fun e!2580542 () Bool)

(declare-fun tp_is_empty!21685 () Bool)

(declare-fun tp!1268870 () Bool)

(assert (=> b!4157982 (= e!2580542 (and tp_is_empty!21685 tp!1268870))))

(declare-fun b!4157983 () Bool)

(assert (=> b!4157983 (= e!2580540 (not true))))

(declare-fun lt!1481931 () List!45487)

(assert (=> b!4157983 (= lt!1481932 (+ 1 (getIndex!842 lt!1481931 e1!32)))))

(declare-datatypes ((Unit!64517 0))(
  ( (Unit!64518) )
))
(declare-fun lt!1481929 () Unit!64517)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!2 (List!45487 B!2637) Unit!64517)

(assert (=> b!4157983 (= lt!1481929 (lemmaNotHeadSoGetIndexTailIsMinusOne!2 l!3062 e1!32))))

(declare-fun contains!9221 (List!45487 B!2637) Bool)

(assert (=> b!4157983 (contains!9221 lt!1481931 e1!32)))

(declare-fun tail!6653 (List!45487) List!45487)

(assert (=> b!4157983 (= lt!1481931 (tail!6653 l!3062))))

(declare-fun lt!1481930 () Unit!64517)

(declare-fun lemmaContainsAndNotHdThenTlContains!4 (List!45487 B!2637) Unit!64517)

(assert (=> b!4157983 (= lt!1481930 (lemmaContainsAndNotHdThenTlContains!4 l!3062 e1!32))))

(declare-fun b!4157984 () Bool)

(declare-fun res!1703040 () Bool)

(assert (=> b!4157984 (=> (not res!1703040) (not e!2580541))))

(assert (=> b!4157984 (= res!1703040 (contains!9221 l!3062 e2!32))))

(declare-fun b!4157985 () Bool)

(declare-fun res!1703038 () Bool)

(assert (=> b!4157985 (=> (not res!1703038) (not e!2580540))))

(get-info :version)

(assert (=> b!4157985 (= res!1703038 (and (or (not ((_ is Cons!45363) l!3062)) (not (= (h!50783 l!3062) e1!32))) ((_ is Cons!45363) l!3062) (not (= (h!50783 l!3062) e1!32))))))

(declare-fun b!4157986 () Bool)

(declare-fun res!1703039 () Bool)

(assert (=> b!4157986 (=> (not res!1703039) (not e!2580541))))

(assert (=> b!4157986 (= res!1703039 (not (= e1!32 e2!32)))))

(declare-fun res!1703037 () Bool)

(assert (=> start!396018 (=> (not res!1703037) (not e!2580541))))

(assert (=> start!396018 (= res!1703037 (contains!9221 l!3062 e1!32))))

(assert (=> start!396018 e!2580541))

(assert (=> start!396018 e!2580542))

(assert (=> start!396018 tp_is_empty!21685))

(assert (= (and start!396018 res!1703037) b!4157984))

(assert (= (and b!4157984 res!1703040) b!4157986))

(assert (= (and b!4157986 res!1703039) b!4157981))

(assert (= (and b!4157981 res!1703036) b!4157985))

(assert (= (and b!4157985 res!1703038) b!4157983))

(assert (= (and start!396018 ((_ is Cons!45363) l!3062)) b!4157982))

(declare-fun m!4751827 () Bool)

(assert (=> b!4157981 m!4751827))

(declare-fun m!4751829 () Bool)

(assert (=> b!4157981 m!4751829))

(declare-fun m!4751831 () Bool)

(assert (=> b!4157983 m!4751831))

(declare-fun m!4751833 () Bool)

(assert (=> b!4157983 m!4751833))

(declare-fun m!4751835 () Bool)

(assert (=> b!4157983 m!4751835))

(declare-fun m!4751837 () Bool)

(assert (=> b!4157983 m!4751837))

(declare-fun m!4751839 () Bool)

(assert (=> b!4157983 m!4751839))

(declare-fun m!4751841 () Bool)

(assert (=> b!4157984 m!4751841))

(declare-fun m!4751843 () Bool)

(assert (=> start!396018 m!4751843))

(check-sat (not start!396018) (not b!4157983) (not b!4157984) tp_is_empty!21685 (not b!4157981) (not b!4157982))
(check-sat)
