; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134342 () Bool)

(assert start!134342)

(declare-fun b!1568432 () Bool)

(declare-fun res!1072259 () Bool)

(declare-fun e!874377 () Bool)

(assert (=> b!1568432 (=> (not res!1072259) (not e!874377))))

(declare-datatypes ((List!36873 0))(
  ( (Nil!36870) (Cons!36869 (h!38317 (_ BitVec 64)) (t!51788 List!36873)) )
))
(declare-fun acc!619 () List!36873)

(declare-fun contains!10432 (List!36873 (_ BitVec 64)) Bool)

(assert (=> b!1568432 (= res!1072259 (not (contains!10432 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!673123 () Bool)

(declare-datatypes ((array!104773 0))(
  ( (array!104774 (arr!50562 (Array (_ BitVec 32) (_ BitVec 64))) (size!51113 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104773)

(declare-fun e!874374 () Bool)

(declare-fun b!1568433 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(assert (=> b!1568433 (= e!874374 (and (not lt!673123) (bvsge (bvsub (size!51113 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51113 a!3481) from!2856))))))

(declare-fun b!1568434 () Bool)

(declare-fun res!1072261 () Bool)

(assert (=> b!1568434 (=> (not res!1072261) (not e!874377))))

(assert (=> b!1568434 (= res!1072261 (not (contains!10432 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1072256 () Bool)

(assert (=> start!134342 (=> (not res!1072256) (not e!874377))))

(assert (=> start!134342 (= res!1072256 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51113 a!3481)) (bvslt (size!51113 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134342 e!874377))

(assert (=> start!134342 true))

(declare-fun array_inv!39207 (array!104773) Bool)

(assert (=> start!134342 (array_inv!39207 a!3481)))

(declare-fun b!1568435 () Bool)

(declare-fun e!874376 () Bool)

(assert (=> b!1568435 (= e!874376 (not (contains!10432 acc!619 (select (arr!50562 a!3481) from!2856))))))

(declare-fun b!1568436 () Bool)

(assert (=> b!1568436 (= e!874377 e!874374)))

(declare-fun res!1072260 () Bool)

(assert (=> b!1568436 (=> (not res!1072260) (not e!874374))))

(assert (=> b!1568436 (= res!1072260 e!874376)))

(declare-fun res!1072258 () Bool)

(assert (=> b!1568436 (=> res!1072258 e!874376)))

(assert (=> b!1568436 (= res!1072258 (not lt!673123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568436 (= lt!673123 (validKeyInArray!0 (select (arr!50562 a!3481) from!2856)))))

(declare-fun b!1568437 () Bool)

(declare-fun res!1072262 () Bool)

(assert (=> b!1568437 (=> (not res!1072262) (not e!874377))))

(declare-fun noDuplicate!2723 (List!36873) Bool)

(assert (=> b!1568437 (= res!1072262 (noDuplicate!2723 acc!619))))

(declare-fun b!1568438 () Bool)

(declare-fun res!1072257 () Bool)

(assert (=> b!1568438 (=> (not res!1072257) (not e!874377))))

(assert (=> b!1568438 (= res!1072257 (bvslt from!2856 (size!51113 a!3481)))))

(assert (= (and start!134342 res!1072256) b!1568437))

(assert (= (and b!1568437 res!1072262) b!1568432))

(assert (= (and b!1568432 res!1072259) b!1568434))

(assert (= (and b!1568434 res!1072261) b!1568438))

(assert (= (and b!1568438 res!1072257) b!1568436))

(assert (= (and b!1568436 (not res!1072258)) b!1568435))

(assert (= (and b!1568436 res!1072260) b!1568433))

(declare-fun m!1443107 () Bool)

(assert (=> b!1568434 m!1443107))

(declare-fun m!1443109 () Bool)

(assert (=> start!134342 m!1443109))

(declare-fun m!1443111 () Bool)

(assert (=> b!1568437 m!1443111))

(declare-fun m!1443113 () Bool)

(assert (=> b!1568436 m!1443113))

(assert (=> b!1568436 m!1443113))

(declare-fun m!1443115 () Bool)

(assert (=> b!1568436 m!1443115))

(assert (=> b!1568435 m!1443113))

(assert (=> b!1568435 m!1443113))

(declare-fun m!1443117 () Bool)

(assert (=> b!1568435 m!1443117))

(declare-fun m!1443119 () Bool)

(assert (=> b!1568432 m!1443119))

(push 1)

(assert (not b!1568432))

(assert (not b!1568437))

(assert (not start!134342))

(assert (not b!1568436))

(assert (not b!1568435))

(assert (not b!1568434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

