; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228566 () Bool)

(assert start!228566)

(declare-datatypes ((T!43698 0))(
  ( (T!43699 (val!7950 Int)) )
))
(declare-datatypes ((List!27736 0))(
  ( (Nil!27638) (Cons!27638 (h!33039 T!43698) (t!207352 List!27736)) )
))
(declare-datatypes ((IArray!18091 0))(
  ( (IArray!18092 (innerList!9103 List!27736)) )
))
(declare-datatypes ((Conc!9043 0))(
  ( (Node!9043 (left!20961 Conc!9043) (right!21291 Conc!9043) (csize!18316 Int) (cheight!9254 Int)) (Leaf!13274 (xs!11989 IArray!18091) (csize!18317 Int)) (Empty!9043) )
))
(declare-fun acc!252 () Conc!9043)

(declare-fun e!1485008 () Bool)

(declare-fun tp!735755 () Bool)

(declare-fun b!2316307 () Bool)

(declare-fun tp!735752 () Bool)

(declare-fun inv!37494 (Conc!9043) Bool)

(assert (=> b!2316307 (= e!1485008 (and (inv!37494 (left!20961 acc!252)) tp!735752 (inv!37494 (right!21291 acc!252)) tp!735755))))

(declare-fun b!2316308 () Bool)

(declare-fun e!1485006 () Bool)

(declare-fun lt!858786 () Int)

(assert (=> b!2316308 (= e!1485006 (<= 512 lt!858786))))

(declare-fun lt!858781 () List!27736)

(declare-fun ++!6779 (List!27736 List!27736) List!27736)

(declare-fun slice!660 (List!27736 Int Int) List!27736)

(declare-fun size!21865 (List!27736) Int)

(assert (=> b!2316308 (= (++!6779 (slice!660 lt!858781 0 512) (slice!660 lt!858781 512 (size!21865 lt!858781))) lt!858781)))

(declare-datatypes ((Unit!40482 0))(
  ( (Unit!40483) )
))
(declare-fun lt!858785 () Unit!40482)

(declare-fun sliceSplit!6 (List!27736 Int) Unit!40482)

(assert (=> b!2316308 (= lt!858785 (sliceSplit!6 lt!858781 512))))

(declare-fun arr!18 () IArray!18091)

(declare-fun list!10956 (IArray!18091) List!27736)

(assert (=> b!2316308 (= lt!858781 (list!10956 arr!18))))

(declare-fun res!989695 () Bool)

(declare-fun e!1485005 () Bool)

(assert (=> start!228566 (=> (not res!989695) (not e!1485005))))

(declare-fun isBalanced!2737 (Conc!9043) Bool)

(assert (=> start!228566 (= res!989695 (isBalanced!2737 acc!252))))

(assert (=> start!228566 e!1485005))

(assert (=> start!228566 (and (inv!37494 acc!252) e!1485008)))

(declare-fun e!1485011 () Bool)

(declare-fun inv!37495 (IArray!18091) Bool)

(assert (=> start!228566 (and (inv!37495 arr!18) e!1485011)))

(declare-fun b!2316309 () Bool)

(declare-fun e!1485007 () Bool)

(declare-fun tp!735754 () Bool)

(assert (=> b!2316309 (= e!1485007 tp!735754)))

(declare-fun b!2316310 () Bool)

(declare-fun e!1485010 () Bool)

(assert (=> b!2316310 (= e!1485005 e!1485010)))

(declare-fun res!989698 () Bool)

(assert (=> b!2316310 (=> (not res!989698) (not e!1485010))))

(assert (=> b!2316310 (= res!989698 (> lt!858786 512))))

(declare-fun size!21866 (IArray!18091) Int)

(assert (=> b!2316310 (= lt!858786 (size!21866 arr!18))))

(declare-fun b!2316311 () Bool)

(declare-fun e!1485009 () Bool)

(assert (=> b!2316311 (= e!1485009 (not e!1485006))))

(declare-fun res!989694 () Bool)

(assert (=> b!2316311 (=> res!989694 e!1485006)))

(declare-fun lt!858787 () List!27736)

(declare-fun lt!858783 () List!27736)

(assert (=> b!2316311 (= res!989694 (not (= lt!858787 lt!858783)))))

(declare-fun lt!858788 () List!27736)

(assert (=> b!2316311 (= lt!858788 lt!858787)))

(declare-fun lt!858791 () List!27736)

(declare-fun lt!858790 () List!27736)

(declare-fun lt!858793 () List!27736)

(assert (=> b!2316311 (= lt!858787 (++!6779 lt!858793 (++!6779 lt!858791 lt!858790)))))

(declare-fun lt!858782 () Unit!40482)

(declare-fun lemmaConcatAssociativity!1439 (List!27736 List!27736 List!27736) Unit!40482)

(assert (=> b!2316311 (= lt!858782 (lemmaConcatAssociativity!1439 lt!858793 lt!858791 lt!858790))))

(declare-fun b!2316312 () Bool)

(declare-fun tp!735753 () Bool)

(assert (=> b!2316312 (= e!1485011 tp!735753)))

(declare-fun b!2316313 () Bool)

(assert (=> b!2316313 (= e!1485008 (and (inv!37495 (xs!11989 acc!252)) e!1485007))))

(declare-fun b!2316314 () Bool)

(assert (=> b!2316314 (= e!1485010 e!1485009)))

(declare-fun res!989697 () Bool)

(assert (=> b!2316314 (=> (not res!989697) (not e!1485009))))

(assert (=> b!2316314 (= res!989697 (= lt!858788 lt!858783))))

(declare-fun lt!858789 () Conc!9043)

(declare-fun list!10957 (Conc!9043) List!27736)

(assert (=> b!2316314 (= lt!858783 (list!10957 lt!858789))))

(assert (=> b!2316314 (= lt!858788 (++!6779 (++!6779 lt!858793 lt!858791) lt!858790))))

(declare-fun lt!858784 () IArray!18091)

(assert (=> b!2316314 (= lt!858790 (list!10956 lt!858784))))

(declare-fun lt!858792 () Conc!9043)

(assert (=> b!2316314 (= lt!858791 (list!10957 lt!858792))))

(assert (=> b!2316314 (= lt!858793 (list!10957 acc!252))))

(declare-fun fromArray!15 (IArray!18091 Conc!9043) Conc!9043)

(declare-fun ++!6780 (Conc!9043 Conc!9043) Conc!9043)

(assert (=> b!2316314 (= lt!858789 (fromArray!15 lt!858784 (++!6780 acc!252 lt!858792)))))

(declare-fun slice!661 (IArray!18091 Int Int) IArray!18091)

(assert (=> b!2316314 (= lt!858784 (slice!661 arr!18 512 lt!858786))))

(assert (=> b!2316314 (= lt!858792 (Leaf!13274 (slice!661 arr!18 0 512) 512))))

(declare-fun b!2316315 () Bool)

(declare-fun res!989696 () Bool)

(assert (=> b!2316315 (=> res!989696 e!1485006)))

(assert (=> b!2316315 (= res!989696 (not (isBalanced!2737 lt!858789)))))

(assert (= (and start!228566 res!989695) b!2316310))

(assert (= (and b!2316310 res!989698) b!2316314))

(assert (= (and b!2316314 res!989697) b!2316311))

(assert (= (and b!2316311 (not res!989694)) b!2316315))

(assert (= (and b!2316315 (not res!989696)) b!2316308))

(get-info :version)

(assert (= (and start!228566 ((_ is Node!9043) acc!252)) b!2316307))

(assert (= b!2316313 b!2316309))

(assert (= (and start!228566 ((_ is Leaf!13274) acc!252)) b!2316313))

(assert (= start!228566 b!2316312))

(declare-fun m!2743501 () Bool)

(assert (=> b!2316313 m!2743501))

(declare-fun m!2743503 () Bool)

(assert (=> b!2316315 m!2743503))

(declare-fun m!2743505 () Bool)

(assert (=> start!228566 m!2743505))

(declare-fun m!2743507 () Bool)

(assert (=> start!228566 m!2743507))

(declare-fun m!2743509 () Bool)

(assert (=> start!228566 m!2743509))

(declare-fun m!2743511 () Bool)

(assert (=> b!2316310 m!2743511))

(declare-fun m!2743513 () Bool)

(assert (=> b!2316308 m!2743513))

(declare-fun m!2743515 () Bool)

(assert (=> b!2316308 m!2743515))

(declare-fun m!2743517 () Bool)

(assert (=> b!2316308 m!2743517))

(declare-fun m!2743519 () Bool)

(assert (=> b!2316308 m!2743519))

(declare-fun m!2743521 () Bool)

(assert (=> b!2316308 m!2743521))

(declare-fun m!2743523 () Bool)

(assert (=> b!2316308 m!2743523))

(assert (=> b!2316308 m!2743515))

(assert (=> b!2316308 m!2743521))

(assert (=> b!2316308 m!2743519))

(declare-fun m!2743525 () Bool)

(assert (=> b!2316314 m!2743525))

(declare-fun m!2743527 () Bool)

(assert (=> b!2316314 m!2743527))

(declare-fun m!2743529 () Bool)

(assert (=> b!2316314 m!2743529))

(declare-fun m!2743531 () Bool)

(assert (=> b!2316314 m!2743531))

(assert (=> b!2316314 m!2743525))

(declare-fun m!2743533 () Bool)

(assert (=> b!2316314 m!2743533))

(declare-fun m!2743535 () Bool)

(assert (=> b!2316314 m!2743535))

(declare-fun m!2743537 () Bool)

(assert (=> b!2316314 m!2743537))

(declare-fun m!2743539 () Bool)

(assert (=> b!2316314 m!2743539))

(declare-fun m!2743541 () Bool)

(assert (=> b!2316314 m!2743541))

(assert (=> b!2316314 m!2743529))

(declare-fun m!2743543 () Bool)

(assert (=> b!2316314 m!2743543))

(declare-fun m!2743545 () Bool)

(assert (=> b!2316307 m!2743545))

(declare-fun m!2743547 () Bool)

(assert (=> b!2316307 m!2743547))

(declare-fun m!2743549 () Bool)

(assert (=> b!2316311 m!2743549))

(assert (=> b!2316311 m!2743549))

(declare-fun m!2743551 () Bool)

(assert (=> b!2316311 m!2743551))

(declare-fun m!2743553 () Bool)

(assert (=> b!2316311 m!2743553))

(check-sat (not b!2316310) (not b!2316307) (not b!2316315) (not b!2316312) (not b!2316311) (not b!2316308) (not b!2316314) (not b!2316313) (not b!2316309) (not start!228566))
(check-sat)
