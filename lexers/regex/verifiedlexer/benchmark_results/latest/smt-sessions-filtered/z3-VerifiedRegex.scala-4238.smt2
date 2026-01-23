; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228906 () Bool)

(assert start!228906)

(declare-fun b!2319520 () Bool)

(declare-fun e!1486791 () Bool)

(declare-fun e!1486792 () Bool)

(assert (=> b!2319520 (= e!1486791 e!1486792)))

(declare-fun res!990909 () Bool)

(assert (=> b!2319520 (=> (not res!990909) (not e!1486792))))

(declare-fun lt!860195 () Int)

(assert (=> b!2319520 (= res!990909 (> lt!860195 512))))

(declare-datatypes ((T!43810 0))(
  ( (T!43811 (val!7966 Int)) )
))
(declare-datatypes ((List!27752 0))(
  ( (Nil!27654) (Cons!27654 (h!33055 T!43810) (t!207392 List!27752)) )
))
(declare-datatypes ((IArray!18123 0))(
  ( (IArray!18124 (innerList!9119 List!27752)) )
))
(declare-fun arr!18 () IArray!18123)

(declare-fun size!21897 (IArray!18123) Int)

(assert (=> b!2319520 (= lt!860195 (size!21897 arr!18))))

(declare-fun b!2319521 () Bool)

(declare-fun e!1486789 () Bool)

(declare-fun tp!736144 () Bool)

(assert (=> b!2319521 (= e!1486789 tp!736144)))

(declare-fun res!990910 () Bool)

(assert (=> start!228906 (=> (not res!990910) (not e!1486791))))

(declare-datatypes ((Conc!9059 0))(
  ( (Node!9059 (left!20985 Conc!9059) (right!21315 Conc!9059) (csize!18348 Int) (cheight!9270 Int)) (Leaf!13298 (xs!12019 IArray!18123) (csize!18349 Int)) (Empty!9059) )
))
(declare-fun acc!252 () Conc!9059)

(declare-fun isBalanced!2753 (Conc!9059) Bool)

(assert (=> start!228906 (= res!990910 (isBalanced!2753 acc!252))))

(assert (=> start!228906 e!1486791))

(declare-fun e!1486793 () Bool)

(declare-fun inv!37570 (Conc!9059) Bool)

(assert (=> start!228906 (and (inv!37570 acc!252) e!1486793)))

(declare-fun inv!37571 (IArray!18123) Bool)

(assert (=> start!228906 (and (inv!37571 arr!18) e!1486789)))

(declare-fun b!2319522 () Bool)

(declare-fun e!1486794 () Bool)

(declare-fun tp!736146 () Bool)

(assert (=> b!2319522 (= e!1486794 tp!736146)))

(declare-fun b!2319523 () Bool)

(declare-fun e!1486788 () Bool)

(assert (=> b!2319523 (= e!1486792 e!1486788)))

(declare-fun res!990907 () Bool)

(assert (=> b!2319523 (=> (not res!990907) (not e!1486788))))

(declare-fun lt!860196 () List!27752)

(declare-fun lt!860184 () List!27752)

(assert (=> b!2319523 (= res!990907 (= lt!860196 lt!860184))))

(declare-fun lt!860188 () Conc!9059)

(declare-fun list!10988 (Conc!9059) List!27752)

(assert (=> b!2319523 (= lt!860184 (list!10988 lt!860188))))

(declare-fun lt!860186 () List!27752)

(declare-fun lt!860191 () List!27752)

(declare-fun lt!860187 () List!27752)

(declare-fun ++!6811 (List!27752 List!27752) List!27752)

(assert (=> b!2319523 (= lt!860196 (++!6811 (++!6811 lt!860191 lt!860186) lt!860187))))

(declare-fun lt!860190 () IArray!18123)

(declare-fun list!10989 (IArray!18123) List!27752)

(assert (=> b!2319523 (= lt!860187 (list!10989 lt!860190))))

(declare-fun lt!860185 () Conc!9059)

(assert (=> b!2319523 (= lt!860186 (list!10988 lt!860185))))

(assert (=> b!2319523 (= lt!860191 (list!10988 acc!252))))

(declare-fun fromArray!31 (IArray!18123 Conc!9059) Conc!9059)

(declare-fun ++!6812 (Conc!9059 Conc!9059) Conc!9059)

(assert (=> b!2319523 (= lt!860188 (fromArray!31 lt!860190 (++!6812 acc!252 lt!860185)))))

(declare-fun slice!690 (IArray!18123 Int Int) IArray!18123)

(assert (=> b!2319523 (= lt!860190 (slice!690 arr!18 512 lt!860195))))

(assert (=> b!2319523 (= lt!860185 (Leaf!13298 (slice!690 arr!18 0 512) 512))))

(declare-fun b!2319524 () Bool)

(assert (=> b!2319524 (= e!1486793 (and (inv!37571 (xs!12019 acc!252)) e!1486794))))

(declare-fun b!2319525 () Bool)

(declare-fun e!1486790 () Bool)

(assert (=> b!2319525 (= e!1486788 (not e!1486790))))

(declare-fun res!990911 () Bool)

(assert (=> b!2319525 (=> res!990911 e!1486790)))

(declare-fun lt!860197 () List!27752)

(assert (=> b!2319525 (= res!990911 (not (= lt!860197 lt!860184)))))

(assert (=> b!2319525 (= lt!860196 lt!860197)))

(declare-fun lt!860189 () List!27752)

(assert (=> b!2319525 (= lt!860197 (++!6811 lt!860191 lt!860189))))

(assert (=> b!2319525 (= lt!860189 (++!6811 lt!860186 lt!860187))))

(declare-datatypes ((Unit!40514 0))(
  ( (Unit!40515) )
))
(declare-fun lt!860193 () Unit!40514)

(declare-fun lemmaConcatAssociativity!1455 (List!27752 List!27752 List!27752) Unit!40514)

(assert (=> b!2319525 (= lt!860193 (lemmaConcatAssociativity!1455 lt!860191 lt!860186 lt!860187))))

(declare-fun e!1486795 () Bool)

(declare-fun lt!860194 () List!27752)

(declare-fun b!2319526 () Bool)

(assert (=> b!2319526 (= e!1486795 (= lt!860184 (++!6811 lt!860191 lt!860194)))))

(declare-fun tp!736147 () Bool)

(declare-fun b!2319527 () Bool)

(declare-fun tp!736145 () Bool)

(assert (=> b!2319527 (= e!1486793 (and (inv!37570 (left!20985 acc!252)) tp!736147 (inv!37570 (right!21315 acc!252)) tp!736145))))

(declare-fun b!2319528 () Bool)

(declare-fun res!990912 () Bool)

(assert (=> b!2319528 (=> res!990912 e!1486790)))

(assert (=> b!2319528 (= res!990912 (not (isBalanced!2753 lt!860188)))))

(declare-fun b!2319529 () Bool)

(assert (=> b!2319529 (= e!1486790 e!1486795)))

(declare-fun res!990908 () Bool)

(assert (=> b!2319529 (=> res!990908 e!1486795)))

(assert (=> b!2319529 (= res!990908 (not (= lt!860189 lt!860194)))))

(declare-fun slice!691 (List!27752 Int Int) List!27752)

(declare-fun size!21898 (List!27752) Int)

(assert (=> b!2319529 (= (++!6811 (slice!691 lt!860194 0 512) (slice!691 lt!860194 512 (size!21898 lt!860194))) lt!860194)))

(declare-fun lt!860192 () Unit!40514)

(declare-fun sliceSplit!20 (List!27752 Int) Unit!40514)

(assert (=> b!2319529 (= lt!860192 (sliceSplit!20 lt!860194 512))))

(assert (=> b!2319529 (= lt!860194 (list!10989 arr!18))))

(assert (= (and start!228906 res!990910) b!2319520))

(assert (= (and b!2319520 res!990909) b!2319523))

(assert (= (and b!2319523 res!990907) b!2319525))

(assert (= (and b!2319525 (not res!990911)) b!2319528))

(assert (= (and b!2319528 (not res!990912)) b!2319529))

(assert (= (and b!2319529 (not res!990908)) b!2319526))

(get-info :version)

(assert (= (and start!228906 ((_ is Node!9059) acc!252)) b!2319527))

(assert (= b!2319524 b!2319522))

(assert (= (and start!228906 ((_ is Leaf!13298) acc!252)) b!2319524))

(assert (= start!228906 b!2319521))

(declare-fun m!2748063 () Bool)

(assert (=> start!228906 m!2748063))

(declare-fun m!2748065 () Bool)

(assert (=> start!228906 m!2748065))

(declare-fun m!2748067 () Bool)

(assert (=> start!228906 m!2748067))

(declare-fun m!2748069 () Bool)

(assert (=> b!2319520 m!2748069))

(declare-fun m!2748071 () Bool)

(assert (=> b!2319525 m!2748071))

(declare-fun m!2748073 () Bool)

(assert (=> b!2319525 m!2748073))

(declare-fun m!2748075 () Bool)

(assert (=> b!2319525 m!2748075))

(declare-fun m!2748077 () Bool)

(assert (=> b!2319524 m!2748077))

(declare-fun m!2748079 () Bool)

(assert (=> b!2319527 m!2748079))

(declare-fun m!2748081 () Bool)

(assert (=> b!2319527 m!2748081))

(declare-fun m!2748083 () Bool)

(assert (=> b!2319523 m!2748083))

(declare-fun m!2748085 () Bool)

(assert (=> b!2319523 m!2748085))

(declare-fun m!2748087 () Bool)

(assert (=> b!2319523 m!2748087))

(declare-fun m!2748089 () Bool)

(assert (=> b!2319523 m!2748089))

(declare-fun m!2748091 () Bool)

(assert (=> b!2319523 m!2748091))

(declare-fun m!2748093 () Bool)

(assert (=> b!2319523 m!2748093))

(assert (=> b!2319523 m!2748087))

(declare-fun m!2748095 () Bool)

(assert (=> b!2319523 m!2748095))

(assert (=> b!2319523 m!2748089))

(declare-fun m!2748097 () Bool)

(assert (=> b!2319523 m!2748097))

(declare-fun m!2748099 () Bool)

(assert (=> b!2319523 m!2748099))

(declare-fun m!2748101 () Bool)

(assert (=> b!2319523 m!2748101))

(declare-fun m!2748103 () Bool)

(assert (=> b!2319526 m!2748103))

(declare-fun m!2748105 () Bool)

(assert (=> b!2319528 m!2748105))

(declare-fun m!2748107 () Bool)

(assert (=> b!2319529 m!2748107))

(assert (=> b!2319529 m!2748107))

(declare-fun m!2748109 () Bool)

(assert (=> b!2319529 m!2748109))

(declare-fun m!2748111 () Bool)

(assert (=> b!2319529 m!2748111))

(declare-fun m!2748113 () Bool)

(assert (=> b!2319529 m!2748113))

(declare-fun m!2748115 () Bool)

(assert (=> b!2319529 m!2748115))

(declare-fun m!2748117 () Bool)

(assert (=> b!2319529 m!2748117))

(assert (=> b!2319529 m!2748109))

(assert (=> b!2319529 m!2748117))

(check-sat (not b!2319523) (not b!2319521) (not b!2319526) (not b!2319528) (not start!228906) (not b!2319525) (not b!2319524) (not b!2319527) (not b!2319529) (not b!2319520) (not b!2319522))
(check-sat)
