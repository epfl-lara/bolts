; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134336 () Bool)

(assert start!134336)

(declare-fun res!1072194 () Bool)

(declare-fun e!874341 () Bool)

(assert (=> start!134336 (=> (not res!1072194) (not e!874341))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104767 0))(
  ( (array!104768 (arr!50559 (Array (_ BitVec 32) (_ BitVec 64))) (size!51110 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104767)

(assert (=> start!134336 (= res!1072194 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51110 a!3481)) (bvslt (size!51110 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134336 e!874341))

(assert (=> start!134336 true))

(declare-fun array_inv!39204 (array!104767) Bool)

(assert (=> start!134336 (array_inv!39204 a!3481)))

(declare-fun b!1568369 () Bool)

(declare-fun res!1072196 () Bool)

(assert (=> b!1568369 (=> (not res!1072196) (not e!874341))))

(declare-datatypes ((List!36870 0))(
  ( (Nil!36867) (Cons!36866 (h!38314 (_ BitVec 64)) (t!51785 List!36870)) )
))
(declare-fun acc!619 () List!36870)

(declare-fun contains!10429 (List!36870 (_ BitVec 64)) Bool)

(assert (=> b!1568369 (= res!1072196 (not (contains!10429 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568370 () Bool)

(declare-fun res!1072197 () Bool)

(assert (=> b!1568370 (=> (not res!1072197) (not e!874341))))

(declare-fun noDuplicate!2720 (List!36870) Bool)

(assert (=> b!1568370 (= res!1072197 (noDuplicate!2720 acc!619))))

(declare-fun b!1568371 () Bool)

(declare-fun e!874338 () Bool)

(declare-fun lt!673114 () Bool)

(assert (=> b!1568371 (= e!874338 (and (not lt!673114) (bvsge (bvsub (size!51110 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51110 a!3481) from!2856))))))

(declare-fun b!1568372 () Bool)

(declare-fun res!1072198 () Bool)

(assert (=> b!1568372 (=> (not res!1072198) (not e!874341))))

(assert (=> b!1568372 (= res!1072198 (bvslt from!2856 (size!51110 a!3481)))))

(declare-fun b!1568373 () Bool)

(assert (=> b!1568373 (= e!874341 e!874338)))

(declare-fun res!1072195 () Bool)

(assert (=> b!1568373 (=> (not res!1072195) (not e!874338))))

(declare-fun e!874339 () Bool)

(assert (=> b!1568373 (= res!1072195 e!874339)))

(declare-fun res!1072193 () Bool)

(assert (=> b!1568373 (=> res!1072193 e!874339)))

(assert (=> b!1568373 (= res!1072193 lt!673114)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568373 (= lt!673114 (not (validKeyInArray!0 (select (arr!50559 a!3481) from!2856))))))

(declare-fun b!1568374 () Bool)

(declare-fun res!1072199 () Bool)

(assert (=> b!1568374 (=> (not res!1072199) (not e!874341))))

(assert (=> b!1568374 (= res!1072199 (not (contains!10429 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568375 () Bool)

(assert (=> b!1568375 (= e!874339 (not (contains!10429 acc!619 (select (arr!50559 a!3481) from!2856))))))

(assert (= (and start!134336 res!1072194) b!1568370))

(assert (= (and b!1568370 res!1072197) b!1568369))

(assert (= (and b!1568369 res!1072196) b!1568374))

(assert (= (and b!1568374 res!1072199) b!1568372))

(assert (= (and b!1568372 res!1072198) b!1568373))

(assert (= (and b!1568373 (not res!1072193)) b!1568375))

(assert (= (and b!1568373 res!1072195) b!1568371))

(declare-fun m!1443065 () Bool)

(assert (=> b!1568374 m!1443065))

(declare-fun m!1443067 () Bool)

(assert (=> b!1568369 m!1443067))

(declare-fun m!1443069 () Bool)

(assert (=> start!134336 m!1443069))

(declare-fun m!1443071 () Bool)

(assert (=> b!1568373 m!1443071))

(assert (=> b!1568373 m!1443071))

(declare-fun m!1443073 () Bool)

(assert (=> b!1568373 m!1443073))

(assert (=> b!1568375 m!1443071))

(assert (=> b!1568375 m!1443071))

(declare-fun m!1443075 () Bool)

(assert (=> b!1568375 m!1443075))

(declare-fun m!1443077 () Bool)

(assert (=> b!1568370 m!1443077))

(push 1)

(assert (not b!1568369))

(assert (not b!1568375))

(assert (not b!1568374))

(assert (not b!1568373))

(assert (not start!134336))

(assert (not b!1568370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

