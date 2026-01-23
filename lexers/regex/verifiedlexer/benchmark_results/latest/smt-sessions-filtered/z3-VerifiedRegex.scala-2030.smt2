; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103978 () Bool)

(assert start!103978)

(declare-fun b!1176821 () Bool)

(declare-fun res!532157 () Bool)

(declare-fun e!755196 () Bool)

(assert (=> b!1176821 (=> (not res!532157) (not e!755196))))

(declare-fun j!89 () Int)

(declare-datatypes ((B!1233 0))(
  ( (B!1234 (val!3726 Int)) )
))
(declare-datatypes ((List!11673 0))(
  ( (Nil!11649) (Cons!11649 (h!17050 B!1233) (t!111165 List!11673)) )
))
(declare-fun l!2952 () List!11673)

(declare-fun size!9213 (List!11673) Int)

(assert (=> b!1176821 (= res!532157 (<= (- j!89 1) (size!9213 (t!111165 l!2952))))))

(declare-fun b!1176822 () Bool)

(declare-fun res!532155 () Bool)

(assert (=> b!1176822 (=> (not res!532155) (not e!755196))))

(assert (=> b!1176822 (= res!532155 (<= j!89 (size!9213 l!2952)))))

(declare-fun b!1176823 () Bool)

(declare-fun res!532156 () Bool)

(assert (=> b!1176823 (=> (not res!532156) (not e!755196))))

(declare-fun i!757 () Int)

(get-info :version)

(assert (=> b!1176823 (= res!532156 (and (not ((_ is Nil!11649) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (<= i!757 0) (>= (- j!89 1) i!757)))))

(declare-fun res!532154 () Bool)

(assert (=> start!103978 (=> (not res!532154) (not e!755196))))

(assert (=> start!103978 (= res!532154 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103978 e!755196))

(assert (=> start!103978 true))

(declare-fun e!755197 () Bool)

(assert (=> start!103978 e!755197))

(declare-fun b!1176824 () Bool)

(declare-fun tp_is_empty!5755 () Bool)

(declare-fun tp!335120 () Bool)

(assert (=> b!1176824 (= e!755197 (and tp_is_empty!5755 tp!335120))))

(declare-fun b!1176825 () Bool)

(assert (=> b!1176825 (= e!755196 (not (and (<= 0 i!757) (<= i!757 j!89))))))

(declare-fun subseq!283 (List!11673 List!11673) Bool)

(declare-fun slice!381 (List!11673 Int Int) List!11673)

(assert (=> b!1176825 (subseq!283 (slice!381 (t!111165 l!2952) i!757 (- j!89 1)) (t!111165 l!2952))))

(declare-datatypes ((Unit!17998 0))(
  ( (Unit!17999) )
))
(declare-fun lt!405974 () Unit!17998)

(declare-fun lemmaSliceSubseq!124 (List!11673 Int Int) Unit!17998)

(assert (=> b!1176825 (= lt!405974 (lemmaSliceSubseq!124 (t!111165 l!2952) i!757 (- j!89 1)))))

(assert (= (and start!103978 res!532154) b!1176822))

(assert (= (and b!1176822 res!532155) b!1176823))

(assert (= (and b!1176823 res!532156) b!1176821))

(assert (= (and b!1176821 res!532157) b!1176825))

(assert (= (and start!103978 ((_ is Cons!11649) l!2952)) b!1176824))

(declare-fun m!1354265 () Bool)

(assert (=> b!1176821 m!1354265))

(declare-fun m!1354267 () Bool)

(assert (=> b!1176822 m!1354267))

(declare-fun m!1354269 () Bool)

(assert (=> b!1176825 m!1354269))

(assert (=> b!1176825 m!1354269))

(declare-fun m!1354271 () Bool)

(assert (=> b!1176825 m!1354271))

(declare-fun m!1354273 () Bool)

(assert (=> b!1176825 m!1354273))

(check-sat tp_is_empty!5755 (not b!1176824) (not b!1176825) (not b!1176821) (not b!1176822))
(check-sat)
