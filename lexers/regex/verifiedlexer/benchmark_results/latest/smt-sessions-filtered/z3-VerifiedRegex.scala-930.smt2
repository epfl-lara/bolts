; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47646 () Bool)

(assert start!47646)

(declare-fun res!220989 () Bool)

(declare-fun e!311890 () Bool)

(assert (=> start!47646 (=> (not res!220989) (not e!311890))))

(declare-datatypes ((B!1157 0))(
  ( (B!1158 (val!1868 Int)) )
))
(declare-datatypes ((List!4816 0))(
  ( (Nil!4806) (Cons!4806 (h!10207 B!1157) (t!73406 List!4816)) )
))
(declare-fun acc!308 () List!4816)

(declare-fun noDuplicate!157 (List!4816) Bool)

(assert (=> start!47646 (= res!220989 (noDuplicate!157 acc!308))))

(assert (=> start!47646 e!311890))

(declare-fun e!311891 () Bool)

(assert (=> start!47646 e!311891))

(declare-fun e!311892 () Bool)

(assert (=> start!47646 e!311892))

(declare-fun b!520456 () Bool)

(declare-fun list!41 () List!4816)

(declare-fun size!3922 (List!4816) Int)

(assert (=> b!520456 (= e!311890 (< (size!3922 list!41) 0))))

(declare-fun b!520457 () Bool)

(declare-fun tp_is_empty!2753 () Bool)

(declare-fun tp!161939 () Bool)

(assert (=> b!520457 (= e!311891 (and tp_is_empty!2753 tp!161939))))

(declare-fun b!520458 () Bool)

(declare-fun tp!161938 () Bool)

(assert (=> b!520458 (= e!311892 (and tp_is_empty!2753 tp!161938))))

(assert (= (and start!47646 res!220989) b!520456))

(get-info :version)

(assert (= (and start!47646 ((_ is Cons!4806) acc!308)) b!520457))

(assert (= (and start!47646 ((_ is Cons!4806) list!41)) b!520458))

(declare-fun m!767141 () Bool)

(assert (=> start!47646 m!767141))

(declare-fun m!767143 () Bool)

(assert (=> b!520456 m!767143))

(check-sat tp_is_empty!2753 (not start!47646) (not b!520456) (not b!520457) (not b!520458))
(check-sat)
(get-model)

(declare-fun d!185871 () Bool)

(declare-fun res!220994 () Bool)

(declare-fun e!311899 () Bool)

(assert (=> d!185871 (=> res!220994 e!311899)))

(assert (=> d!185871 (= res!220994 ((_ is Nil!4806) acc!308))))

(assert (=> d!185871 (= (noDuplicate!157 acc!308) e!311899)))

(declare-fun b!520467 () Bool)

(declare-fun e!311900 () Bool)

(assert (=> b!520467 (= e!311899 e!311900)))

(declare-fun res!220995 () Bool)

(assert (=> b!520467 (=> (not res!220995) (not e!311900))))

(declare-fun contains!1153 (List!4816 B!1157) Bool)

(assert (=> b!520467 (= res!220995 (not (contains!1153 (t!73406 acc!308) (h!10207 acc!308))))))

(declare-fun b!520468 () Bool)

(assert (=> b!520468 (= e!311900 (noDuplicate!157 (t!73406 acc!308)))))

(assert (= (and d!185871 (not res!220994)) b!520467))

(assert (= (and b!520467 res!220995) b!520468))

(declare-fun m!767145 () Bool)

(assert (=> b!520467 m!767145))

(declare-fun m!767147 () Bool)

(assert (=> b!520468 m!767147))

(assert (=> start!47646 d!185871))

(declare-fun d!185875 () Bool)

(declare-fun lt!216971 () Int)

(assert (=> d!185875 (>= lt!216971 0)))

(declare-fun e!311908 () Int)

(assert (=> d!185875 (= lt!216971 e!311908)))

(declare-fun c!100610 () Bool)

(assert (=> d!185875 (= c!100610 ((_ is Nil!4806) list!41))))

(assert (=> d!185875 (= (size!3922 list!41) lt!216971)))

(declare-fun b!520479 () Bool)

(assert (=> b!520479 (= e!311908 0)))

(declare-fun b!520480 () Bool)

(assert (=> b!520480 (= e!311908 (+ 1 (size!3922 (t!73406 list!41))))))

(assert (= (and d!185875 c!100610) b!520479))

(assert (= (and d!185875 (not c!100610)) b!520480))

(declare-fun m!767151 () Bool)

(assert (=> b!520480 m!767151))

(assert (=> b!520456 d!185875))

(declare-fun b!520485 () Bool)

(declare-fun e!311911 () Bool)

(declare-fun tp!161942 () Bool)

(assert (=> b!520485 (= e!311911 (and tp_is_empty!2753 tp!161942))))

(assert (=> b!520458 (= tp!161938 e!311911)))

(assert (= (and b!520458 ((_ is Cons!4806) (t!73406 list!41))) b!520485))

(declare-fun b!520486 () Bool)

(declare-fun e!311912 () Bool)

(declare-fun tp!161943 () Bool)

(assert (=> b!520486 (= e!311912 (and tp_is_empty!2753 tp!161943))))

(assert (=> b!520457 (= tp!161939 e!311912)))

(assert (= (and b!520457 ((_ is Cons!4806) (t!73406 acc!308))) b!520486))

(check-sat (not b!520485) (not b!520467) (not b!520486) (not b!520468) tp_is_empty!2753 (not b!520480))
(check-sat)
