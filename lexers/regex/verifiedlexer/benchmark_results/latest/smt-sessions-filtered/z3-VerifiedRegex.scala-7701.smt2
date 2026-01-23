; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405134 () Bool)

(assert start!405134)

(declare-fun b!4234220 () Bool)

(declare-fun e!2629072 () Bool)

(declare-fun tp_is_empty!22573 () Bool)

(declare-fun tp!1296586 () Bool)

(assert (=> b!4234220 (= e!2629072 (and tp_is_empty!22573 tp!1296586))))

(declare-datatypes ((B!2757 0))(
  ( (B!2758 (val!15080 Int)) )
))
(declare-fun e2!42 () B!2757)

(declare-fun lt!1505497 () B!2757)

(declare-fun e!2629074 () Bool)

(declare-fun b!4234221 () Bool)

(declare-fun e1!42 () B!2757)

(assert (=> b!4234221 (= e!2629074 (and (= lt!1505497 e1!42) (= lt!1505497 e2!42) (not (= e1!42 e2!42))))))

(declare-datatypes ((List!46877 0))(
  ( (Nil!46753) (Cons!46753 (h!52173 B!2757) (t!349580 List!46877)) )
))
(declare-fun l!3106 () List!46877)

(declare-fun head!8983 (List!46877) B!2757)

(assert (=> b!4234221 (= lt!1505497 (head!8983 l!3106))))

(declare-fun b!4234222 () Bool)

(declare-fun res!1741495 () Bool)

(declare-fun e!2629073 () Bool)

(assert (=> b!4234222 (=> (not res!1741495) (not e!2629073))))

(declare-fun contains!9697 (List!46877 B!2757) Bool)

(assert (=> b!4234222 (= res!1741495 (contains!9697 l!3106 e2!42))))

(declare-fun b!4234223 () Bool)

(assert (=> b!4234223 (= e!2629073 e!2629074)))

(declare-fun res!1741496 () Bool)

(assert (=> b!4234223 (=> (not res!1741496) (not e!2629074))))

(declare-fun lt!1505498 () Int)

(declare-fun getIndex!896 (List!46877 B!2757) Int)

(assert (=> b!4234223 (= res!1741496 (= lt!1505498 (getIndex!896 l!3106 e2!42)))))

(assert (=> b!4234223 (= lt!1505498 (getIndex!896 l!3106 e1!42))))

(declare-fun res!1741494 () Bool)

(assert (=> start!405134 (=> (not res!1741494) (not e!2629073))))

(assert (=> start!405134 (= res!1741494 (contains!9697 l!3106 e1!42))))

(assert (=> start!405134 e!2629073))

(assert (=> start!405134 e!2629072))

(assert (=> start!405134 tp_is_empty!22573))

(declare-fun b!4234224 () Bool)

(declare-fun res!1741493 () Bool)

(assert (=> b!4234224 (=> (not res!1741493) (not e!2629074))))

(assert (=> b!4234224 (= res!1741493 (= lt!1505498 0))))

(assert (= (and start!405134 res!1741494) b!4234222))

(assert (= (and b!4234222 res!1741495) b!4234223))

(assert (= (and b!4234223 res!1741496) b!4234224))

(assert (= (and b!4234224 res!1741493) b!4234221))

(get-info :version)

(assert (= (and start!405134 ((_ is Cons!46753) l!3106)) b!4234220))

(declare-fun m!4820401 () Bool)

(assert (=> b!4234221 m!4820401))

(declare-fun m!4820403 () Bool)

(assert (=> b!4234222 m!4820403))

(declare-fun m!4820405 () Bool)

(assert (=> b!4234223 m!4820405))

(declare-fun m!4820407 () Bool)

(assert (=> b!4234223 m!4820407))

(declare-fun m!4820409 () Bool)

(assert (=> start!405134 m!4820409))

(check-sat (not b!4234221) (not start!405134) (not b!4234220) (not b!4234222) tp_is_empty!22573 (not b!4234223))
(check-sat)
