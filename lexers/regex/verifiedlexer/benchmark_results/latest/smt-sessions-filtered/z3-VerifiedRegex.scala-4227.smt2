; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228554 () Bool)

(assert start!228554)

(declare-fun b!2316159 () Bool)

(declare-fun e!1484891 () Bool)

(declare-fun e!1484887 () Bool)

(assert (=> b!2316159 (= e!1484891 e!1484887)))

(declare-fun res!989618 () Bool)

(assert (=> b!2316159 (=> (not res!989618) (not e!1484887))))

(declare-datatypes ((T!43656 0))(
  ( (T!43657 (val!7944 Int)) )
))
(declare-datatypes ((List!27730 0))(
  ( (Nil!27632) (Cons!27632 (h!33033 T!43656) (t!207346 List!27730)) )
))
(declare-datatypes ((IArray!18079 0))(
  ( (IArray!18080 (innerList!9097 List!27730)) )
))
(declare-datatypes ((Conc!9037 0))(
  ( (Node!9037 (left!20952 Conc!9037) (right!21282 Conc!9037) (csize!18304 Int) (cheight!9248 Int)) (Leaf!13265 (xs!11983 IArray!18079) (csize!18305 Int)) (Empty!9037) )
))
(declare-fun acc!252 () Conc!9037)

(declare-fun lt!858587 () IArray!18079)

(declare-fun lt!858589 () Conc!9037)

(declare-fun ++!6767 (List!27730 List!27730) List!27730)

(declare-fun list!10944 (Conc!9037) List!27730)

(declare-fun list!10945 (IArray!18079) List!27730)

(declare-fun fromArray!9 (IArray!18079 Conc!9037) Conc!9037)

(declare-fun ++!6768 (Conc!9037 Conc!9037) Conc!9037)

(assert (=> b!2316159 (= res!989618 (= (++!6767 (++!6767 (list!10944 acc!252) (list!10944 lt!858589)) (list!10945 lt!858587)) (list!10944 (fromArray!9 lt!858587 (++!6768 acc!252 lt!858589)))))))

(declare-fun arr!18 () IArray!18079)

(declare-fun lt!858588 () Int)

(declare-fun slice!653 (IArray!18079 Int Int) IArray!18079)

(assert (=> b!2316159 (= lt!858587 (slice!653 arr!18 512 lt!858588))))

(assert (=> b!2316159 (= lt!858589 (Leaf!13265 (slice!653 arr!18 0 512) 512))))

(declare-fun b!2316160 () Bool)

(assert (=> b!2316160 (= e!1484887 (> 512 lt!858588))))

(declare-fun b!2316161 () Bool)

(declare-fun e!1484888 () Bool)

(declare-fun e!1484886 () Bool)

(declare-fun inv!37473 (IArray!18079) Bool)

(assert (=> b!2316161 (= e!1484888 (and (inv!37473 (xs!11983 acc!252)) e!1484886))))

(declare-fun b!2316162 () Bool)

(declare-fun e!1484889 () Bool)

(declare-fun tp!735680 () Bool)

(assert (=> b!2316162 (= e!1484889 tp!735680)))

(declare-fun b!2316163 () Bool)

(declare-fun e!1484890 () Bool)

(assert (=> b!2316163 (= e!1484890 e!1484891)))

(declare-fun res!989619 () Bool)

(assert (=> b!2316163 (=> (not res!989619) (not e!1484891))))

(assert (=> b!2316163 (= res!989619 (> lt!858588 512))))

(declare-fun size!21856 (IArray!18079) Int)

(assert (=> b!2316163 (= lt!858588 (size!21856 arr!18))))

(declare-fun res!989620 () Bool)

(assert (=> start!228554 (=> (not res!989620) (not e!1484890))))

(declare-fun isBalanced!2731 (Conc!9037) Bool)

(assert (=> start!228554 (= res!989620 (isBalanced!2731 acc!252))))

(assert (=> start!228554 e!1484890))

(declare-fun inv!37474 (Conc!9037) Bool)

(assert (=> start!228554 (and (inv!37474 acc!252) e!1484888)))

(assert (=> start!228554 (and (inv!37473 arr!18) e!1484889)))

(declare-fun b!2316164 () Bool)

(declare-fun tp!735681 () Bool)

(assert (=> b!2316164 (= e!1484886 tp!735681)))

(declare-fun tp!735682 () Bool)

(declare-fun tp!735683 () Bool)

(declare-fun b!2316165 () Bool)

(assert (=> b!2316165 (= e!1484888 (and (inv!37474 (left!20952 acc!252)) tp!735682 (inv!37474 (right!21282 acc!252)) tp!735683))))

(assert (= (and start!228554 res!989620) b!2316163))

(assert (= (and b!2316163 res!989619) b!2316159))

(assert (= (and b!2316159 res!989618) b!2316160))

(get-info :version)

(assert (= (and start!228554 ((_ is Node!9037) acc!252)) b!2316165))

(assert (= b!2316161 b!2316164))

(assert (= (and start!228554 ((_ is Leaf!13265) acc!252)) b!2316161))

(assert (= start!228554 b!2316162))

(declare-fun m!2743241 () Bool)

(assert (=> b!2316163 m!2743241))

(declare-fun m!2743243 () Bool)

(assert (=> b!2316159 m!2743243))

(declare-fun m!2743245 () Bool)

(assert (=> b!2316159 m!2743245))

(declare-fun m!2743247 () Bool)

(assert (=> b!2316159 m!2743247))

(declare-fun m!2743249 () Bool)

(assert (=> b!2316159 m!2743249))

(declare-fun m!2743251 () Bool)

(assert (=> b!2316159 m!2743251))

(declare-fun m!2743253 () Bool)

(assert (=> b!2316159 m!2743253))

(assert (=> b!2316159 m!2743245))

(declare-fun m!2743255 () Bool)

(assert (=> b!2316159 m!2743255))

(declare-fun m!2743257 () Bool)

(assert (=> b!2316159 m!2743257))

(declare-fun m!2743259 () Bool)

(assert (=> b!2316159 m!2743259))

(assert (=> b!2316159 m!2743251))

(assert (=> b!2316159 m!2743249))

(assert (=> b!2316159 m!2743255))

(assert (=> b!2316159 m!2743243))

(assert (=> b!2316159 m!2743259))

(declare-fun m!2743261 () Bool)

(assert (=> b!2316159 m!2743261))

(declare-fun m!2743263 () Bool)

(assert (=> b!2316161 m!2743263))

(declare-fun m!2743265 () Bool)

(assert (=> start!228554 m!2743265))

(declare-fun m!2743267 () Bool)

(assert (=> start!228554 m!2743267))

(declare-fun m!2743269 () Bool)

(assert (=> start!228554 m!2743269))

(declare-fun m!2743271 () Bool)

(assert (=> b!2316165 m!2743271))

(declare-fun m!2743273 () Bool)

(assert (=> b!2316165 m!2743273))

(check-sat (not b!2316162) (not b!2316165) (not b!2316159) (not b!2316164) (not start!228554) (not b!2316161) (not b!2316163))
(check-sat)
