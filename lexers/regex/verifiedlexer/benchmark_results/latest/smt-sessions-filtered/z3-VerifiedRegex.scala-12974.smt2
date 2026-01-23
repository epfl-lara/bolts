; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713550 () Bool)

(assert start!713550)

(declare-fun b_free!134073 () Bool)

(declare-fun b_next!134863 () Bool)

(assert (=> start!713550 (= b_free!134073 (not b_next!134863))))

(declare-fun tp!2078157 () Bool)

(declare-fun b_and!351481 () Bool)

(assert (=> start!713550 (= tp!2078157 b_and!351481)))

(declare-fun b!7318123 () Bool)

(declare-fun e!4381218 () Bool)

(declare-fun e!4381216 () Bool)

(assert (=> b!7318123 (= e!4381218 e!4381216)))

(declare-fun res!2957185 () Bool)

(assert (=> b!7318123 (=> (not res!2957185) (not e!4381216))))

(declare-datatypes ((B!3621 0))(
  ( (B!3622 (val!29239 Int)) )
))
(declare-datatypes ((List!71374 0))(
  ( (Nil!71250) (Cons!71250 (h!77698 B!3621) (t!385606 List!71374)) )
))
(declare-fun l2!808 () List!71374)

(declare-fun lt!2603082 () List!71374)

(declare-fun subseq!871 (List!71374 List!71374) Bool)

(assert (=> b!7318123 (= res!2957185 (subseq!871 l2!808 lt!2603082))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2603081 () (InoxSet B!3621))

(declare-fun toList!11661 ((InoxSet B!3621)) List!71374)

(assert (=> b!7318123 (= lt!2603082 (toList!11661 lt!2603081))))

(declare-datatypes ((A!919 0))(
  ( (A!920 (val!29240 Int)) )
))
(declare-fun s1!456 () (InoxSet A!919))

(declare-fun f!803 () Int)

(declare-fun s2!427 () (InoxSet A!919))

(declare-fun flatMap!3079 ((InoxSet A!919) Int) (InoxSet B!3621))

(assert (=> b!7318123 (= lt!2603081 (flatMap!3079 ((_ map or) s1!456 s2!427) f!803))))

(declare-fun setIsEmpty!54960 () Bool)

(declare-fun setRes!54961 () Bool)

(assert (=> setIsEmpty!54960 setRes!54961))

(declare-fun setNonEmpty!54960 () Bool)

(declare-fun tp!2078156 () Bool)

(declare-fun tp_is_empty!47731 () Bool)

(assert (=> setNonEmpty!54960 (= setRes!54961 (and tp!2078156 tp_is_empty!47731))))

(declare-fun setElem!54961 () A!919)

(declare-fun setRest!54961 () (InoxSet A!919))

(assert (=> setNonEmpty!54960 (= s2!427 ((_ map or) (store ((as const (Array A!919 Bool)) false) setElem!54961 true) setRest!54961))))

(declare-fun res!2957184 () Bool)

(assert (=> start!713550 (=> (not res!2957184) (not e!4381218))))

(declare-fun l1!819 () List!71374)

(declare-fun lt!2603080 () (InoxSet B!3621))

(assert (=> start!713550 (= res!2957184 (= l1!819 (toList!11661 lt!2603080)))))

(assert (=> start!713550 (= lt!2603080 ((_ map or) (flatMap!3079 s1!456 f!803) (flatMap!3079 s2!427 f!803)))))

(assert (=> start!713550 e!4381218))

(declare-fun e!4381215 () Bool)

(assert (=> start!713550 e!4381215))

(declare-fun condSetEmpty!54961 () Bool)

(assert (=> start!713550 (= condSetEmpty!54961 (= s1!456 ((as const (Array A!919 Bool)) false)))))

(declare-fun setRes!54960 () Bool)

(assert (=> start!713550 setRes!54960))

(assert (=> start!713550 tp!2078157))

(declare-fun e!4381217 () Bool)

(assert (=> start!713550 e!4381217))

(declare-fun condSetEmpty!54960 () Bool)

(assert (=> start!713550 (= condSetEmpty!54960 (= s2!427 ((as const (Array A!919 Bool)) false)))))

(assert (=> start!713550 setRes!54961))

(declare-fun setIsEmpty!54961 () Bool)

(assert (=> setIsEmpty!54961 setRes!54960))

(declare-fun b!7318124 () Bool)

(declare-fun tp_is_empty!47729 () Bool)

(declare-fun tp!2078153 () Bool)

(assert (=> b!7318124 (= e!4381217 (and tp_is_empty!47729 tp!2078153))))

(declare-fun b!7318125 () Bool)

(declare-fun res!2957183 () Bool)

(assert (=> b!7318125 (=> (not res!2957183) (not e!4381216))))

(get-info :version)

(assert (=> b!7318125 (= res!2957183 ((_ is Cons!71250) l2!808))))

(declare-fun setNonEmpty!54961 () Bool)

(declare-fun tp!2078154 () Bool)

(assert (=> setNonEmpty!54961 (= setRes!54960 (and tp!2078154 tp_is_empty!47731))))

(declare-fun setElem!54960 () A!919)

(declare-fun setRest!54960 () (InoxSet A!919))

(assert (=> setNonEmpty!54961 (= s1!456 ((_ map or) (store ((as const (Array A!919 Bool)) false) setElem!54960 true) setRest!54960))))

(declare-fun b!7318126 () Bool)

(declare-fun tp!2078155 () Bool)

(assert (=> b!7318126 (= e!4381215 (and tp_is_empty!47729 tp!2078155))))

(declare-fun b!7318127 () Bool)

(assert (=> b!7318127 (= e!4381216 (not true))))

(declare-datatypes ((Unit!164737 0))(
  ( (Unit!164738) )
))
(declare-fun lt!2603083 () Unit!164737)

(declare-fun subseqTail!92 (List!71374 List!71374) Unit!164737)

(assert (=> b!7318127 (= lt!2603083 (subseqTail!92 l2!808 lt!2603082))))

(assert (=> b!7318127 (= (select lt!2603080 (h!77698 l2!808)) (select lt!2603081 (h!77698 l2!808)))))

(declare-fun lt!2603084 () Unit!164737)

(declare-fun lemmaFlatMapAssociativeElem!8 ((InoxSet A!919) (InoxSet A!919) Int B!3621) Unit!164737)

(assert (=> b!7318127 (= lt!2603084 (lemmaFlatMapAssociativeElem!8 s1!456 s2!427 f!803 (h!77698 l2!808)))))

(assert (= (and start!713550 res!2957184) b!7318123))

(assert (= (and b!7318123 res!2957185) b!7318125))

(assert (= (and b!7318125 res!2957183) b!7318127))

(assert (= (and start!713550 ((_ is Cons!71250) l2!808)) b!7318126))

(assert (= (and start!713550 condSetEmpty!54961) setIsEmpty!54961))

(assert (= (and start!713550 (not condSetEmpty!54961)) setNonEmpty!54961))

(assert (= (and start!713550 ((_ is Cons!71250) l1!819)) b!7318124))

(assert (= (and start!713550 condSetEmpty!54960) setIsEmpty!54960))

(assert (= (and start!713550 (not condSetEmpty!54960)) setNonEmpty!54960))

(declare-fun m!7982888 () Bool)

(assert (=> b!7318123 m!7982888))

(declare-fun m!7982890 () Bool)

(assert (=> b!7318123 m!7982890))

(declare-fun m!7982892 () Bool)

(assert (=> b!7318123 m!7982892))

(declare-fun m!7982894 () Bool)

(assert (=> start!713550 m!7982894))

(declare-fun m!7982896 () Bool)

(assert (=> start!713550 m!7982896))

(declare-fun m!7982898 () Bool)

(assert (=> start!713550 m!7982898))

(declare-fun m!7982900 () Bool)

(assert (=> b!7318127 m!7982900))

(declare-fun m!7982902 () Bool)

(assert (=> b!7318127 m!7982902))

(declare-fun m!7982904 () Bool)

(assert (=> b!7318127 m!7982904))

(declare-fun m!7982906 () Bool)

(assert (=> b!7318127 m!7982906))

(check-sat (not b!7318127) (not b_next!134863) (not b!7318123) (not start!713550) (not setNonEmpty!54960) (not setNonEmpty!54961) (not b!7318124) b_and!351481 (not b!7318126) tp_is_empty!47731 tp_is_empty!47729)
(check-sat b_and!351481 (not b_next!134863))
