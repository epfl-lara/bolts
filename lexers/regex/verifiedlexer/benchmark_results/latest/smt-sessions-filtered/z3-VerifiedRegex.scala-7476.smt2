; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396190 () Bool)

(assert start!396190)

(declare-fun b!4158940 () Bool)

(declare-fun e!2581139 () Bool)

(declare-fun e!2581138 () Bool)

(assert (=> b!4158940 (= e!2581139 (not e!2581138))))

(declare-fun res!1703514 () Bool)

(assert (=> b!4158940 (=> res!1703514 e!2581138)))

(declare-datatypes ((B!2681 0))(
  ( (B!2682 (val!14632 Int)) )
))
(declare-datatypes ((List!45509 0))(
  ( (Nil!45385) (Cons!45385 (h!50805 B!2681) (t!343540 List!45509)) )
))
(declare-fun l!3062 () List!45509)

(declare-fun e1!32 () B!2681)

(declare-fun contains!9243 (List!45509 B!2681) Bool)

(assert (=> b!4158940 (= res!1703514 (not (contains!9243 (t!343540 l!3062) e1!32)))))

(declare-fun lt!1482450 () Int)

(declare-fun lt!1482447 () List!45509)

(declare-fun e2!32 () B!2681)

(declare-fun getIndex!864 (List!45509 B!2681) Int)

(assert (=> b!4158940 (= lt!1482450 (+ 1 (getIndex!864 lt!1482447 e2!32)))))

(declare-datatypes ((Unit!64555 0))(
  ( (Unit!64556) )
))
(declare-fun lt!1482446 () Unit!64555)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!16 (List!45509 B!2681) Unit!64555)

(assert (=> b!4158940 (= lt!1482446 (lemmaNotHeadSoGetIndexTailIsMinusOne!16 l!3062 e2!32))))

(declare-fun lt!1482451 () Int)

(assert (=> b!4158940 (= lt!1482451 (+ 1 (getIndex!864 lt!1482447 e1!32)))))

(declare-fun lt!1482452 () Unit!64555)

(assert (=> b!4158940 (= lt!1482452 (lemmaNotHeadSoGetIndexTailIsMinusOne!16 l!3062 e1!32))))

(assert (=> b!4158940 (contains!9243 lt!1482447 e1!32)))

(declare-fun tail!6669 (List!45509) List!45509)

(assert (=> b!4158940 (= lt!1482447 (tail!6669 l!3062))))

(declare-fun lt!1482449 () Unit!64555)

(declare-fun lemmaContainsAndNotHdThenTlContains!20 (List!45509 B!2681) Unit!64555)

(assert (=> b!4158940 (= lt!1482449 (lemmaContainsAndNotHdThenTlContains!20 l!3062 e1!32))))

(declare-fun b!4158941 () Bool)

(assert (=> b!4158941 (= e!2581138 true)))

(declare-fun lt!1482448 () Bool)

(assert (=> b!4158941 (= lt!1482448 (contains!9243 (t!343540 l!3062) e2!32))))

(declare-fun b!4158942 () Bool)

(declare-fun res!1703510 () Bool)

(declare-fun e!2581140 () Bool)

(assert (=> b!4158942 (=> (not res!1703510) (not e!2581140))))

(assert (=> b!4158942 (= res!1703510 (not (= e1!32 e2!32)))))

(declare-fun b!4158943 () Bool)

(assert (=> b!4158943 (= e!2581140 e!2581139)))

(declare-fun res!1703512 () Bool)

(assert (=> b!4158943 (=> (not res!1703512) (not e!2581139))))

(get-info :version)

(assert (=> b!4158943 (= res!1703512 (and (< lt!1482451 lt!1482450) (or (not ((_ is Cons!45385) l!3062)) (not (= (h!50805 l!3062) e1!32))) ((_ is Cons!45385) l!3062) (not (= (h!50805 l!3062) e1!32))))))

(assert (=> b!4158943 (= lt!1482450 (getIndex!864 l!3062 e2!32))))

(assert (=> b!4158943 (= lt!1482451 (getIndex!864 l!3062 e1!32))))

(declare-fun b!4158944 () Bool)

(declare-fun res!1703513 () Bool)

(assert (=> b!4158944 (=> (not res!1703513) (not e!2581140))))

(assert (=> b!4158944 (= res!1703513 (contains!9243 l!3062 e2!32))))

(declare-fun res!1703511 () Bool)

(assert (=> start!396190 (=> (not res!1703511) (not e!2581140))))

(assert (=> start!396190 (= res!1703511 (contains!9243 l!3062 e1!32))))

(assert (=> start!396190 e!2581140))

(declare-fun e!2581137 () Bool)

(assert (=> start!396190 e!2581137))

(declare-fun tp_is_empty!21729 () Bool)

(assert (=> start!396190 tp_is_empty!21729))

(declare-fun b!4158939 () Bool)

(declare-fun tp!1268978 () Bool)

(assert (=> b!4158939 (= e!2581137 (and tp_is_empty!21729 tp!1268978))))

(assert (= (and start!396190 res!1703511) b!4158944))

(assert (= (and b!4158944 res!1703513) b!4158942))

(assert (= (and b!4158942 res!1703510) b!4158943))

(assert (= (and b!4158943 res!1703512) b!4158940))

(assert (= (and b!4158940 (not res!1703514)) b!4158941))

(assert (= (and start!396190 ((_ is Cons!45385) l!3062)) b!4158939))

(declare-fun m!4752703 () Bool)

(assert (=> b!4158940 m!4752703))

(declare-fun m!4752705 () Bool)

(assert (=> b!4158940 m!4752705))

(declare-fun m!4752707 () Bool)

(assert (=> b!4158940 m!4752707))

(declare-fun m!4752709 () Bool)

(assert (=> b!4158940 m!4752709))

(declare-fun m!4752711 () Bool)

(assert (=> b!4158940 m!4752711))

(declare-fun m!4752713 () Bool)

(assert (=> b!4158940 m!4752713))

(declare-fun m!4752715 () Bool)

(assert (=> b!4158940 m!4752715))

(declare-fun m!4752717 () Bool)

(assert (=> b!4158940 m!4752717))

(declare-fun m!4752719 () Bool)

(assert (=> b!4158941 m!4752719))

(declare-fun m!4752721 () Bool)

(assert (=> start!396190 m!4752721))

(declare-fun m!4752723 () Bool)

(assert (=> b!4158943 m!4752723))

(declare-fun m!4752725 () Bool)

(assert (=> b!4158943 m!4752725))

(declare-fun m!4752727 () Bool)

(assert (=> b!4158944 m!4752727))

(check-sat (not b!4158940) (not b!4158939) (not start!396190) (not b!4158944) (not b!4158943) (not b!4158941) tp_is_empty!21729)
(check-sat)
