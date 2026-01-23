; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228494 () Bool)

(assert start!228494)

(declare-datatypes ((T!43600 0))(
  ( (T!43601 (val!7936 Int)) )
))
(declare-datatypes ((List!27722 0))(
  ( (Nil!27624) (Cons!27624 (h!33025 T!43600) (t!207334 List!27722)) )
))
(declare-datatypes ((IArray!18063 0))(
  ( (IArray!18064 (innerList!9089 List!27722)) )
))
(declare-datatypes ((Conc!9029 0))(
  ( (Node!9029 (left!20940 Conc!9029) (right!21270 Conc!9029) (csize!18288 Int) (cheight!9240 Int)) (Leaf!13253 (xs!11973 IArray!18063) (csize!18289 Int)) (Empty!9029) )
))
(declare-fun acc!252 () Conc!9029)

(declare-fun e!1484566 () Bool)

(declare-fun tp!735523 () Bool)

(declare-fun tp!735520 () Bool)

(declare-fun b!2315632 () Bool)

(declare-fun inv!37437 (Conc!9029) Bool)

(assert (=> b!2315632 (= e!1484566 (and (inv!37437 (left!20940 acc!252)) tp!735520 (inv!37437 (right!21270 acc!252)) tp!735523))))

(declare-fun res!989403 () Bool)

(declare-fun e!1484568 () Bool)

(assert (=> start!228494 (=> (not res!989403) (not e!1484568))))

(declare-fun isBalanced!2723 (Conc!9029) Bool)

(assert (=> start!228494 (= res!989403 (isBalanced!2723 acc!252))))

(assert (=> start!228494 e!1484568))

(assert (=> start!228494 (and (inv!37437 acc!252) e!1484566)))

(declare-fun arr!18 () IArray!18063)

(declare-fun e!1484569 () Bool)

(declare-fun inv!37438 (IArray!18063) Bool)

(assert (=> start!228494 (and (inv!37438 arr!18) e!1484569)))

(declare-fun b!2315633 () Bool)

(declare-fun e!1484567 () Bool)

(declare-fun tp!735521 () Bool)

(assert (=> b!2315633 (= e!1484567 tp!735521)))

(declare-fun b!2315634 () Bool)

(declare-fun e!1484565 () Bool)

(declare-fun lt!858459 () Int)

(assert (=> b!2315634 (= e!1484565 (> 512 lt!858459))))

(declare-fun lt!858458 () IArray!18063)

(declare-fun slice!641 (IArray!18063 Int Int) IArray!18063)

(assert (=> b!2315634 (= lt!858458 (slice!641 arr!18 0 512))))

(declare-fun b!2315635 () Bool)

(declare-fun tp!735522 () Bool)

(assert (=> b!2315635 (= e!1484569 tp!735522)))

(declare-fun b!2315636 () Bool)

(assert (=> b!2315636 (= e!1484566 (and (inv!37438 (xs!11973 acc!252)) e!1484567))))

(declare-fun b!2315637 () Bool)

(assert (=> b!2315637 (= e!1484568 e!1484565)))

(declare-fun res!989404 () Bool)

(assert (=> b!2315637 (=> (not res!989404) (not e!1484565))))

(assert (=> b!2315637 (= res!989404 (> lt!858459 512))))

(declare-fun size!21844 (IArray!18063) Int)

(assert (=> b!2315637 (= lt!858459 (size!21844 arr!18))))

(assert (= (and start!228494 res!989403) b!2315637))

(assert (= (and b!2315637 res!989404) b!2315634))

(get-info :version)

(assert (= (and start!228494 ((_ is Node!9029) acc!252)) b!2315632))

(assert (= b!2315636 b!2315633))

(assert (= (and start!228494 ((_ is Leaf!13253) acc!252)) b!2315636))

(assert (= start!228494 b!2315635))

(declare-fun m!2742715 () Bool)

(assert (=> b!2315637 m!2742715))

(declare-fun m!2742717 () Bool)

(assert (=> b!2315636 m!2742717))

(declare-fun m!2742719 () Bool)

(assert (=> start!228494 m!2742719))

(declare-fun m!2742721 () Bool)

(assert (=> start!228494 m!2742721))

(declare-fun m!2742723 () Bool)

(assert (=> start!228494 m!2742723))

(declare-fun m!2742725 () Bool)

(assert (=> b!2315632 m!2742725))

(declare-fun m!2742727 () Bool)

(assert (=> b!2315632 m!2742727))

(declare-fun m!2742729 () Bool)

(assert (=> b!2315634 m!2742729))

(check-sat (not b!2315634) (not b!2315633) (not b!2315636) (not b!2315637) (not start!228494) (not b!2315632) (not b!2315635))
(check-sat)
