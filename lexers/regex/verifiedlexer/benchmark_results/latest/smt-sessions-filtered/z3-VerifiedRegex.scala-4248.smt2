; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229518 () Bool)

(assert start!229518)

(declare-fun b!2325668 () Bool)

(declare-fun e!1490156 () Bool)

(declare-fun e!1490158 () Bool)

(assert (=> b!2325668 (= e!1490156 e!1490158)))

(declare-fun res!993324 () Bool)

(assert (=> b!2325668 (=> (not res!993324) (not e!1490158))))

(declare-fun lt!861461 () Int)

(assert (=> b!2325668 (= res!993324 (> lt!861461 512))))

(declare-datatypes ((T!43950 0))(
  ( (T!43951 (val!7986 Int)) )
))
(declare-datatypes ((List!27772 0))(
  ( (Nil!27674) (Cons!27674 (h!33075 T!43950) (t!207474 List!27772)) )
))
(declare-datatypes ((IArray!18163 0))(
  ( (IArray!18164 (innerList!9139 List!27772)) )
))
(declare-fun arr!18 () IArray!18163)

(declare-fun size!21949 (IArray!18163) Int)

(assert (=> b!2325668 (= lt!861461 (size!21949 arr!18))))

(declare-fun b!2325669 () Bool)

(declare-fun e!1490153 () Bool)

(declare-fun tp!737086 () Bool)

(assert (=> b!2325669 (= e!1490153 tp!737086)))

(declare-fun b!2325670 () Bool)

(declare-fun e!1490154 () Bool)

(assert (=> b!2325670 (= e!1490158 e!1490154)))

(declare-fun res!993323 () Bool)

(assert (=> b!2325670 (=> (not res!993323) (not e!1490154))))

(declare-fun lt!861449 () List!27772)

(declare-fun lt!861450 () List!27772)

(assert (=> b!2325670 (= res!993323 (= lt!861449 lt!861450))))

(declare-datatypes ((Conc!9079 0))(
  ( (Node!9079 (left!21015 Conc!9079) (right!21345 Conc!9079) (csize!18388 Int) (cheight!9290 Int)) (Leaf!13328 (xs!12059 IArray!18163) (csize!18389 Int)) (Empty!9079) )
))
(declare-fun lt!861457 () Conc!9079)

(declare-fun list!11024 (Conc!9079) List!27772)

(assert (=> b!2325670 (= lt!861450 (list!11024 lt!861457))))

(declare-fun lt!861459 () List!27772)

(declare-fun lt!861448 () List!27772)

(declare-fun lt!861454 () List!27772)

(declare-fun ++!6835 (List!27772 List!27772) List!27772)

(assert (=> b!2325670 (= lt!861449 (++!6835 (++!6835 lt!861448 lt!861454) lt!861459))))

(declare-fun lt!861452 () IArray!18163)

(declare-fun list!11025 (IArray!18163) List!27772)

(assert (=> b!2325670 (= lt!861459 (list!11025 lt!861452))))

(declare-fun lt!861453 () Conc!9079)

(assert (=> b!2325670 (= lt!861454 (list!11024 lt!861453))))

(declare-fun acc!252 () Conc!9079)

(assert (=> b!2325670 (= lt!861448 (list!11024 acc!252))))

(declare-fun fromArray!37 (IArray!18163 Conc!9079) Conc!9079)

(declare-fun ++!6836 (Conc!9079 Conc!9079) Conc!9079)

(assert (=> b!2325670 (= lt!861457 (fromArray!37 lt!861452 (++!6836 acc!252 lt!861453)))))

(declare-fun slice!712 (IArray!18163 Int Int) IArray!18163)

(assert (=> b!2325670 (= lt!861452 (slice!712 arr!18 512 lt!861461))))

(assert (=> b!2325670 (= lt!861453 (Leaf!13328 (slice!712 arr!18 0 512) 512))))

(declare-fun b!2325672 () Bool)

(declare-fun res!993322 () Bool)

(declare-fun e!1490159 () Bool)

(assert (=> b!2325672 (=> res!993322 e!1490159)))

(declare-fun isBalanced!2773 (Conc!9079) Bool)

(assert (=> b!2325672 (= res!993322 (not (isBalanced!2773 lt!861457)))))

(declare-fun b!2325673 () Bool)

(declare-fun e!1490157 () Bool)

(assert (=> b!2325673 (= e!1490157 true)))

(declare-fun lt!861447 () List!27772)

(declare-fun lt!861456 () List!27772)

(assert (=> b!2325673 (= lt!861447 (++!6835 lt!861448 lt!861456))))

(declare-fun b!2325674 () Bool)

(assert (=> b!2325674 (= e!1490154 (not e!1490159))))

(declare-fun res!993319 () Bool)

(assert (=> b!2325674 (=> res!993319 e!1490159)))

(declare-fun lt!861458 () List!27772)

(assert (=> b!2325674 (= res!993319 (not (= lt!861458 lt!861450)))))

(assert (=> b!2325674 (= lt!861449 lt!861458)))

(declare-fun lt!861455 () List!27772)

(assert (=> b!2325674 (= lt!861458 (++!6835 lt!861448 lt!861455))))

(assert (=> b!2325674 (= lt!861455 (++!6835 lt!861454 lt!861459))))

(declare-datatypes ((Unit!40526 0))(
  ( (Unit!40527) )
))
(declare-fun lt!861460 () Unit!40526)

(declare-fun lemmaConcatAssociativity!1461 (List!27772 List!27772 List!27772) Unit!40526)

(assert (=> b!2325674 (= lt!861460 (lemmaConcatAssociativity!1461 lt!861448 lt!861454 lt!861459))))

(declare-fun tp!737084 () Bool)

(declare-fun b!2325675 () Bool)

(declare-fun tp!737085 () Bool)

(declare-fun e!1490155 () Bool)

(declare-fun inv!37672 (Conc!9079) Bool)

(assert (=> b!2325675 (= e!1490155 (and (inv!37672 (left!21015 acc!252)) tp!737085 (inv!37672 (right!21345 acc!252)) tp!737084))))

(declare-fun b!2325676 () Bool)

(assert (=> b!2325676 (= e!1490159 e!1490157)))

(declare-fun res!993320 () Bool)

(assert (=> b!2325676 (=> res!993320 e!1490157)))

(assert (=> b!2325676 (= res!993320 (not (= lt!861455 lt!861456)))))

(declare-fun slice!713 (List!27772 Int Int) List!27772)

(declare-fun size!21950 (List!27772) Int)

(assert (=> b!2325676 (= (++!6835 (slice!713 lt!861456 0 512) (slice!713 lt!861456 512 (size!21950 lt!861456))) lt!861456)))

(declare-fun lt!861451 () Unit!40526)

(declare-fun sliceSplit!26 (List!27772 Int) Unit!40526)

(assert (=> b!2325676 (= lt!861451 (sliceSplit!26 lt!861456 512))))

(assert (=> b!2325676 (= lt!861456 (list!11025 arr!18))))

(declare-fun b!2325677 () Bool)

(declare-fun e!1490152 () Bool)

(declare-fun tp!737087 () Bool)

(assert (=> b!2325677 (= e!1490152 tp!737087)))

(declare-fun b!2325671 () Bool)

(declare-fun inv!37673 (IArray!18163) Bool)

(assert (=> b!2325671 (= e!1490155 (and (inv!37673 (xs!12059 acc!252)) e!1490153))))

(declare-fun res!993321 () Bool)

(assert (=> start!229518 (=> (not res!993321) (not e!1490156))))

(assert (=> start!229518 (= res!993321 (isBalanced!2773 acc!252))))

(assert (=> start!229518 e!1490156))

(assert (=> start!229518 (and (inv!37672 acc!252) e!1490155)))

(assert (=> start!229518 (and (inv!37673 arr!18) e!1490152)))

(assert (= (and start!229518 res!993321) b!2325668))

(assert (= (and b!2325668 res!993324) b!2325670))

(assert (= (and b!2325670 res!993323) b!2325674))

(assert (= (and b!2325674 (not res!993319)) b!2325672))

(assert (= (and b!2325672 (not res!993322)) b!2325676))

(assert (= (and b!2325676 (not res!993320)) b!2325673))

(get-info :version)

(assert (= (and start!229518 ((_ is Node!9079) acc!252)) b!2325675))

(assert (= b!2325671 b!2325669))

(assert (= (and start!229518 ((_ is Leaf!13328) acc!252)) b!2325671))

(assert (= start!229518 b!2325677))

(declare-fun m!2756883 () Bool)

(assert (=> start!229518 m!2756883))

(declare-fun m!2756885 () Bool)

(assert (=> start!229518 m!2756885))

(declare-fun m!2756887 () Bool)

(assert (=> start!229518 m!2756887))

(declare-fun m!2756889 () Bool)

(assert (=> b!2325673 m!2756889))

(declare-fun m!2756891 () Bool)

(assert (=> b!2325668 m!2756891))

(declare-fun m!2756893 () Bool)

(assert (=> b!2325675 m!2756893))

(declare-fun m!2756895 () Bool)

(assert (=> b!2325675 m!2756895))

(declare-fun m!2756897 () Bool)

(assert (=> b!2325670 m!2756897))

(declare-fun m!2756899 () Bool)

(assert (=> b!2325670 m!2756899))

(declare-fun m!2756901 () Bool)

(assert (=> b!2325670 m!2756901))

(declare-fun m!2756903 () Bool)

(assert (=> b!2325670 m!2756903))

(declare-fun m!2756905 () Bool)

(assert (=> b!2325670 m!2756905))

(declare-fun m!2756907 () Bool)

(assert (=> b!2325670 m!2756907))

(declare-fun m!2756909 () Bool)

(assert (=> b!2325670 m!2756909))

(declare-fun m!2756911 () Bool)

(assert (=> b!2325670 m!2756911))

(assert (=> b!2325670 m!2756897))

(declare-fun m!2756913 () Bool)

(assert (=> b!2325670 m!2756913))

(assert (=> b!2325670 m!2756905))

(declare-fun m!2756915 () Bool)

(assert (=> b!2325670 m!2756915))

(declare-fun m!2756917 () Bool)

(assert (=> b!2325671 m!2756917))

(declare-fun m!2756919 () Bool)

(assert (=> b!2325674 m!2756919))

(declare-fun m!2756921 () Bool)

(assert (=> b!2325674 m!2756921))

(declare-fun m!2756923 () Bool)

(assert (=> b!2325674 m!2756923))

(declare-fun m!2756925 () Bool)

(assert (=> b!2325672 m!2756925))

(declare-fun m!2756927 () Bool)

(assert (=> b!2325676 m!2756927))

(declare-fun m!2756929 () Bool)

(assert (=> b!2325676 m!2756929))

(declare-fun m!2756931 () Bool)

(assert (=> b!2325676 m!2756931))

(assert (=> b!2325676 m!2756931))

(declare-fun m!2756933 () Bool)

(assert (=> b!2325676 m!2756933))

(declare-fun m!2756935 () Bool)

(assert (=> b!2325676 m!2756935))

(assert (=> b!2325676 m!2756935))

(assert (=> b!2325676 m!2756933))

(declare-fun m!2756937 () Bool)

(assert (=> b!2325676 m!2756937))

(check-sat (not b!2325669) (not b!2325673) (not b!2325670) (not b!2325674) (not start!229518) (not b!2325672) (not b!2325677) (not b!2325671) (not b!2325675) (not b!2325668) (not b!2325676))
(check-sat)
