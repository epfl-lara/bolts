; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134340 () Bool)

(assert start!134340)

(declare-fun b!1568411 () Bool)

(declare-fun res!1072235 () Bool)

(declare-fun e!874363 () Bool)

(assert (=> b!1568411 (=> (not res!1072235) (not e!874363))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104771 0))(
  ( (array!104772 (arr!50561 (Array (_ BitVec 32) (_ BitVec 64))) (size!51112 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104771)

(assert (=> b!1568411 (= res!1072235 (bvslt from!2856 (size!51112 a!3481)))))

(declare-fun b!1568413 () Bool)

(declare-fun res!1072240 () Bool)

(assert (=> b!1568413 (=> (not res!1072240) (not e!874363))))

(declare-datatypes ((List!36872 0))(
  ( (Nil!36869) (Cons!36868 (h!38316 (_ BitVec 64)) (t!51787 List!36872)) )
))
(declare-fun acc!619 () List!36872)

(declare-fun noDuplicate!2722 (List!36872) Bool)

(assert (=> b!1568413 (= res!1072240 (noDuplicate!2722 acc!619))))

(declare-fun e!874362 () Bool)

(declare-fun b!1568414 () Bool)

(declare-fun contains!10431 (List!36872 (_ BitVec 64)) Bool)

(assert (=> b!1568414 (= e!874362 (not (contains!10431 acc!619 (select (arr!50561 a!3481) from!2856))))))

(declare-fun b!1568415 () Bool)

(declare-fun res!1072237 () Bool)

(assert (=> b!1568415 (=> (not res!1072237) (not e!874363))))

(assert (=> b!1568415 (= res!1072237 (not (contains!10431 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568412 () Bool)

(declare-fun res!1072241 () Bool)

(assert (=> b!1568412 (=> (not res!1072241) (not e!874363))))

(assert (=> b!1568412 (= res!1072241 (not (contains!10431 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1072239 () Bool)

(assert (=> start!134340 (=> (not res!1072239) (not e!874363))))

(assert (=> start!134340 (= res!1072239 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51112 a!3481)) (bvslt (size!51112 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134340 e!874363))

(assert (=> start!134340 true))

(declare-fun array_inv!39206 (array!104771) Bool)

(assert (=> start!134340 (array_inv!39206 a!3481)))

(declare-fun b!1568416 () Bool)

(declare-fun lt!673120 () Bool)

(declare-fun e!874364 () Bool)

(assert (=> b!1568416 (= e!874364 (and (not lt!673120) (bvsge (bvsub (size!51112 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51112 a!3481) from!2856))))))

(declare-fun b!1568417 () Bool)

(assert (=> b!1568417 (= e!874363 e!874364)))

(declare-fun res!1072238 () Bool)

(assert (=> b!1568417 (=> (not res!1072238) (not e!874364))))

(assert (=> b!1568417 (= res!1072238 e!874362)))

(declare-fun res!1072236 () Bool)

(assert (=> b!1568417 (=> res!1072236 e!874362)))

(assert (=> b!1568417 (= res!1072236 (not lt!673120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568417 (= lt!673120 (validKeyInArray!0 (select (arr!50561 a!3481) from!2856)))))

(assert (= (and start!134340 res!1072239) b!1568413))

(assert (= (and b!1568413 res!1072240) b!1568412))

(assert (= (and b!1568412 res!1072241) b!1568415))

(assert (= (and b!1568415 res!1072237) b!1568411))

(assert (= (and b!1568411 res!1072235) b!1568417))

(assert (= (and b!1568417 (not res!1072236)) b!1568414))

(assert (= (and b!1568417 res!1072238) b!1568416))

(declare-fun m!1443093 () Bool)

(assert (=> b!1568417 m!1443093))

(assert (=> b!1568417 m!1443093))

(declare-fun m!1443095 () Bool)

(assert (=> b!1568417 m!1443095))

(declare-fun m!1443097 () Bool)

(assert (=> b!1568415 m!1443097))

(declare-fun m!1443099 () Bool)

(assert (=> b!1568413 m!1443099))

(declare-fun m!1443101 () Bool)

(assert (=> start!134340 m!1443101))

(assert (=> b!1568414 m!1443093))

(assert (=> b!1568414 m!1443093))

(declare-fun m!1443103 () Bool)

(assert (=> b!1568414 m!1443103))

(declare-fun m!1443105 () Bool)

(assert (=> b!1568412 m!1443105))

(check-sat (not start!134340) (not b!1568415) (not b!1568413) (not b!1568414) (not b!1568412) (not b!1568417))
(check-sat)
