; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742678 () Bool)

(assert start!742678)

(declare-fun b!7841841 () Bool)

(declare-fun e!4636450 () Bool)

(assert (=> b!7841841 (= e!4636450 false)))

(declare-fun lt!2678595 () Int)

(declare-datatypes ((B!3989 0))(
  ( (B!3990 (val!31636 Int)) )
))
(declare-datatypes ((List!73870 0))(
  ( (Nil!73746) (Cons!73746 (h!80194 B!3989) (t!388605 List!73870)) )
))
(declare-fun lt!2678594 () List!73870)

(declare-fun size!42795 (List!73870) Int)

(assert (=> b!7841841 (= lt!2678595 (size!42795 lt!2678594))))

(declare-fun lt!2678596 () Int)

(declare-fun s2!461 () List!73870)

(assert (=> b!7841841 (= lt!2678596 (size!42795 (t!388605 s2!461)))))

(declare-fun b!7841842 () Bool)

(declare-fun e!4636452 () Bool)

(declare-fun tp_is_empty!52421 () Bool)

(declare-fun tp!2321017 () Bool)

(assert (=> b!7841842 (= e!4636452 (and tp_is_empty!52421 tp!2321017))))

(declare-fun b!7841844 () Bool)

(declare-fun e!4636449 () Bool)

(assert (=> b!7841844 (= e!4636449 e!4636450)))

(declare-fun res!3118921 () Bool)

(assert (=> b!7841844 (=> (not res!3118921) (not e!4636450))))

(declare-fun lt!2678593 () List!73870)

(declare-fun isPrefix!6347 (List!73870 List!73870) Bool)

(assert (=> b!7841844 (= res!3118921 (isPrefix!6347 lt!2678594 lt!2678593))))

(declare-fun l!3495 () List!73870)

(declare-fun tail!15551 (List!73870) List!73870)

(assert (=> b!7841844 (= lt!2678593 (tail!15551 l!3495))))

(declare-fun s1!502 () List!73870)

(assert (=> b!7841844 (= lt!2678594 (tail!15551 s1!502))))

(declare-fun b!7841845 () Bool)

(declare-fun e!4636453 () Bool)

(declare-fun tp!2321016 () Bool)

(assert (=> b!7841845 (= e!4636453 (and tp_is_empty!52421 tp!2321016))))

(declare-fun b!7841846 () Bool)

(declare-fun e!4636451 () Bool)

(declare-fun tp!2321015 () Bool)

(assert (=> b!7841846 (= e!4636451 (and tp_is_empty!52421 tp!2321015))))

(declare-fun b!7841847 () Bool)

(declare-fun res!3118923 () Bool)

(assert (=> b!7841847 (=> (not res!3118923) (not e!4636449))))

(assert (=> b!7841847 (= res!3118923 (isPrefix!6347 s2!461 l!3495))))

(declare-fun res!3118926 () Bool)

(assert (=> start!742678 (=> (not res!3118926) (not e!4636449))))

(assert (=> start!742678 (= res!3118926 (isPrefix!6347 s1!502 l!3495))))

(assert (=> start!742678 e!4636449))

(assert (=> start!742678 e!4636451))

(assert (=> start!742678 e!4636452))

(assert (=> start!742678 e!4636453))

(declare-fun b!7841843 () Bool)

(declare-fun res!3118925 () Bool)

(assert (=> b!7841843 (=> (not res!3118925) (not e!4636450))))

(assert (=> b!7841843 (= res!3118925 (isPrefix!6347 (t!388605 s2!461) lt!2678593))))

(declare-fun b!7841848 () Bool)

(declare-fun res!3118924 () Bool)

(assert (=> b!7841848 (=> (not res!3118924) (not e!4636449))))

(assert (=> b!7841848 (= res!3118924 (<= (size!42795 s2!461) (size!42795 s1!502)))))

(declare-fun b!7841849 () Bool)

(declare-fun res!3118922 () Bool)

(assert (=> b!7841849 (=> (not res!3118922) (not e!4636449))))

(get-info :version)

(assert (=> b!7841849 (= res!3118922 ((_ is Cons!73746) s2!461))))

(assert (= (and start!742678 res!3118926) b!7841847))

(assert (= (and b!7841847 res!3118923) b!7841848))

(assert (= (and b!7841848 res!3118924) b!7841849))

(assert (= (and b!7841849 res!3118922) b!7841844))

(assert (= (and b!7841844 res!3118921) b!7841843))

(assert (= (and b!7841843 res!3118925) b!7841841))

(assert (= (and start!742678 ((_ is Cons!73746) s1!502)) b!7841846))

(assert (= (and start!742678 ((_ is Cons!73746) l!3495)) b!7841842))

(assert (= (and start!742678 ((_ is Cons!73746) s2!461)) b!7841845))

(declare-fun m!8254070 () Bool)

(assert (=> start!742678 m!8254070))

(declare-fun m!8254072 () Bool)

(assert (=> b!7841843 m!8254072))

(declare-fun m!8254074 () Bool)

(assert (=> b!7841841 m!8254074))

(declare-fun m!8254076 () Bool)

(assert (=> b!7841841 m!8254076))

(declare-fun m!8254078 () Bool)

(assert (=> b!7841844 m!8254078))

(declare-fun m!8254080 () Bool)

(assert (=> b!7841844 m!8254080))

(declare-fun m!8254082 () Bool)

(assert (=> b!7841844 m!8254082))

(declare-fun m!8254084 () Bool)

(assert (=> b!7841848 m!8254084))

(declare-fun m!8254086 () Bool)

(assert (=> b!7841848 m!8254086))

(declare-fun m!8254088 () Bool)

(assert (=> b!7841847 m!8254088))

(check-sat (not start!742678) (not b!7841845) (not b!7841843) tp_is_empty!52421 (not b!7841844) (not b!7841846) (not b!7841847) (not b!7841848) (not b!7841842) (not b!7841841))
(check-sat)
