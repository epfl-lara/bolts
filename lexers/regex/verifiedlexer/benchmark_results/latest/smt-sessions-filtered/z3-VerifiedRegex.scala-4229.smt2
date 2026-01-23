; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228562 () Bool)

(assert start!228562)

(declare-fun b!2316253 () Bool)

(declare-fun e!1484965 () Bool)

(declare-fun tp!735728 () Bool)

(assert (=> b!2316253 (= e!1484965 tp!735728)))

(declare-datatypes ((T!43684 0))(
  ( (T!43685 (val!7948 Int)) )
))
(declare-datatypes ((List!27734 0))(
  ( (Nil!27636) (Cons!27636 (h!33037 T!43684) (t!207350 List!27734)) )
))
(declare-datatypes ((IArray!18087 0))(
  ( (IArray!18088 (innerList!9101 List!27734)) )
))
(declare-datatypes ((Conc!9041 0))(
  ( (Node!9041 (left!20958 Conc!9041) (right!21288 Conc!9041) (csize!18312 Int) (cheight!9252 Int)) (Leaf!13271 (xs!11987 IArray!18087) (csize!18313 Int)) (Empty!9041) )
))
(declare-fun acc!252 () Conc!9041)

(declare-fun b!2316254 () Bool)

(declare-fun e!1484964 () Bool)

(declare-fun tp!735729 () Bool)

(declare-fun tp!735730 () Bool)

(declare-fun inv!37487 (Conc!9041) Bool)

(assert (=> b!2316254 (= e!1484964 (and (inv!37487 (left!20958 acc!252)) tp!735729 (inv!37487 (right!21288 acc!252)) tp!735730))))

(declare-fun res!989665 () Bool)

(declare-fun e!1484968 () Bool)

(assert (=> start!228562 (=> (not res!989665) (not e!1484968))))

(declare-fun isBalanced!2735 (Conc!9041) Bool)

(assert (=> start!228562 (= res!989665 (isBalanced!2735 acc!252))))

(assert (=> start!228562 e!1484968))

(assert (=> start!228562 (and (inv!37487 acc!252) e!1484964)))

(declare-fun arr!18 () IArray!18087)

(declare-fun e!1484963 () Bool)

(declare-fun inv!37488 (IArray!18087) Bool)

(assert (=> start!228562 (and (inv!37488 arr!18) e!1484963)))

(declare-fun b!2316255 () Bool)

(declare-fun e!1484969 () Bool)

(declare-fun e!1484967 () Bool)

(assert (=> b!2316255 (= e!1484969 e!1484967)))

(declare-fun res!989668 () Bool)

(assert (=> b!2316255 (=> (not res!989668) (not e!1484967))))

(declare-fun lt!858706 () List!27734)

(declare-fun lt!858707 () List!27734)

(assert (=> b!2316255 (= res!989668 (= lt!858706 lt!858707))))

(declare-fun lt!858713 () Conc!9041)

(declare-fun list!10952 (Conc!9041) List!27734)

(assert (=> b!2316255 (= lt!858707 (list!10952 lt!858713))))

(declare-fun lt!858705 () List!27734)

(declare-fun lt!858708 () List!27734)

(declare-fun lt!858710 () List!27734)

(declare-fun ++!6775 (List!27734 List!27734) List!27734)

(assert (=> b!2316255 (= lt!858706 (++!6775 (++!6775 lt!858705 lt!858708) lt!858710))))

(declare-fun lt!858715 () IArray!18087)

(declare-fun list!10953 (IArray!18087) List!27734)

(assert (=> b!2316255 (= lt!858710 (list!10953 lt!858715))))

(declare-fun lt!858709 () Conc!9041)

(assert (=> b!2316255 (= lt!858708 (list!10952 lt!858709))))

(assert (=> b!2316255 (= lt!858705 (list!10952 acc!252))))

(declare-fun fromArray!13 (IArray!18087 Conc!9041) Conc!9041)

(declare-fun ++!6776 (Conc!9041 Conc!9041) Conc!9041)

(assert (=> b!2316255 (= lt!858713 (fromArray!13 lt!858715 (++!6776 acc!252 lt!858709)))))

(declare-fun lt!858704 () Int)

(declare-fun slice!657 (IArray!18087 Int Int) IArray!18087)

(assert (=> b!2316255 (= lt!858715 (slice!657 arr!18 512 lt!858704))))

(assert (=> b!2316255 (= lt!858709 (Leaf!13271 (slice!657 arr!18 0 512) 512))))

(declare-fun b!2316256 () Bool)

(assert (=> b!2316256 (= e!1484968 e!1484969)))

(declare-fun res!989664 () Bool)

(assert (=> b!2316256 (=> (not res!989664) (not e!1484969))))

(assert (=> b!2316256 (= res!989664 (> lt!858704 512))))

(declare-fun size!21861 (IArray!18087) Int)

(assert (=> b!2316256 (= lt!858704 (size!21861 arr!18))))

(declare-fun b!2316257 () Bool)

(declare-fun res!989667 () Bool)

(declare-fun e!1484966 () Bool)

(assert (=> b!2316257 (=> res!989667 e!1484966)))

(assert (=> b!2316257 (= res!989667 (not (isBalanced!2735 lt!858713)))))

(declare-fun b!2316258 () Bool)

(declare-fun tp!735731 () Bool)

(assert (=> b!2316258 (= e!1484963 tp!735731)))

(declare-fun b!2316259 () Bool)

(assert (=> b!2316259 (= e!1484964 (and (inv!37488 (xs!11987 acc!252)) e!1484965))))

(declare-fun b!2316260 () Bool)

(assert (=> b!2316260 (= e!1484967 (not e!1484966))))

(declare-fun res!989666 () Bool)

(assert (=> b!2316260 (=> res!989666 e!1484966)))

(declare-fun lt!858712 () List!27734)

(assert (=> b!2316260 (= res!989666 (not (= lt!858712 lt!858707)))))

(assert (=> b!2316260 (= lt!858706 lt!858712)))

(assert (=> b!2316260 (= lt!858712 (++!6775 lt!858705 (++!6775 lt!858708 lt!858710)))))

(declare-datatypes ((Unit!40478 0))(
  ( (Unit!40479) )
))
(declare-fun lt!858711 () Unit!40478)

(declare-fun lemmaConcatAssociativity!1437 (List!27734 List!27734 List!27734) Unit!40478)

(assert (=> b!2316260 (= lt!858711 (lemmaConcatAssociativity!1437 lt!858705 lt!858708 lt!858710))))

(declare-fun b!2316261 () Bool)

(assert (=> b!2316261 (= e!1484966 true)))

(declare-fun lt!858714 () Int)

(declare-fun size!21862 (List!27734) Int)

(assert (=> b!2316261 (= lt!858714 (size!21862 (list!10953 arr!18)))))

(assert (= (and start!228562 res!989665) b!2316256))

(assert (= (and b!2316256 res!989664) b!2316255))

(assert (= (and b!2316255 res!989668) b!2316260))

(assert (= (and b!2316260 (not res!989666)) b!2316257))

(assert (= (and b!2316257 (not res!989667)) b!2316261))

(get-info :version)

(assert (= (and start!228562 ((_ is Node!9041) acc!252)) b!2316254))

(assert (= b!2316259 b!2316253))

(assert (= (and start!228562 ((_ is Leaf!13271) acc!252)) b!2316259))

(assert (= start!228562 b!2316258))

(declare-fun m!2743401 () Bool)

(assert (=> b!2316261 m!2743401))

(assert (=> b!2316261 m!2743401))

(declare-fun m!2743403 () Bool)

(assert (=> b!2316261 m!2743403))

(declare-fun m!2743405 () Bool)

(assert (=> b!2316260 m!2743405))

(assert (=> b!2316260 m!2743405))

(declare-fun m!2743407 () Bool)

(assert (=> b!2316260 m!2743407))

(declare-fun m!2743409 () Bool)

(assert (=> b!2316260 m!2743409))

(declare-fun m!2743411 () Bool)

(assert (=> b!2316254 m!2743411))

(declare-fun m!2743413 () Bool)

(assert (=> b!2316254 m!2743413))

(declare-fun m!2743415 () Bool)

(assert (=> start!228562 m!2743415))

(declare-fun m!2743417 () Bool)

(assert (=> start!228562 m!2743417))

(declare-fun m!2743419 () Bool)

(assert (=> start!228562 m!2743419))

(declare-fun m!2743421 () Bool)

(assert (=> b!2316259 m!2743421))

(declare-fun m!2743423 () Bool)

(assert (=> b!2316256 m!2743423))

(declare-fun m!2743425 () Bool)

(assert (=> b!2316255 m!2743425))

(declare-fun m!2743427 () Bool)

(assert (=> b!2316255 m!2743427))

(assert (=> b!2316255 m!2743425))

(declare-fun m!2743429 () Bool)

(assert (=> b!2316255 m!2743429))

(declare-fun m!2743431 () Bool)

(assert (=> b!2316255 m!2743431))

(declare-fun m!2743433 () Bool)

(assert (=> b!2316255 m!2743433))

(declare-fun m!2743435 () Bool)

(assert (=> b!2316255 m!2743435))

(declare-fun m!2743437 () Bool)

(assert (=> b!2316255 m!2743437))

(declare-fun m!2743439 () Bool)

(assert (=> b!2316255 m!2743439))

(assert (=> b!2316255 m!2743427))

(declare-fun m!2743441 () Bool)

(assert (=> b!2316255 m!2743441))

(declare-fun m!2743443 () Bool)

(assert (=> b!2316255 m!2743443))

(declare-fun m!2743445 () Bool)

(assert (=> b!2316257 m!2743445))

(check-sat (not b!2316255) (not b!2316259) (not b!2316256) (not start!228562) (not b!2316258) (not b!2316253) (not b!2316261) (not b!2316254) (not b!2316257) (not b!2316260))
(check-sat)
