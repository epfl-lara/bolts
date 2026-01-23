; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229236 () Bool)

(assert start!229236)

(declare-fun b!2322346 () Bool)

(declare-fun e!1488341 () Bool)

(declare-fun tp!736735 () Bool)

(assert (=> b!2322346 (= e!1488341 tp!736735)))

(declare-datatypes ((T!43892 0))(
  ( (T!43893 (val!7977 Int)) )
))
(declare-datatypes ((List!27763 0))(
  ( (Nil!27665) (Cons!27665 (h!33066 T!43892) (t!207443 List!27763)) )
))
(declare-datatypes ((IArray!18145 0))(
  ( (IArray!18146 (innerList!9130 List!27763)) )
))
(declare-datatypes ((Conc!9070 0))(
  ( (Node!9070 (left!21002 Conc!9070) (right!21332 Conc!9070) (csize!18370 Int) (cheight!9281 Int)) (Leaf!13315 (xs!12036 IArray!18145) (csize!18371 Int)) (Empty!9070) )
))
(declare-fun acc!252 () Conc!9070)

(declare-fun b!2322347 () Bool)

(declare-fun tp!736732 () Bool)

(declare-fun e!1488342 () Bool)

(declare-fun tp!736734 () Bool)

(declare-fun inv!37630 (Conc!9070) Bool)

(assert (=> b!2322347 (= e!1488342 (and (inv!37630 (left!21002 acc!252)) tp!736734 (inv!37630 (right!21332 acc!252)) tp!736732))))

(declare-fun b!2322348 () Bool)

(declare-fun inv!37631 (IArray!18145) Bool)

(assert (=> b!2322348 (= e!1488342 (and (inv!37631 (xs!12036 acc!252)) e!1488341))))

(declare-fun b!2322349 () Bool)

(declare-fun res!992086 () Bool)

(declare-fun e!1488340 () Bool)

(assert (=> b!2322349 (=> (not res!992086) (not e!1488340))))

(declare-fun arr!18 () IArray!18145)

(declare-fun size!21929 (IArray!18145) Int)

(assert (=> b!2322349 (= res!992086 (> (size!21929 arr!18) 512))))

(declare-fun res!992085 () Bool)

(assert (=> start!229236 (=> (not res!992085) (not e!1488340))))

(declare-fun isBalanced!2764 (Conc!9070) Bool)

(assert (=> start!229236 (= res!992085 (isBalanced!2764 acc!252))))

(assert (=> start!229236 e!1488340))

(assert (=> start!229236 (and (inv!37630 acc!252) e!1488342)))

(declare-fun e!1488343 () Bool)

(assert (=> start!229236 (and (inv!37631 arr!18) e!1488343)))

(declare-fun b!2322350 () Bool)

(assert (=> b!2322350 (= e!1488340 false)))

(declare-fun lt!860550 () IArray!18145)

(declare-fun slice!696 (IArray!18145 Int Int) IArray!18145)

(assert (=> b!2322350 (= lt!860550 (slice!696 arr!18 0 512))))

(declare-fun b!2322351 () Bool)

(declare-fun tp!736733 () Bool)

(assert (=> b!2322351 (= e!1488343 tp!736733)))

(assert (= (and start!229236 res!992085) b!2322349))

(assert (= (and b!2322349 res!992086) b!2322350))

(assert (= (and start!229236 (is-Node!9070 acc!252)) b!2322347))

(assert (= b!2322348 b!2322346))

(assert (= (and start!229236 (is-Leaf!13315 acc!252)) b!2322348))

(assert (= start!229236 b!2322351))

(declare-fun m!2751855 () Bool)

(assert (=> b!2322347 m!2751855))

(declare-fun m!2751857 () Bool)

(assert (=> b!2322347 m!2751857))

(declare-fun m!2751859 () Bool)

(assert (=> b!2322348 m!2751859))

(declare-fun m!2751861 () Bool)

(assert (=> b!2322349 m!2751861))

(declare-fun m!2751863 () Bool)

(assert (=> start!229236 m!2751863))

(declare-fun m!2751865 () Bool)

(assert (=> start!229236 m!2751865))

(declare-fun m!2751867 () Bool)

(assert (=> start!229236 m!2751867))

(declare-fun m!2751869 () Bool)

(assert (=> b!2322350 m!2751869))

(push 1)

(assert (not start!229236))

(assert (not b!2322350))

(assert (not b!2322347))

(assert (not b!2322351))

(assert (not b!2322346))

(assert (not b!2322349))

(assert (not b!2322348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

