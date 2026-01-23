; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250760 () Bool)

(assert start!250760)

(declare-fun res!1088563 () Bool)

(declare-fun e!1633450 () Bool)

(assert (=> start!250760 (=> (not res!1088563) (not e!1633450))))

(declare-datatypes ((B!1953 0))(
  ( (B!1954 (val!9444 Int)) )
))
(declare-datatypes ((List!29877 0))(
  ( (Nil!29777) (Cons!29777 (h!35197 B!1953) (t!212890 List!29877)) )
))
(declare-fun l!3230 () List!29877)

(declare-fun noDuplicate!325 (List!29877) Bool)

(assert (=> start!250760 (= res!1088563 (noDuplicate!325 l!3230))))

(assert (=> start!250760 e!1633450))

(declare-fun e!1633451 () Bool)

(assert (=> start!250760 e!1633451))

(declare-fun b!2589555 () Bool)

(declare-fun res!1088562 () Bool)

(assert (=> b!2589555 (=> (not res!1088562) (not e!1633450))))

(get-info :version)

(assert (=> b!2589555 (= res!1088562 ((_ is Cons!29777) l!3230))))

(declare-fun b!2589556 () Bool)

(assert (=> b!2589556 (= e!1633450 false)))

(declare-fun lt!910259 () Bool)

(assert (=> b!2589556 (= lt!910259 (noDuplicate!325 (t!212890 l!3230)))))

(declare-fun b!2589557 () Bool)

(declare-fun tp_is_empty!13233 () Bool)

(declare-fun tp!822528 () Bool)

(assert (=> b!2589557 (= e!1633451 (and tp_is_empty!13233 tp!822528))))

(assert (= (and start!250760 res!1088563) b!2589555))

(assert (= (and b!2589555 res!1088562) b!2589556))

(assert (= (and start!250760 ((_ is Cons!29777) l!3230)) b!2589557))

(declare-fun m!2925705 () Bool)

(assert (=> start!250760 m!2925705))

(declare-fun m!2925707 () Bool)

(assert (=> b!2589556 m!2925707))

(check-sat (not b!2589556) (not start!250760) (not b!2589557) tp_is_empty!13233)
(check-sat)
