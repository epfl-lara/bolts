; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104098 () Bool)

(assert start!104098)

(declare-fun b!1177679 () Bool)

(declare-fun res!532495 () Bool)

(declare-fun e!755737 () Bool)

(assert (=> b!1177679 (=> (not res!532495) (not e!755737))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(declare-datatypes ((B!1265 0))(
  ( (B!1266 (val!3742 Int)) )
))
(declare-datatypes ((List!11689 0))(
  ( (Nil!11665) (Cons!11665 (h!17066 B!1265) (t!111181 List!11689)) )
))
(declare-fun l!2952 () List!11689)

(get-info :version)

(assert (=> b!1177679 (= res!532495 (and (not ((_ is Nil!11665) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (<= i!757 0)))))

(declare-fun res!532496 () Bool)

(assert (=> start!104098 (=> (not res!532496) (not e!755737))))

(assert (=> start!104098 (= res!532496 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104098 e!755737))

(assert (=> start!104098 true))

(declare-fun e!755739 () Bool)

(assert (=> start!104098 e!755739))

(declare-fun b!1177680 () Bool)

(declare-fun e!755738 () Bool)

(declare-fun size!9229 (List!11689) Int)

(assert (=> b!1177680 (= e!755738 (> (- j!89 1) (size!9229 (t!111181 l!2952))))))

(declare-fun b!1177681 () Bool)

(declare-fun tp_is_empty!5787 () Bool)

(declare-fun tp!335210 () Bool)

(assert (=> b!1177681 (= e!755739 (and tp_is_empty!5787 tp!335210))))

(declare-fun b!1177682 () Bool)

(assert (=> b!1177682 (= e!755737 e!755738)))

(declare-fun res!532497 () Bool)

(assert (=> b!1177682 (=> res!532497 e!755738)))

(assert (=> b!1177682 (= res!532497 (< (- j!89 1) i!757))))

(declare-fun b!1177683 () Bool)

(declare-fun res!532494 () Bool)

(assert (=> b!1177683 (=> (not res!532494) (not e!755737))))

(assert (=> b!1177683 (= res!532494 (<= j!89 (size!9229 l!2952)))))

(assert (= (and start!104098 res!532496) b!1177683))

(assert (= (and b!1177683 res!532494) b!1177679))

(assert (= (and b!1177679 res!532495) b!1177682))

(assert (= (and b!1177682 (not res!532497)) b!1177680))

(assert (= (and start!104098 ((_ is Cons!11665) l!2952)) b!1177681))

(declare-fun m!1354665 () Bool)

(assert (=> b!1177680 m!1354665))

(declare-fun m!1354667 () Bool)

(assert (=> b!1177683 m!1354667))

(check-sat (not b!1177680) (not b!1177683) (not b!1177681) tp_is_empty!5787)
(check-sat)
(get-model)

(declare-fun d!337349 () Bool)

(declare-fun lt!406101 () Int)

(assert (=> d!337349 (>= lt!406101 0)))

(declare-fun e!755746 () Int)

(assert (=> d!337349 (= lt!406101 e!755746)))

(declare-fun c!196314 () Bool)

(assert (=> d!337349 (= c!196314 ((_ is Nil!11665) (t!111181 l!2952)))))

(assert (=> d!337349 (= (size!9229 (t!111181 l!2952)) lt!406101)))

(declare-fun b!1177696 () Bool)

(assert (=> b!1177696 (= e!755746 0)))

(declare-fun b!1177697 () Bool)

(assert (=> b!1177697 (= e!755746 (+ 1 (size!9229 (t!111181 (t!111181 l!2952)))))))

(assert (= (and d!337349 c!196314) b!1177696))

(assert (= (and d!337349 (not c!196314)) b!1177697))

(declare-fun m!1354671 () Bool)

(assert (=> b!1177697 m!1354671))

(assert (=> b!1177680 d!337349))

(declare-fun d!337355 () Bool)

(declare-fun lt!406102 () Int)

(assert (=> d!337355 (>= lt!406102 0)))

(declare-fun e!755749 () Int)

(assert (=> d!337355 (= lt!406102 e!755749)))

(declare-fun c!196315 () Bool)

(assert (=> d!337355 (= c!196315 ((_ is Nil!11665) l!2952))))

(assert (=> d!337355 (= (size!9229 l!2952) lt!406102)))

(declare-fun b!1177702 () Bool)

(assert (=> b!1177702 (= e!755749 0)))

(declare-fun b!1177703 () Bool)

(assert (=> b!1177703 (= e!755749 (+ 1 (size!9229 (t!111181 l!2952))))))

(assert (= (and d!337355 c!196315) b!1177702))

(assert (= (and d!337355 (not c!196315)) b!1177703))

(assert (=> b!1177703 m!1354665))

(assert (=> b!1177683 d!337355))

(declare-fun b!1177709 () Bool)

(declare-fun e!755753 () Bool)

(declare-fun tp!335216 () Bool)

(assert (=> b!1177709 (= e!755753 (and tp_is_empty!5787 tp!335216))))

(assert (=> b!1177681 (= tp!335210 e!755753)))

(assert (= (and b!1177681 ((_ is Cons!11665) (t!111181 l!2952))) b!1177709))

(check-sat (not b!1177703) (not b!1177697) (not b!1177709) tp_is_empty!5787)
(check-sat)
