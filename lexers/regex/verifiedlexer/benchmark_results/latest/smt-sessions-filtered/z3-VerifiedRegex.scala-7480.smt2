; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396258 () Bool)

(assert start!396258)

(declare-fun b!4159368 () Bool)

(declare-fun res!1703711 () Bool)

(declare-fun e!2581404 () Bool)

(assert (=> b!4159368 (=> (not res!1703711) (not e!2581404))))

(declare-datatypes ((B!2697 0))(
  ( (B!2698 (val!14640 Int)) )
))
(declare-fun e1!32 () B!2697)

(declare-fun e2!32 () B!2697)

(assert (=> b!4159368 (= res!1703711 (not (= e1!32 e2!32)))))

(declare-fun res!1703712 () Bool)

(assert (=> start!396258 (=> (not res!1703712) (not e!2581404))))

(declare-datatypes ((List!45517 0))(
  ( (Nil!45393) (Cons!45393 (h!50813 B!2697) (t!343548 List!45517)) )
))
(declare-fun l!3062 () List!45517)

(declare-fun contains!9251 (List!45517 B!2697) Bool)

(assert (=> start!396258 (= res!1703712 (contains!9251 l!3062 e1!32))))

(assert (=> start!396258 e!2581404))

(declare-fun e!2581403 () Bool)

(assert (=> start!396258 e!2581403))

(declare-fun tp_is_empty!21745 () Bool)

(assert (=> start!396258 tp_is_empty!21745))

(declare-fun b!4159369 () Bool)

(declare-fun tp!1269020 () Bool)

(assert (=> b!4159369 (= e!2581403 (and tp_is_empty!21745 tp!1269020))))

(declare-fun b!4159370 () Bool)

(declare-fun res!1703709 () Bool)

(assert (=> b!4159370 (=> (not res!1703709) (not e!2581404))))

(assert (=> b!4159370 (= res!1703709 (contains!9251 l!3062 e2!32))))

(declare-fun b!4159371 () Bool)

(get-info :version)

(assert (=> b!4159371 (= e!2581404 (and (or (not ((_ is Cons!45393) l!3062)) (not (= (h!50813 l!3062) e1!32))) (or (not ((_ is Cons!45393) l!3062)) (= (h!50813 l!3062) e1!32)) (not ((_ is Nil!45393) l!3062))))))

(declare-fun b!4159372 () Bool)

(declare-fun res!1703710 () Bool)

(assert (=> b!4159372 (=> (not res!1703710) (not e!2581404))))

(declare-fun getIndex!872 (List!45517 B!2697) Int)

(assert (=> b!4159372 (= res!1703710 (< (getIndex!872 l!3062 e1!32) (getIndex!872 l!3062 e2!32)))))

(assert (= (and start!396258 res!1703712) b!4159370))

(assert (= (and b!4159370 res!1703709) b!4159368))

(assert (= (and b!4159368 res!1703711) b!4159372))

(assert (= (and b!4159372 res!1703710) b!4159371))

(assert (= (and start!396258 ((_ is Cons!45393) l!3062)) b!4159369))

(declare-fun m!4753089 () Bool)

(assert (=> start!396258 m!4753089))

(declare-fun m!4753091 () Bool)

(assert (=> b!4159370 m!4753091))

(declare-fun m!4753093 () Bool)

(assert (=> b!4159372 m!4753093))

(declare-fun m!4753095 () Bool)

(assert (=> b!4159372 m!4753095))

(check-sat (not b!4159370) (not b!4159372) (not start!396258) (not b!4159369) tp_is_empty!21745)
(check-sat)
