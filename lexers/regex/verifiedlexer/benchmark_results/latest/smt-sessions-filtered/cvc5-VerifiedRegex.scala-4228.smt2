; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228556 () Bool)

(assert start!228556)

(declare-fun res!989628 () Bool)

(declare-fun e!1484907 () Bool)

(assert (=> start!228556 (=> (not res!989628) (not e!1484907))))

(declare-datatypes ((T!43668 0))(
  ( (T!43669 (val!7945 Int)) )
))
(declare-datatypes ((List!27731 0))(
  ( (Nil!27633) (Cons!27633 (h!33034 T!43668) (t!207347 List!27731)) )
))
(declare-datatypes ((IArray!18081 0))(
  ( (IArray!18082 (innerList!9098 List!27731)) )
))
(declare-datatypes ((Conc!9038 0))(
  ( (Node!9038 (left!20954 Conc!9038) (right!21284 Conc!9038) (csize!18306 Int) (cheight!9249 Int)) (Leaf!13267 (xs!11984 IArray!18081) (csize!18307 Int)) (Empty!9038) )
))
(declare-fun acc!252 () Conc!9038)

(declare-fun isBalanced!2732 (Conc!9038) Bool)

(assert (=> start!228556 (= res!989628 (isBalanced!2732 acc!252))))

(assert (=> start!228556 e!1484907))

(declare-fun e!1484904 () Bool)

(declare-fun inv!37478 (Conc!9038) Bool)

(assert (=> start!228556 (and (inv!37478 acc!252) e!1484904)))

(declare-fun arr!18 () IArray!18081)

(declare-fun e!1484909 () Bool)

(declare-fun inv!37479 (IArray!18081) Bool)

(assert (=> start!228556 (and (inv!37479 arr!18) e!1484909)))

(declare-fun b!2316180 () Bool)

(declare-fun e!1484905 () Bool)

(assert (=> b!2316180 (= e!1484904 (and (inv!37479 (xs!11984 acc!252)) e!1484905))))

(declare-fun b!2316181 () Bool)

(declare-fun tp!735693 () Bool)

(declare-fun tp!735695 () Bool)

(assert (=> b!2316181 (= e!1484904 (and (inv!37478 (left!20954 acc!252)) tp!735693 (inv!37478 (right!21284 acc!252)) tp!735695))))

(declare-fun b!2316182 () Bool)

(declare-fun e!1484908 () Bool)

(assert (=> b!2316182 (= e!1484907 e!1484908)))

(declare-fun res!989627 () Bool)

(assert (=> b!2316182 (=> (not res!989627) (not e!1484908))))

(declare-fun lt!858610 () Int)

(assert (=> b!2316182 (= res!989627 (> lt!858610 512))))

(declare-fun size!21857 (IArray!18081) Int)

(assert (=> b!2316182 (= lt!858610 (size!21857 arr!18))))

(declare-fun b!2316183 () Bool)

(declare-fun tp!735692 () Bool)

(assert (=> b!2316183 (= e!1484905 tp!735692)))

(declare-fun b!2316184 () Bool)

(declare-fun e!1484906 () Bool)

(assert (=> b!2316184 (= e!1484908 e!1484906)))

(declare-fun res!989629 () Bool)

(assert (=> b!2316184 (=> (not res!989629) (not e!1484906))))

(declare-fun lt!858615 () List!27731)

(declare-fun lt!858616 () Conc!9038)

(declare-fun list!10946 (Conc!9038) List!27731)

(assert (=> b!2316184 (= res!989629 (= lt!858615 (list!10946 lt!858616)))))

(declare-fun lt!858611 () List!27731)

(declare-fun lt!858613 () List!27731)

(declare-fun lt!858609 () List!27731)

(declare-fun ++!6769 (List!27731 List!27731) List!27731)

(assert (=> b!2316184 (= lt!858615 (++!6769 (++!6769 lt!858609 lt!858611) lt!858613))))

(declare-fun lt!858614 () IArray!18081)

(declare-fun list!10947 (IArray!18081) List!27731)

(assert (=> b!2316184 (= lt!858613 (list!10947 lt!858614))))

(declare-fun lt!858612 () Conc!9038)

(assert (=> b!2316184 (= lt!858611 (list!10946 lt!858612))))

(assert (=> b!2316184 (= lt!858609 (list!10946 acc!252))))

(declare-fun fromArray!10 (IArray!18081 Conc!9038) Conc!9038)

(declare-fun ++!6770 (Conc!9038 Conc!9038) Conc!9038)

(assert (=> b!2316184 (= lt!858616 (fromArray!10 lt!858614 (++!6770 acc!252 lt!858612)))))

(declare-fun slice!654 (IArray!18081 Int Int) IArray!18081)

(assert (=> b!2316184 (= lt!858614 (slice!654 arr!18 512 lt!858610))))

(assert (=> b!2316184 (= lt!858612 (Leaf!13267 (slice!654 arr!18 0 512) 512))))

(declare-fun b!2316185 () Bool)

(declare-fun tp!735694 () Bool)

(assert (=> b!2316185 (= e!1484909 tp!735694)))

(declare-fun b!2316186 () Bool)

(assert (=> b!2316186 (= e!1484906 (not (<= 512 lt!858610)))))

(assert (=> b!2316186 (= lt!858615 (++!6769 lt!858609 (++!6769 lt!858611 lt!858613)))))

(declare-datatypes ((Unit!40472 0))(
  ( (Unit!40473) )
))
(declare-fun lt!858608 () Unit!40472)

(declare-fun lemmaConcatAssociativity!1434 (List!27731 List!27731 List!27731) Unit!40472)

(assert (=> b!2316186 (= lt!858608 (lemmaConcatAssociativity!1434 lt!858609 lt!858611 lt!858613))))

(assert (= (and start!228556 res!989628) b!2316182))

(assert (= (and b!2316182 res!989627) b!2316184))

(assert (= (and b!2316184 res!989629) b!2316186))

(assert (= (and start!228556 (is-Node!9038 acc!252)) b!2316181))

(assert (= b!2316180 b!2316183))

(assert (= (and start!228556 (is-Leaf!13267 acc!252)) b!2316180))

(assert (= start!228556 b!2316185))

(declare-fun m!2743275 () Bool)

(assert (=> start!228556 m!2743275))

(declare-fun m!2743277 () Bool)

(assert (=> start!228556 m!2743277))

(declare-fun m!2743279 () Bool)

(assert (=> start!228556 m!2743279))

(declare-fun m!2743281 () Bool)

(assert (=> b!2316180 m!2743281))

(declare-fun m!2743283 () Bool)

(assert (=> b!2316182 m!2743283))

(declare-fun m!2743285 () Bool)

(assert (=> b!2316186 m!2743285))

(assert (=> b!2316186 m!2743285))

(declare-fun m!2743287 () Bool)

(assert (=> b!2316186 m!2743287))

(declare-fun m!2743289 () Bool)

(assert (=> b!2316186 m!2743289))

(declare-fun m!2743291 () Bool)

(assert (=> b!2316184 m!2743291))

(declare-fun m!2743293 () Bool)

(assert (=> b!2316184 m!2743293))

(declare-fun m!2743295 () Bool)

(assert (=> b!2316184 m!2743295))

(assert (=> b!2316184 m!2743291))

(declare-fun m!2743297 () Bool)

(assert (=> b!2316184 m!2743297))

(declare-fun m!2743299 () Bool)

(assert (=> b!2316184 m!2743299))

(declare-fun m!2743301 () Bool)

(assert (=> b!2316184 m!2743301))

(declare-fun m!2743303 () Bool)

(assert (=> b!2316184 m!2743303))

(declare-fun m!2743305 () Bool)

(assert (=> b!2316184 m!2743305))

(assert (=> b!2316184 m!2743299))

(declare-fun m!2743307 () Bool)

(assert (=> b!2316184 m!2743307))

(declare-fun m!2743309 () Bool)

(assert (=> b!2316184 m!2743309))

(declare-fun m!2743311 () Bool)

(assert (=> b!2316181 m!2743311))

(declare-fun m!2743313 () Bool)

(assert (=> b!2316181 m!2743313))

(push 1)

(assert (not b!2316182))

(assert (not start!228556))

(assert (not b!2316185))

(assert (not b!2316186))

(assert (not b!2316183))

(assert (not b!2316180))

(assert (not b!2316184))

(assert (not b!2316181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

