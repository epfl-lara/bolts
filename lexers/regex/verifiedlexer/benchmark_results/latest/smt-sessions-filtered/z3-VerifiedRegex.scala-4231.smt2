; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228570 () Bool)

(assert start!228570)

(declare-fun b!2316371 () Bool)

(declare-fun e!1485059 () Bool)

(declare-fun e!1485056 () Bool)

(assert (=> b!2316371 (= e!1485059 e!1485056)))

(declare-fun res!989738 () Bool)

(assert (=> b!2316371 (=> (not res!989738) (not e!1485056))))

(declare-datatypes ((T!43712 0))(
  ( (T!43713 (val!7952 Int)) )
))
(declare-datatypes ((List!27738 0))(
  ( (Nil!27640) (Cons!27640 (h!33041 T!43712) (t!207354 List!27738)) )
))
(declare-fun lt!858877 () List!27738)

(declare-fun lt!858864 () List!27738)

(assert (=> b!2316371 (= res!989738 (= lt!858877 lt!858864))))

(declare-datatypes ((IArray!18095 0))(
  ( (IArray!18096 (innerList!9105 List!27738)) )
))
(declare-datatypes ((Conc!9045 0))(
  ( (Node!9045 (left!20964 Conc!9045) (right!21294 Conc!9045) (csize!18320 Int) (cheight!9256 Int)) (Leaf!13277 (xs!11991 IArray!18095) (csize!18321 Int)) (Empty!9045) )
))
(declare-fun lt!858867 () Conc!9045)

(declare-fun list!10960 (Conc!9045) List!27738)

(assert (=> b!2316371 (= lt!858864 (list!10960 lt!858867))))

(declare-fun lt!858872 () List!27738)

(declare-fun lt!858874 () List!27738)

(declare-fun lt!858869 () List!27738)

(declare-fun ++!6783 (List!27738 List!27738) List!27738)

(assert (=> b!2316371 (= lt!858877 (++!6783 (++!6783 lt!858874 lt!858869) lt!858872))))

(declare-fun lt!858876 () IArray!18095)

(declare-fun list!10961 (IArray!18095) List!27738)

(assert (=> b!2316371 (= lt!858872 (list!10961 lt!858876))))

(declare-fun lt!858866 () Conc!9045)

(assert (=> b!2316371 (= lt!858869 (list!10960 lt!858866))))

(declare-fun acc!252 () Conc!9045)

(assert (=> b!2316371 (= lt!858874 (list!10960 acc!252))))

(declare-fun fromArray!17 (IArray!18095 Conc!9045) Conc!9045)

(declare-fun ++!6784 (Conc!9045 Conc!9045) Conc!9045)

(assert (=> b!2316371 (= lt!858867 (fromArray!17 lt!858876 (++!6784 acc!252 lt!858866)))))

(declare-fun arr!18 () IArray!18095)

(declare-fun lt!858865 () Int)

(declare-fun slice!664 (IArray!18095 Int Int) IArray!18095)

(assert (=> b!2316371 (= lt!858876 (slice!664 arr!18 512 lt!858865))))

(assert (=> b!2316371 (= lt!858866 (Leaf!13277 (slice!664 arr!18 0 512) 512))))

(declare-fun b!2316372 () Bool)

(declare-fun e!1485057 () Bool)

(assert (=> b!2316372 (= e!1485056 (not e!1485057))))

(declare-fun res!989736 () Bool)

(assert (=> b!2316372 (=> res!989736 e!1485057)))

(declare-fun lt!858873 () List!27738)

(assert (=> b!2316372 (= res!989736 (not (= lt!858873 lt!858864)))))

(assert (=> b!2316372 (= lt!858877 lt!858873)))

(declare-fun lt!858870 () List!27738)

(assert (=> b!2316372 (= lt!858873 (++!6783 lt!858874 lt!858870))))

(assert (=> b!2316372 (= lt!858870 (++!6783 lt!858869 lt!858872))))

(declare-datatypes ((Unit!40486 0))(
  ( (Unit!40487) )
))
(declare-fun lt!858871 () Unit!40486)

(declare-fun lemmaConcatAssociativity!1441 (List!27738 List!27738 List!27738) Unit!40486)

(assert (=> b!2316372 (= lt!858871 (lemmaConcatAssociativity!1441 lt!858874 lt!858869 lt!858872))))

(declare-fun e!1485054 () Bool)

(declare-fun b!2316373 () Bool)

(declare-fun tp!735776 () Bool)

(declare-fun tp!735778 () Bool)

(declare-fun inv!37501 (Conc!9045) Bool)

(assert (=> b!2316373 (= e!1485054 (and (inv!37501 (left!20964 acc!252)) tp!735778 (inv!37501 (right!21294 acc!252)) tp!735776))))

(declare-fun b!2316374 () Bool)

(declare-fun e!1485058 () Bool)

(assert (=> b!2316374 (= e!1485058 e!1485059)))

(declare-fun res!989737 () Bool)

(assert (=> b!2316374 (=> (not res!989737) (not e!1485059))))

(assert (=> b!2316374 (= res!989737 (> lt!858865 512))))

(declare-fun size!21869 (IArray!18095) Int)

(assert (=> b!2316374 (= lt!858865 (size!21869 arr!18))))

(declare-fun b!2316375 () Bool)

(declare-fun e!1485053 () Bool)

(assert (=> b!2316375 (= e!1485053 (<= 512 lt!858865))))

(declare-fun res!989740 () Bool)

(assert (=> start!228570 (=> (not res!989740) (not e!1485058))))

(declare-fun isBalanced!2739 (Conc!9045) Bool)

(assert (=> start!228570 (= res!989740 (isBalanced!2739 acc!252))))

(assert (=> start!228570 e!1485058))

(assert (=> start!228570 (and (inv!37501 acc!252) e!1485054)))

(declare-fun e!1485052 () Bool)

(declare-fun inv!37502 (IArray!18095) Bool)

(assert (=> start!228570 (and (inv!37502 arr!18) e!1485052)))

(declare-fun b!2316376 () Bool)

(declare-fun res!989735 () Bool)

(assert (=> b!2316376 (=> res!989735 e!1485053)))

(declare-fun lt!858868 () List!27738)

(assert (=> b!2316376 (= res!989735 (not (= lt!858864 (++!6783 lt!858874 lt!858868))))))

(declare-fun b!2316377 () Bool)

(assert (=> b!2316377 (= e!1485057 e!1485053)))

(declare-fun res!989734 () Bool)

(assert (=> b!2316377 (=> res!989734 e!1485053)))

(assert (=> b!2316377 (= res!989734 (not (= lt!858870 lt!858868)))))

(declare-fun slice!665 (List!27738 Int Int) List!27738)

(declare-fun size!21870 (List!27738) Int)

(assert (=> b!2316377 (= (++!6783 (slice!665 lt!858868 0 512) (slice!665 lt!858868 512 (size!21870 lt!858868))) lt!858868)))

(declare-fun lt!858875 () Unit!40486)

(declare-fun sliceSplit!8 (List!27738 Int) Unit!40486)

(assert (=> b!2316377 (= lt!858875 (sliceSplit!8 lt!858868 512))))

(assert (=> b!2316377 (= lt!858868 (list!10961 arr!18))))

(declare-fun b!2316378 () Bool)

(declare-fun e!1485055 () Bool)

(declare-fun tp!735779 () Bool)

(assert (=> b!2316378 (= e!1485055 tp!735779)))

(declare-fun b!2316379 () Bool)

(declare-fun tp!735777 () Bool)

(assert (=> b!2316379 (= e!1485052 tp!735777)))

(declare-fun b!2316380 () Bool)

(declare-fun res!989739 () Bool)

(assert (=> b!2316380 (=> res!989739 e!1485057)))

(assert (=> b!2316380 (= res!989739 (not (isBalanced!2739 lt!858867)))))

(declare-fun b!2316381 () Bool)

(assert (=> b!2316381 (= e!1485054 (and (inv!37502 (xs!11991 acc!252)) e!1485055))))

(assert (= (and start!228570 res!989740) b!2316374))

(assert (= (and b!2316374 res!989737) b!2316371))

(assert (= (and b!2316371 res!989738) b!2316372))

(assert (= (and b!2316372 (not res!989736)) b!2316380))

(assert (= (and b!2316380 (not res!989739)) b!2316377))

(assert (= (and b!2316377 (not res!989734)) b!2316376))

(assert (= (and b!2316376 (not res!989735)) b!2316375))

(get-info :version)

(assert (= (and start!228570 ((_ is Node!9045) acc!252)) b!2316373))

(assert (= b!2316381 b!2316378))

(assert (= (and start!228570 ((_ is Leaf!13277) acc!252)) b!2316381))

(assert (= start!228570 b!2316379))

(declare-fun m!2743611 () Bool)

(assert (=> b!2316380 m!2743611))

(declare-fun m!2743613 () Bool)

(assert (=> b!2316377 m!2743613))

(declare-fun m!2743615 () Bool)

(assert (=> b!2316377 m!2743615))

(declare-fun m!2743617 () Bool)

(assert (=> b!2316377 m!2743617))

(declare-fun m!2743619 () Bool)

(assert (=> b!2316377 m!2743619))

(assert (=> b!2316377 m!2743615))

(declare-fun m!2743621 () Bool)

(assert (=> b!2316377 m!2743621))

(assert (=> b!2316377 m!2743613))

(assert (=> b!2316377 m!2743621))

(declare-fun m!2743623 () Bool)

(assert (=> b!2316377 m!2743623))

(declare-fun m!2743625 () Bool)

(assert (=> b!2316371 m!2743625))

(declare-fun m!2743627 () Bool)

(assert (=> b!2316371 m!2743627))

(declare-fun m!2743629 () Bool)

(assert (=> b!2316371 m!2743629))

(assert (=> b!2316371 m!2743627))

(declare-fun m!2743631 () Bool)

(assert (=> b!2316371 m!2743631))

(assert (=> b!2316371 m!2743629))

(declare-fun m!2743633 () Bool)

(assert (=> b!2316371 m!2743633))

(declare-fun m!2743635 () Bool)

(assert (=> b!2316371 m!2743635))

(declare-fun m!2743637 () Bool)

(assert (=> b!2316371 m!2743637))

(declare-fun m!2743639 () Bool)

(assert (=> b!2316371 m!2743639))

(declare-fun m!2743641 () Bool)

(assert (=> b!2316371 m!2743641))

(declare-fun m!2743643 () Bool)

(assert (=> b!2316371 m!2743643))

(declare-fun m!2743645 () Bool)

(assert (=> b!2316374 m!2743645))

(declare-fun m!2743647 () Bool)

(assert (=> b!2316372 m!2743647))

(declare-fun m!2743649 () Bool)

(assert (=> b!2316372 m!2743649))

(declare-fun m!2743651 () Bool)

(assert (=> b!2316372 m!2743651))

(declare-fun m!2743653 () Bool)

(assert (=> b!2316373 m!2743653))

(declare-fun m!2743655 () Bool)

(assert (=> b!2316373 m!2743655))

(declare-fun m!2743657 () Bool)

(assert (=> start!228570 m!2743657))

(declare-fun m!2743659 () Bool)

(assert (=> start!228570 m!2743659))

(declare-fun m!2743661 () Bool)

(assert (=> start!228570 m!2743661))

(declare-fun m!2743663 () Bool)

(assert (=> b!2316381 m!2743663))

(declare-fun m!2743665 () Bool)

(assert (=> b!2316376 m!2743665))

(check-sat (not b!2316377) (not b!2316372) (not b!2316374) (not b!2316380) (not b!2316381) (not b!2316379) (not start!228570) (not b!2316373) (not b!2316378) (not b!2316376) (not b!2316371))
(check-sat)
