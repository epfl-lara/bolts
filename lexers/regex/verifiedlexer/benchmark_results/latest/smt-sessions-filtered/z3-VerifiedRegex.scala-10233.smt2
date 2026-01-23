; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533954 () Bool)

(assert start!533954)

(declare-fun b!5048512 () Bool)

(declare-fun e!3152063 () Bool)

(assert (=> b!5048512 (= e!3152063 (not true))))

(declare-datatypes ((T!104376 0))(
  ( (T!104377 (val!23542 Int)) )
))
(declare-datatypes ((List!58452 0))(
  ( (Nil!58328) (Cons!58328 (h!64776 T!104376) (t!371091 List!58452)) )
))
(declare-fun lt!2085993 () List!58452)

(declare-fun l!2763 () List!58452)

(assert (=> b!5048512 (= lt!2085993 l!2763)))

(declare-datatypes ((Unit!149523 0))(
  ( (Unit!149524) )
))
(declare-fun lt!2085991 () Unit!149523)

(declare-fun takeFullLemma!6 (List!58452) Unit!149523)

(assert (=> b!5048512 (= lt!2085991 (takeFullLemma!6 l!2763))))

(declare-fun b!5048513 () Bool)

(declare-fun e!3152060 () Bool)

(assert (=> b!5048513 (= e!3152060 e!3152063)))

(declare-fun res!2150152 () Bool)

(assert (=> b!5048513 (=> (not res!2150152) (not e!3152063))))

(declare-fun lt!2085990 () List!58452)

(assert (=> b!5048513 (= res!2150152 (= lt!2085990 lt!2085993))))

(declare-fun lt!2085989 () Int)

(declare-fun take!845 (List!58452 Int) List!58452)

(assert (=> b!5048513 (= lt!2085993 (take!845 l!2763 lt!2085989))))

(declare-fun b!5048514 () Bool)

(declare-fun res!2150151 () Bool)

(declare-fun e!3152064 () Bool)

(assert (=> b!5048514 (=> (not res!2150151) (not e!3152064))))

(declare-fun i!658 () Int)

(declare-fun drop!2654 (List!58452 Int) List!58452)

(assert (=> b!5048514 (= res!2150151 (= (drop!2654 l!2763 i!658) l!2763))))

(declare-fun b!5048515 () Bool)

(declare-fun e!3152062 () Bool)

(declare-fun tp_is_empty!36839 () Bool)

(declare-fun tp!1411939 () Bool)

(assert (=> b!5048515 (= e!3152062 (and tp_is_empty!36839 tp!1411939))))

(declare-fun b!5048516 () Bool)

(assert (=> b!5048516 (= e!3152064 e!3152060)))

(declare-fun res!2150154 () Bool)

(assert (=> b!5048516 (=> (not res!2150154) (not e!3152060))))

(declare-fun lt!2085992 () List!58452)

(assert (=> b!5048516 (= res!2150154 (= lt!2085990 (take!845 lt!2085992 lt!2085989)))))

(declare-fun slice!873 (List!58452 Int Int) List!58452)

(assert (=> b!5048516 (= lt!2085990 (slice!873 l!2763 0 lt!2085989))))

(assert (=> b!5048516 (= lt!2085992 (drop!2654 l!2763 0))))

(declare-fun b!5048517 () Bool)

(declare-fun e!3152061 () Bool)

(assert (=> b!5048517 (= e!3152061 e!3152064)))

(declare-fun res!2150155 () Bool)

(assert (=> b!5048517 (=> (not res!2150155) (not e!3152064))))

(get-info :version)

(assert (=> b!5048517 (= res!2150155 (and (<= i!658 lt!2085989) (not ((_ is Nil!58328) l!2763)) (= i!658 0)))))

(declare-fun size!38953 (List!58452) Int)

(assert (=> b!5048517 (= lt!2085989 (size!38953 l!2763))))

(declare-fun res!2150153 () Bool)

(assert (=> start!533954 (=> (not res!2150153) (not e!3152061))))

(assert (=> start!533954 (= res!2150153 (<= 0 i!658))))

(assert (=> start!533954 e!3152061))

(assert (=> start!533954 true))

(assert (=> start!533954 e!3152062))

(assert (= (and start!533954 res!2150153) b!5048517))

(assert (= (and b!5048517 res!2150155) b!5048514))

(assert (= (and b!5048514 res!2150151) b!5048516))

(assert (= (and b!5048516 res!2150154) b!5048513))

(assert (= (and b!5048513 res!2150152) b!5048512))

(assert (= (and start!533954 ((_ is Cons!58328) l!2763)) b!5048515))

(declare-fun m!6083724 () Bool)

(assert (=> b!5048514 m!6083724))

(declare-fun m!6083726 () Bool)

(assert (=> b!5048512 m!6083726))

(declare-fun m!6083728 () Bool)

(assert (=> b!5048513 m!6083728))

(declare-fun m!6083730 () Bool)

(assert (=> b!5048517 m!6083730))

(declare-fun m!6083732 () Bool)

(assert (=> b!5048516 m!6083732))

(declare-fun m!6083734 () Bool)

(assert (=> b!5048516 m!6083734))

(declare-fun m!6083736 () Bool)

(assert (=> b!5048516 m!6083736))

(check-sat (not b!5048513) (not b!5048512) (not b!5048516) (not b!5048514) tp_is_empty!36839 (not b!5048517) (not b!5048515))
(check-sat)
