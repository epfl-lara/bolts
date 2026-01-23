; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228490 () Bool)

(assert start!228490)

(declare-fun b!2315597 () Bool)

(declare-fun e!1484537 () Bool)

(declare-datatypes ((T!43586 0))(
  ( (T!43587 (val!7934 Int)) )
))
(declare-datatypes ((List!27720 0))(
  ( (Nil!27622) (Cons!27622 (h!33023 T!43586) (t!207332 List!27720)) )
))
(declare-datatypes ((IArray!18059 0))(
  ( (IArray!18060 (innerList!9087 List!27720)) )
))
(declare-datatypes ((Conc!9027 0))(
  ( (Node!9027 (left!20937 Conc!9027) (right!21267 Conc!9027) (csize!18284 Int) (cheight!9238 Int)) (Leaf!13250 (xs!11971 IArray!18059) (csize!18285 Int)) (Empty!9027) )
))
(declare-fun acc!252 () Conc!9027)

(declare-fun e!1484538 () Bool)

(declare-fun inv!37430 (IArray!18059) Bool)

(assert (=> b!2315597 (= e!1484537 (and (inv!37430 (xs!11971 acc!252)) e!1484538))))

(declare-fun b!2315598 () Bool)

(declare-fun e!1484539 () Bool)

(declare-fun lt!858447 () Int)

(assert (=> b!2315598 (= e!1484539 (and (> lt!858447 512) (> 512 lt!858447)))))

(declare-fun arr!18 () IArray!18059)

(declare-fun size!21842 (IArray!18059) Int)

(assert (=> b!2315598 (= lt!858447 (size!21842 arr!18))))

(declare-fun b!2315600 () Bool)

(declare-fun tp!735499 () Bool)

(assert (=> b!2315600 (= e!1484538 tp!735499)))

(declare-fun b!2315601 () Bool)

(declare-fun e!1484536 () Bool)

(declare-fun tp!735497 () Bool)

(assert (=> b!2315601 (= e!1484536 tp!735497)))

(declare-fun res!989392 () Bool)

(assert (=> start!228490 (=> (not res!989392) (not e!1484539))))

(declare-fun isBalanced!2721 (Conc!9027) Bool)

(assert (=> start!228490 (= res!989392 (isBalanced!2721 acc!252))))

(assert (=> start!228490 e!1484539))

(declare-fun inv!37431 (Conc!9027) Bool)

(assert (=> start!228490 (and (inv!37431 acc!252) e!1484537)))

(assert (=> start!228490 (and (inv!37430 arr!18) e!1484536)))

(declare-fun b!2315599 () Bool)

(declare-fun tp!735498 () Bool)

(declare-fun tp!735496 () Bool)

(assert (=> b!2315599 (= e!1484537 (and (inv!37431 (left!20937 acc!252)) tp!735498 (inv!37431 (right!21267 acc!252)) tp!735496))))

(assert (= (and start!228490 res!989392) b!2315598))

(get-info :version)

(assert (= (and start!228490 ((_ is Node!9027) acc!252)) b!2315599))

(assert (= b!2315597 b!2315600))

(assert (= (and start!228490 ((_ is Leaf!13250) acc!252)) b!2315597))

(assert (= start!228490 b!2315601))

(declare-fun m!2742685 () Bool)

(assert (=> b!2315597 m!2742685))

(declare-fun m!2742687 () Bool)

(assert (=> b!2315598 m!2742687))

(declare-fun m!2742689 () Bool)

(assert (=> start!228490 m!2742689))

(declare-fun m!2742691 () Bool)

(assert (=> start!228490 m!2742691))

(declare-fun m!2742693 () Bool)

(assert (=> start!228490 m!2742693))

(declare-fun m!2742695 () Bool)

(assert (=> b!2315599 m!2742695))

(declare-fun m!2742697 () Bool)

(assert (=> b!2315599 m!2742697))

(check-sat (not start!228490) (not b!2315601) (not b!2315598) (not b!2315599) (not b!2315600) (not b!2315597))
(check-sat)
