; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134330 () Bool)

(assert start!134330)

(declare-fun e!874304 () Bool)

(declare-datatypes ((array!104761 0))(
  ( (array!104762 (arr!50556 (Array (_ BitVec 32) (_ BitVec 64))) (size!51107 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104761)

(declare-datatypes ((List!36867 0))(
  ( (Nil!36864) (Cons!36863 (h!38311 (_ BitVec 64)) (t!51782 List!36867)) )
))
(declare-fun acc!619 () List!36867)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun b!1568307 () Bool)

(declare-fun contains!10426 (List!36867 (_ BitVec 64)) Bool)

(assert (=> b!1568307 (= e!874304 (not (contains!10426 acc!619 (select (arr!50556 a!3481) from!2856))))))

(declare-fun res!1072133 () Bool)

(declare-fun e!874303 () Bool)

(assert (=> start!134330 (=> (not res!1072133) (not e!874303))))

(assert (=> start!134330 (= res!1072133 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51107 a!3481)) (bvslt (size!51107 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134330 e!874303))

(assert (=> start!134330 true))

(declare-fun array_inv!39201 (array!104761) Bool)

(assert (=> start!134330 (array_inv!39201 a!3481)))

(declare-fun b!1568308 () Bool)

(declare-fun res!1072134 () Bool)

(assert (=> b!1568308 (=> (not res!1072134) (not e!874303))))

(assert (=> b!1568308 (= res!1072134 (bvslt from!2856 (size!51107 a!3481)))))

(declare-fun b!1568309 () Bool)

(declare-fun res!1072135 () Bool)

(assert (=> b!1568309 (=> (not res!1072135) (not e!874303))))

(assert (=> b!1568309 (= res!1072135 (not (contains!10426 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568310 () Bool)

(declare-fun res!1072131 () Bool)

(assert (=> b!1568310 (=> (not res!1072131) (not e!874303))))

(assert (=> b!1568310 (= res!1072131 (not (contains!10426 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568311 () Bool)

(assert (=> b!1568311 (= e!874303 false)))

(declare-fun lt!673105 () Bool)

(assert (=> b!1568311 (= lt!673105 e!874304)))

(declare-fun res!1072136 () Bool)

(assert (=> b!1568311 (=> res!1072136 e!874304)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568311 (= res!1072136 (not (validKeyInArray!0 (select (arr!50556 a!3481) from!2856))))))

(declare-fun b!1568312 () Bool)

(declare-fun res!1072132 () Bool)

(assert (=> b!1568312 (=> (not res!1072132) (not e!874303))))

(declare-fun noDuplicate!2717 (List!36867) Bool)

(assert (=> b!1568312 (= res!1072132 (noDuplicate!2717 acc!619))))

(assert (= (and start!134330 res!1072133) b!1568312))

(assert (= (and b!1568312 res!1072132) b!1568309))

(assert (= (and b!1568309 res!1072135) b!1568310))

(assert (= (and b!1568310 res!1072131) b!1568308))

(assert (= (and b!1568308 res!1072134) b!1568311))

(assert (= (and b!1568311 (not res!1072136)) b!1568307))

(declare-fun m!1443023 () Bool)

(assert (=> b!1568311 m!1443023))

(assert (=> b!1568311 m!1443023))

(declare-fun m!1443025 () Bool)

(assert (=> b!1568311 m!1443025))

(declare-fun m!1443027 () Bool)

(assert (=> b!1568309 m!1443027))

(declare-fun m!1443029 () Bool)

(assert (=> start!134330 m!1443029))

(declare-fun m!1443031 () Bool)

(assert (=> b!1568312 m!1443031))

(assert (=> b!1568307 m!1443023))

(assert (=> b!1568307 m!1443023))

(declare-fun m!1443033 () Bool)

(assert (=> b!1568307 m!1443033))

(declare-fun m!1443035 () Bool)

(assert (=> b!1568310 m!1443035))

(push 1)

(assert (not b!1568311))

(assert (not b!1568312))

(assert (not start!134330))

(assert (not b!1568310))

(assert (not b!1568309))

(assert (not b!1568307))

(check-sat)

