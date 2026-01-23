; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228738 () Bool)

(assert start!228738)

(declare-fun b!2317747 () Bool)

(declare-fun e!1485810 () Bool)

(declare-datatypes ((T!43768 0))(
  ( (T!43769 (val!7960 Int)) )
))
(declare-datatypes ((List!27746 0))(
  ( (Nil!27648) (Cons!27648 (h!33049 T!43768) (t!207374 List!27746)) )
))
(declare-fun lt!859533 () List!27746)

(declare-fun lt!859536 () List!27746)

(assert (=> b!2317747 (= e!1485810 (not (= lt!859533 lt!859536)))))

(declare-fun lt!859532 () List!27746)

(assert (=> b!2317747 (= lt!859532 lt!859533)))

(declare-fun lt!859539 () List!27746)

(declare-fun lt!859537 () List!27746)

(declare-fun lt!859541 () List!27746)

(declare-fun ++!6799 (List!27746 List!27746) List!27746)

(assert (=> b!2317747 (= lt!859533 (++!6799 lt!859541 (++!6799 lt!859539 lt!859537)))))

(declare-datatypes ((Unit!40502 0))(
  ( (Unit!40503) )
))
(declare-fun lt!859531 () Unit!40502)

(declare-fun lemmaConcatAssociativity!1449 (List!27746 List!27746 List!27746) Unit!40502)

(assert (=> b!2317747 (= lt!859531 (lemmaConcatAssociativity!1449 lt!859541 lt!859539 lt!859537))))

(declare-fun b!2317748 () Bool)

(declare-fun e!1485812 () Bool)

(declare-fun tp!735970 () Bool)

(assert (=> b!2317748 (= e!1485812 tp!735970)))

(declare-fun b!2317749 () Bool)

(declare-fun e!1485814 () Bool)

(declare-fun tp!735971 () Bool)

(assert (=> b!2317749 (= e!1485814 tp!735971)))

(declare-fun b!2317750 () Bool)

(declare-fun e!1485815 () Bool)

(assert (=> b!2317750 (= e!1485815 e!1485810)))

(declare-fun res!990251 () Bool)

(assert (=> b!2317750 (=> (not res!990251) (not e!1485810))))

(assert (=> b!2317750 (= res!990251 (= lt!859532 lt!859536))))

(declare-datatypes ((IArray!18111 0))(
  ( (IArray!18112 (innerList!9113 List!27746)) )
))
(declare-datatypes ((Conc!9053 0))(
  ( (Node!9053 (left!20976 Conc!9053) (right!21306 Conc!9053) (csize!18336 Int) (cheight!9264 Int)) (Leaf!13289 (xs!12005 IArray!18111) (csize!18337 Int)) (Empty!9053) )
))
(declare-fun lt!859538 () Conc!9053)

(declare-fun list!10976 (Conc!9053) List!27746)

(assert (=> b!2317750 (= lt!859536 (list!10976 lt!859538))))

(assert (=> b!2317750 (= lt!859532 (++!6799 (++!6799 lt!859541 lt!859539) lt!859537))))

(declare-fun lt!859540 () IArray!18111)

(declare-fun list!10977 (IArray!18111) List!27746)

(assert (=> b!2317750 (= lt!859537 (list!10977 lt!859540))))

(declare-fun lt!859535 () Conc!9053)

(assert (=> b!2317750 (= lt!859539 (list!10976 lt!859535))))

(declare-fun acc!252 () Conc!9053)

(assert (=> b!2317750 (= lt!859541 (list!10976 acc!252))))

(declare-fun fromArray!25 (IArray!18111 Conc!9053) Conc!9053)

(declare-fun ++!6800 (Conc!9053 Conc!9053) Conc!9053)

(assert (=> b!2317750 (= lt!859538 (fromArray!25 lt!859540 (++!6800 acc!252 lt!859535)))))

(declare-fun arr!18 () IArray!18111)

(declare-fun lt!859534 () Int)

(declare-fun slice!679 (IArray!18111 Int Int) IArray!18111)

(assert (=> b!2317750 (= lt!859540 (slice!679 arr!18 512 lt!859534))))

(assert (=> b!2317750 (= lt!859535 (Leaf!13289 (slice!679 arr!18 0 512) 512))))

(declare-fun tp!735968 () Bool)

(declare-fun tp!735969 () Bool)

(declare-fun b!2317751 () Bool)

(declare-fun e!1485811 () Bool)

(declare-fun inv!37541 (Conc!9053) Bool)

(assert (=> b!2317751 (= e!1485811 (and (inv!37541 (left!20976 acc!252)) tp!735968 (inv!37541 (right!21306 acc!252)) tp!735969))))

(declare-fun b!2317752 () Bool)

(declare-fun e!1485813 () Bool)

(assert (=> b!2317752 (= e!1485813 e!1485815)))

(declare-fun res!990250 () Bool)

(assert (=> b!2317752 (=> (not res!990250) (not e!1485815))))

(assert (=> b!2317752 (= res!990250 (> lt!859534 512))))

(declare-fun size!21884 (IArray!18111) Int)

(assert (=> b!2317752 (= lt!859534 (size!21884 arr!18))))

(declare-fun res!990252 () Bool)

(assert (=> start!228738 (=> (not res!990252) (not e!1485813))))

(declare-fun isBalanced!2747 (Conc!9053) Bool)

(assert (=> start!228738 (= res!990252 (isBalanced!2747 acc!252))))

(assert (=> start!228738 e!1485813))

(assert (=> start!228738 (and (inv!37541 acc!252) e!1485811)))

(declare-fun inv!37542 (IArray!18111) Bool)

(assert (=> start!228738 (and (inv!37542 arr!18) e!1485814)))

(declare-fun b!2317753 () Bool)

(assert (=> b!2317753 (= e!1485811 (and (inv!37542 (xs!12005 acc!252)) e!1485812))))

(assert (= (and start!228738 res!990252) b!2317752))

(assert (= (and b!2317752 res!990250) b!2317750))

(assert (= (and b!2317750 res!990251) b!2317747))

(get-info :version)

(assert (= (and start!228738 ((_ is Node!9053) acc!252)) b!2317751))

(assert (= b!2317753 b!2317748))

(assert (= (and start!228738 ((_ is Leaf!13289) acc!252)) b!2317753))

(assert (= start!228738 b!2317749))

(declare-fun m!2745391 () Bool)

(assert (=> start!228738 m!2745391))

(declare-fun m!2745393 () Bool)

(assert (=> start!228738 m!2745393))

(declare-fun m!2745395 () Bool)

(assert (=> start!228738 m!2745395))

(declare-fun m!2745397 () Bool)

(assert (=> b!2317751 m!2745397))

(declare-fun m!2745399 () Bool)

(assert (=> b!2317751 m!2745399))

(declare-fun m!2745401 () Bool)

(assert (=> b!2317752 m!2745401))

(declare-fun m!2745403 () Bool)

(assert (=> b!2317753 m!2745403))

(declare-fun m!2745405 () Bool)

(assert (=> b!2317747 m!2745405))

(assert (=> b!2317747 m!2745405))

(declare-fun m!2745407 () Bool)

(assert (=> b!2317747 m!2745407))

(declare-fun m!2745409 () Bool)

(assert (=> b!2317747 m!2745409))

(declare-fun m!2745411 () Bool)

(assert (=> b!2317750 m!2745411))

(declare-fun m!2745413 () Bool)

(assert (=> b!2317750 m!2745413))

(declare-fun m!2745415 () Bool)

(assert (=> b!2317750 m!2745415))

(declare-fun m!2745417 () Bool)

(assert (=> b!2317750 m!2745417))

(declare-fun m!2745419 () Bool)

(assert (=> b!2317750 m!2745419))

(declare-fun m!2745421 () Bool)

(assert (=> b!2317750 m!2745421))

(declare-fun m!2745423 () Bool)

(assert (=> b!2317750 m!2745423))

(declare-fun m!2745425 () Bool)

(assert (=> b!2317750 m!2745425))

(declare-fun m!2745427 () Bool)

(assert (=> b!2317750 m!2745427))

(assert (=> b!2317750 m!2745413))

(declare-fun m!2745429 () Bool)

(assert (=> b!2317750 m!2745429))

(assert (=> b!2317750 m!2745423))

(check-sat (not b!2317753) (not b!2317752) (not start!228738) (not b!2317748) (not b!2317751) (not b!2317747) (not b!2317749) (not b!2317750))
(check-sat)
