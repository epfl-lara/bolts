; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130708 () Bool)

(assert start!130708)

(declare-fun b!1532610 () Bool)

(declare-fun e!853961 () Bool)

(assert (=> b!1532610 (= e!853961 false)))

(declare-fun lt!663655 () Bool)

(declare-datatypes ((array!101733 0))(
  ( (array!101734 (arr!49078 (Array (_ BitVec 32) (_ BitVec 64))) (size!49629 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101733)

(declare-datatypes ((List!35732 0))(
  ( (Nil!35729) (Cons!35728 (h!37174 (_ BitVec 64)) (t!50433 List!35732)) )
))
(declare-fun arrayNoDuplicates!0 (array!101733 (_ BitVec 32) List!35732) Bool)

(assert (=> b!1532610 (= lt!663655 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35729))))

(declare-fun b!1532611 () Bool)

(declare-fun res!1049834 () Bool)

(assert (=> b!1532611 (=> (not res!1049834) (not e!853961))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532611 (= res!1049834 (validKeyInArray!0 (select (arr!49078 a!2792) j!64)))))

(declare-fun b!1532612 () Bool)

(declare-fun res!1049835 () Bool)

(assert (=> b!1532612 (=> (not res!1049835) (not e!853961))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532612 (= res!1049835 (and (= (size!49629 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49629 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49629 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532613 () Bool)

(declare-fun res!1049837 () Bool)

(assert (=> b!1532613 (=> (not res!1049837) (not e!853961))))

(assert (=> b!1532613 (= res!1049837 (validKeyInArray!0 (select (arr!49078 a!2792) i!951)))))

(declare-fun b!1532614 () Bool)

(declare-fun res!1049836 () Bool)

(assert (=> b!1532614 (=> (not res!1049836) (not e!853961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101733 (_ BitVec 32)) Bool)

(assert (=> b!1532614 (= res!1049836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1049838 () Bool)

(assert (=> start!130708 (=> (not res!1049838) (not e!853961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130708 (= res!1049838 (validMask!0 mask!2480))))

(assert (=> start!130708 e!853961))

(assert (=> start!130708 true))

(declare-fun array_inv!38023 (array!101733) Bool)

(assert (=> start!130708 (array_inv!38023 a!2792)))

(assert (= (and start!130708 res!1049838) b!1532612))

(assert (= (and b!1532612 res!1049835) b!1532613))

(assert (= (and b!1532613 res!1049837) b!1532611))

(assert (= (and b!1532611 res!1049834) b!1532614))

(assert (= (and b!1532614 res!1049836) b!1532610))

(declare-fun m!1415361 () Bool)

(assert (=> b!1532613 m!1415361))

(assert (=> b!1532613 m!1415361))

(declare-fun m!1415363 () Bool)

(assert (=> b!1532613 m!1415363))

(declare-fun m!1415365 () Bool)

(assert (=> start!130708 m!1415365))

(declare-fun m!1415367 () Bool)

(assert (=> start!130708 m!1415367))

(declare-fun m!1415369 () Bool)

(assert (=> b!1532611 m!1415369))

(assert (=> b!1532611 m!1415369))

(declare-fun m!1415371 () Bool)

(assert (=> b!1532611 m!1415371))

(declare-fun m!1415373 () Bool)

(assert (=> b!1532614 m!1415373))

(declare-fun m!1415375 () Bool)

(assert (=> b!1532610 m!1415375))

(push 1)

(assert (not b!1532610))

(assert (not start!130708))

(assert (not b!1532613))

(assert (not b!1532614))

(assert (not b!1532611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

