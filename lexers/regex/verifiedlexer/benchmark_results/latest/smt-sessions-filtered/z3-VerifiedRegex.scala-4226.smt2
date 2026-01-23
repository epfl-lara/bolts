; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228550 () Bool)

(assert start!228550)

(declare-fun b!2316118 () Bool)

(declare-fun e!1484852 () Bool)

(declare-datatypes ((T!43642 0))(
  ( (T!43643 (val!7942 Int)) )
))
(declare-datatypes ((List!27728 0))(
  ( (Nil!27630) (Cons!27630 (h!33031 T!43642) (t!207344 List!27728)) )
))
(declare-datatypes ((IArray!18075 0))(
  ( (IArray!18076 (innerList!9095 List!27728)) )
))
(declare-datatypes ((Conc!9035 0))(
  ( (Node!9035 (left!20949 Conc!9035) (right!21279 Conc!9035) (csize!18300 Int) (cheight!9246 Int)) (Leaf!13262 (xs!11981 IArray!18075) (csize!18301 Int)) (Empty!9035) )
))
(declare-fun acc!252 () Conc!9035)

(declare-fun e!1484853 () Bool)

(declare-fun inv!37466 (IArray!18075) Bool)

(assert (=> b!2316118 (= e!1484852 (and (inv!37466 (xs!11981 acc!252)) e!1484853))))

(declare-fun tp!735656 () Bool)

(declare-fun tp!735659 () Bool)

(declare-fun b!2316119 () Bool)

(declare-fun inv!37467 (Conc!9035) Bool)

(assert (=> b!2316119 (= e!1484852 (and (inv!37467 (left!20949 acc!252)) tp!735659 (inv!37467 (right!21279 acc!252)) tp!735656))))

(declare-fun res!989602 () Bool)

(declare-fun e!1484855 () Bool)

(assert (=> start!228550 (=> (not res!989602) (not e!1484855))))

(declare-fun isBalanced!2729 (Conc!9035) Bool)

(assert (=> start!228550 (= res!989602 (isBalanced!2729 acc!252))))

(assert (=> start!228550 e!1484855))

(assert (=> start!228550 (and (inv!37467 acc!252) e!1484852)))

(declare-fun arr!18 () IArray!18075)

(declare-fun e!1484851 () Bool)

(assert (=> start!228550 (and (inv!37466 arr!18) e!1484851)))

(declare-fun b!2316120 () Bool)

(declare-fun e!1484854 () Bool)

(declare-fun lt!858568 () Int)

(assert (=> b!2316120 (= e!1484854 (> 512 lt!858568))))

(declare-fun lt!858571 () List!27728)

(declare-fun lt!858570 () Conc!9035)

(declare-fun ++!6763 (List!27728 List!27728) List!27728)

(declare-fun list!10941 (Conc!9035) List!27728)

(assert (=> b!2316120 (= lt!858571 (++!6763 (list!10941 acc!252) (list!10941 lt!858570)))))

(declare-fun lt!858569 () Conc!9035)

(declare-fun fromArray!7 (IArray!18075 Conc!9035) Conc!9035)

(declare-fun slice!651 (IArray!18075 Int Int) IArray!18075)

(declare-fun ++!6764 (Conc!9035 Conc!9035) Conc!9035)

(assert (=> b!2316120 (= lt!858569 (fromArray!7 (slice!651 arr!18 512 lt!858568) (++!6764 acc!252 lt!858570)))))

(assert (=> b!2316120 (= lt!858570 (Leaf!13262 (slice!651 arr!18 0 512) 512))))

(declare-fun b!2316121 () Bool)

(declare-fun tp!735658 () Bool)

(assert (=> b!2316121 (= e!1484853 tp!735658)))

(declare-fun b!2316122 () Bool)

(declare-fun tp!735657 () Bool)

(assert (=> b!2316122 (= e!1484851 tp!735657)))

(declare-fun b!2316123 () Bool)

(assert (=> b!2316123 (= e!1484855 e!1484854)))

(declare-fun res!989601 () Bool)

(assert (=> b!2316123 (=> (not res!989601) (not e!1484854))))

(assert (=> b!2316123 (= res!989601 (> lt!858568 512))))

(declare-fun size!21854 (IArray!18075) Int)

(assert (=> b!2316123 (= lt!858568 (size!21854 arr!18))))

(assert (= (and start!228550 res!989602) b!2316123))

(assert (= (and b!2316123 res!989601) b!2316120))

(get-info :version)

(assert (= (and start!228550 ((_ is Node!9035) acc!252)) b!2316119))

(assert (= b!2316118 b!2316121))

(assert (= (and start!228550 ((_ is Leaf!13262) acc!252)) b!2316118))

(assert (= start!228550 b!2316122))

(declare-fun m!2743179 () Bool)

(assert (=> b!2316120 m!2743179))

(declare-fun m!2743181 () Bool)

(assert (=> b!2316120 m!2743181))

(assert (=> b!2316120 m!2743181))

(declare-fun m!2743183 () Bool)

(assert (=> b!2316120 m!2743183))

(declare-fun m!2743185 () Bool)

(assert (=> b!2316120 m!2743185))

(declare-fun m!2743187 () Bool)

(assert (=> b!2316120 m!2743187))

(assert (=> b!2316120 m!2743183))

(declare-fun m!2743189 () Bool)

(assert (=> b!2316120 m!2743189))

(assert (=> b!2316120 m!2743187))

(assert (=> b!2316120 m!2743179))

(declare-fun m!2743191 () Bool)

(assert (=> b!2316120 m!2743191))

(declare-fun m!2743193 () Bool)

(assert (=> b!2316118 m!2743193))

(declare-fun m!2743195 () Bool)

(assert (=> start!228550 m!2743195))

(declare-fun m!2743197 () Bool)

(assert (=> start!228550 m!2743197))

(declare-fun m!2743199 () Bool)

(assert (=> start!228550 m!2743199))

(declare-fun m!2743201 () Bool)

(assert (=> b!2316119 m!2743201))

(declare-fun m!2743203 () Bool)

(assert (=> b!2316119 m!2743203))

(declare-fun m!2743205 () Bool)

(assert (=> b!2316123 m!2743205))

(check-sat (not b!2316122) (not start!228550) (not b!2316120) (not b!2316123) (not b!2316118) (not b!2316121) (not b!2316119))
(check-sat)
