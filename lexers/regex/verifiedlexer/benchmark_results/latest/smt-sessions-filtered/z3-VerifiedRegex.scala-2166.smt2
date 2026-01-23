; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107676 () Bool)

(assert start!107676)

(declare-fun b!1209165 () Bool)

(declare-fun e!775645 () Bool)

(declare-fun tp!342600 () Bool)

(declare-fun tp!342598 () Bool)

(assert (=> b!1209165 (= e!775645 (and tp!342600 tp!342598))))

(declare-fun b!1209166 () Bool)

(declare-fun e!775641 () Bool)

(declare-fun from!777 () Int)

(declare-fun lt!413491 () Int)

(assert (=> b!1209166 (= e!775641 (< from!777 lt!413491))))

(declare-datatypes ((T!22538 0))(
  ( (T!22539 (val!3996 Int)) )
))
(declare-datatypes ((List!12229 0))(
  ( (Nil!12178) (Cons!12178 (h!17579 T!22538) (t!112620 List!12229)) )
))
(declare-fun lt!413493 () List!12229)

(declare-fun lt!413485 () List!12229)

(declare-fun tail!1756 (List!12229) List!12229)

(declare-fun drop!642 (List!12229 Int) List!12229)

(assert (=> b!1209166 (= (tail!1756 lt!413493) (drop!642 lt!413485 (+ 1 from!777)))))

(declare-datatypes ((Unit!18556 0))(
  ( (Unit!18557) )
))
(declare-fun lt!413484 () Unit!18556)

(declare-fun lemmaDropTail!387 (List!12229 Int) Unit!18556)

(assert (=> b!1209166 (= lt!413484 (lemmaDropTail!387 lt!413485 from!777))))

(declare-fun lt!413490 () List!12229)

(declare-fun lt!413489 () List!12229)

(assert (=> b!1209166 (= (tail!1756 lt!413490) (drop!642 lt!413489 (+ 1 from!777)))))

(declare-fun lt!413488 () Unit!18556)

(assert (=> b!1209166 (= lt!413488 (lemmaDropTail!387 lt!413489 from!777))))

(declare-fun head!2138 (List!12229) T!22538)

(declare-fun apply!2627 (List!12229 Int) T!22538)

(assert (=> b!1209166 (= (head!2138 lt!413493) (apply!2627 lt!413485 from!777))))

(assert (=> b!1209166 (= lt!413493 (drop!642 lt!413485 from!777))))

(declare-fun lt!413487 () Unit!18556)

(declare-fun lemmaDropApply!407 (List!12229 Int) Unit!18556)

(assert (=> b!1209166 (= lt!413487 (lemmaDropApply!407 lt!413485 from!777))))

(assert (=> b!1209166 (= (head!2138 lt!413490) (apply!2627 lt!413489 from!777))))

(assert (=> b!1209166 (= lt!413490 (drop!642 lt!413489 from!777))))

(declare-fun lt!413486 () Unit!18556)

(assert (=> b!1209166 (= lt!413486 (lemmaDropApply!407 lt!413489 from!777))))

(declare-fun res!543763 () Bool)

(declare-fun e!775643 () Bool)

(assert (=> start!107676 (=> (not res!543763) (not e!775643))))

(assert (=> start!107676 (= res!543763 (<= 0 from!777))))

(assert (=> start!107676 e!775643))

(assert (=> start!107676 true))

(declare-fun e!775642 () Bool)

(assert (=> start!107676 e!775642))

(assert (=> start!107676 e!775645))

(declare-fun b!1209167 () Bool)

(declare-fun e!775644 () Bool)

(assert (=> b!1209167 (= e!775644 e!775641)))

(declare-fun res!543762 () Bool)

(assert (=> b!1209167 (=> res!543762 e!775641)))

(declare-fun lt!413492 () Int)

(assert (=> b!1209167 (= res!543762 (or (not (= lt!413491 lt!413492)) (= from!777 lt!413491)))))

(declare-fun size!9720 (List!12229) Int)

(assert (=> b!1209167 (= lt!413492 (size!9720 lt!413485))))

(declare-datatypes ((List!12231 0) (IArray!8033 0) (Conc!4014 0) (BalanceConc!7954 0) (Object!2216 0))(
  ( (Nil!12179) (Cons!12179 (h!17580 Object!2216) (t!112621 List!12231)) )
  ( (IArray!8034 (innerList!4074 List!12231)) )
  ( (Node!4014 (left!10604 Conc!4014) (right!10934 Conc!4014) (csize!8258 Int) (cheight!4225 Int)) (Leaf!6181 (xs!6725 IArray!8033) (csize!8259 Int)) (Empty!4014) )
  ( (BalanceConc!7955 (c!202486 Conc!4014)) )
  ( (BalanceConc!7953 (value!68244 BalanceConc!7954)) (List!12230 (value!68245 List!12231)) (Character!50 (value!68246 (_ BitVec 16))) (Open!50 (value!68247 Int)) )
))
(declare-datatypes ((Vector!104 0))(
  ( (Vector!105 (underlying!2796 Object!2216) (overflowing!109 List!12229)) )
))
(declare-fun other!28 () Vector!104)

(declare-fun list!4533 (Vector!104) List!12229)

(assert (=> b!1209167 (= lt!413485 (list!4533 other!28))))

(declare-fun size!9721 (Vector!104) Int)

(assert (=> b!1209167 (= lt!413492 (size!9721 other!28))))

(declare-fun b!1209168 () Bool)

(declare-fun tp!342601 () Bool)

(declare-fun tp!342599 () Bool)

(assert (=> b!1209168 (= e!775642 (and tp!342601 tp!342599))))

(declare-fun b!1209169 () Bool)

(assert (=> b!1209169 (= e!775643 (not e!775644))))

(declare-fun res!543761 () Bool)

(assert (=> b!1209169 (=> res!543761 e!775644)))

(assert (=> b!1209169 (= res!543761 (> from!777 lt!413491))))

(assert (=> b!1209169 (= lt!413491 (size!9720 lt!413489))))

(declare-fun thiss!9565 () Vector!104)

(assert (=> b!1209169 (= lt!413489 (list!4533 thiss!9565))))

(assert (=> b!1209169 (= lt!413491 (size!9721 thiss!9565))))

(assert (= (and start!107676 res!543763) b!1209169))

(assert (= (and b!1209169 (not res!543761)) b!1209167))

(assert (= (and b!1209167 (not res!543762)) b!1209166))

(assert (= start!107676 b!1209168))

(assert (= start!107676 b!1209165))

(declare-fun m!1384819 () Bool)

(assert (=> b!1209166 m!1384819))

(declare-fun m!1384821 () Bool)

(assert (=> b!1209166 m!1384821))

(declare-fun m!1384823 () Bool)

(assert (=> b!1209166 m!1384823))

(declare-fun m!1384825 () Bool)

(assert (=> b!1209166 m!1384825))

(declare-fun m!1384827 () Bool)

(assert (=> b!1209166 m!1384827))

(declare-fun m!1384829 () Bool)

(assert (=> b!1209166 m!1384829))

(declare-fun m!1384831 () Bool)

(assert (=> b!1209166 m!1384831))

(declare-fun m!1384833 () Bool)

(assert (=> b!1209166 m!1384833))

(declare-fun m!1384835 () Bool)

(assert (=> b!1209166 m!1384835))

(declare-fun m!1384837 () Bool)

(assert (=> b!1209166 m!1384837))

(declare-fun m!1384839 () Bool)

(assert (=> b!1209166 m!1384839))

(declare-fun m!1384841 () Bool)

(assert (=> b!1209166 m!1384841))

(declare-fun m!1384843 () Bool)

(assert (=> b!1209166 m!1384843))

(declare-fun m!1384845 () Bool)

(assert (=> b!1209166 m!1384845))

(declare-fun m!1384847 () Bool)

(assert (=> b!1209167 m!1384847))

(declare-fun m!1384849 () Bool)

(assert (=> b!1209167 m!1384849))

(declare-fun m!1384851 () Bool)

(assert (=> b!1209167 m!1384851))

(declare-fun m!1384853 () Bool)

(assert (=> b!1209169 m!1384853))

(declare-fun m!1384855 () Bool)

(assert (=> b!1209169 m!1384855))

(declare-fun m!1384857 () Bool)

(assert (=> b!1209169 m!1384857))

(check-sat (not b!1209166) (not b!1209167) (not b!1209165) (not b!1209169) (not b!1209168))
(check-sat)
