; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107842 () Bool)

(assert start!107842)

(declare-fun res!847354 () Bool)

(declare-fun e!727433 () Bool)

(assert (=> start!107842 (=> (not res!847354) (not e!727433))))

(declare-datatypes ((B!2152 0))(
  ( (B!2153 (val!16672 Int)) )
))
(declare-datatypes ((tuple2!21572 0))(
  ( (tuple2!21573 (_1!10796 (_ BitVec 64)) (_2!10796 B!2152)) )
))
(declare-datatypes ((List!28756 0))(
  ( (Nil!28753) (Cons!28752 (h!29961 tuple2!21572) (t!42296 List!28756)) )
))
(declare-fun l!595 () List!28756)

(declare-fun isStrictlySorted!847 (List!28756) Bool)

(assert (=> start!107842 (= res!847354 (isStrictlySorted!847 l!595))))

(assert (=> start!107842 e!727433))

(declare-fun e!727434 () Bool)

(assert (=> start!107842 e!727434))

(declare-fun b!1274562 () Bool)

(declare-fun ListPrimitiveSize!164 (List!28756) Int)

(assert (=> b!1274562 (= e!727433 (< (ListPrimitiveSize!164 l!595) 0))))

(declare-fun b!1274563 () Bool)

(declare-fun tp_is_empty!33195 () Bool)

(declare-fun tp!98007 () Bool)

(assert (=> b!1274563 (= e!727434 (and tp_is_empty!33195 tp!98007))))

(assert (= (and start!107842 res!847354) b!1274562))

(get-info :version)

(assert (= (and start!107842 ((_ is Cons!28752) l!595)) b!1274563))

(declare-fun m!1171259 () Bool)

(assert (=> start!107842 m!1171259))

(declare-fun m!1171261 () Bool)

(assert (=> b!1274562 m!1171261))

(check-sat (not b!1274562) (not start!107842) (not b!1274563) tp_is_empty!33195)
(check-sat)
(get-model)

(declare-fun d!140109 () Bool)

(declare-fun lt!575219 () Int)

(assert (=> d!140109 (>= lt!575219 0)))

(declare-fun e!727453 () Int)

(assert (=> d!140109 (= lt!575219 e!727453)))

(declare-fun c!123816 () Bool)

(assert (=> d!140109 (= c!123816 ((_ is Nil!28753) l!595))))

(assert (=> d!140109 (= (ListPrimitiveSize!164 l!595) lt!575219)))

(declare-fun b!1274582 () Bool)

(assert (=> b!1274582 (= e!727453 0)))

(declare-fun b!1274583 () Bool)

(assert (=> b!1274583 (= e!727453 (+ 1 (ListPrimitiveSize!164 (t!42296 l!595))))))

(assert (= (and d!140109 c!123816) b!1274582))

(assert (= (and d!140109 (not c!123816)) b!1274583))

(declare-fun m!1171269 () Bool)

(assert (=> b!1274583 m!1171269))

(assert (=> b!1274562 d!140109))

(declare-fun d!140117 () Bool)

(declare-fun res!847374 () Bool)

(declare-fun e!727468 () Bool)

(assert (=> d!140117 (=> res!847374 e!727468)))

(assert (=> d!140117 (= res!847374 (or ((_ is Nil!28753) l!595) ((_ is Nil!28753) (t!42296 l!595))))))

(assert (=> d!140117 (= (isStrictlySorted!847 l!595) e!727468)))

(declare-fun b!1274607 () Bool)

(declare-fun e!727469 () Bool)

(assert (=> b!1274607 (= e!727468 e!727469)))

(declare-fun res!847375 () Bool)

(assert (=> b!1274607 (=> (not res!847375) (not e!727469))))

(assert (=> b!1274607 (= res!847375 (bvslt (_1!10796 (h!29961 l!595)) (_1!10796 (h!29961 (t!42296 l!595)))))))

(declare-fun b!1274608 () Bool)

(assert (=> b!1274608 (= e!727469 (isStrictlySorted!847 (t!42296 l!595)))))

(assert (= (and d!140117 (not res!847374)) b!1274607))

(assert (= (and b!1274607 res!847375) b!1274608))

(declare-fun m!1171275 () Bool)

(assert (=> b!1274608 m!1171275))

(assert (=> start!107842 d!140117))

(declare-fun b!1274615 () Bool)

(declare-fun e!727473 () Bool)

(declare-fun tp!98016 () Bool)

(assert (=> b!1274615 (= e!727473 (and tp_is_empty!33195 tp!98016))))

(assert (=> b!1274563 (= tp!98007 e!727473)))

(assert (= (and b!1274563 ((_ is Cons!28752) (t!42296 l!595))) b!1274615))

(check-sat (not b!1274583) (not b!1274608) (not b!1274615) tp_is_empty!33195)
