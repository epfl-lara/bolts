; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130732 () Bool)

(assert start!130732)

(declare-fun res!1050036 () Bool)

(declare-fun e!854033 () Bool)

(assert (=> start!130732 (=> (not res!1050036) (not e!854033))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130732 (= res!1050036 (validMask!0 mask!2480))))

(assert (=> start!130732 e!854033))

(assert (=> start!130732 true))

(declare-datatypes ((array!101757 0))(
  ( (array!101758 (arr!49090 (Array (_ BitVec 32) (_ BitVec 64))) (size!49641 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101757)

(declare-fun array_inv!38035 (array!101757) Bool)

(assert (=> start!130732 (array_inv!38035 a!2792)))

(declare-fun b!1532808 () Bool)

(assert (=> b!1532808 (= e!854033 false)))

(declare-fun lt!663673 () Bool)

(declare-datatypes ((List!35744 0))(
  ( (Nil!35741) (Cons!35740 (h!37186 (_ BitVec 64)) (t!50445 List!35744)) )
))
(declare-fun arrayNoDuplicates!0 (array!101757 (_ BitVec 32) List!35744) Bool)

(assert (=> b!1532808 (= lt!663673 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35741))))

(declare-fun b!1532809 () Bool)

(declare-fun res!1050032 () Bool)

(assert (=> b!1532809 (=> (not res!1050032) (not e!854033))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532809 (= res!1050032 (validKeyInArray!0 (select (arr!49090 a!2792) i!951)))))

(declare-fun b!1532810 () Bool)

(declare-fun res!1050033 () Bool)

(assert (=> b!1532810 (=> (not res!1050033) (not e!854033))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532810 (= res!1050033 (and (= (size!49641 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49641 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49641 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532811 () Bool)

(declare-fun res!1050034 () Bool)

(assert (=> b!1532811 (=> (not res!1050034) (not e!854033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101757 (_ BitVec 32)) Bool)

(assert (=> b!1532811 (= res!1050034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532812 () Bool)

(declare-fun res!1050035 () Bool)

(assert (=> b!1532812 (=> (not res!1050035) (not e!854033))))

(assert (=> b!1532812 (= res!1050035 (validKeyInArray!0 (select (arr!49090 a!2792) j!64)))))

(assert (= (and start!130732 res!1050036) b!1532810))

(assert (= (and b!1532810 res!1050033) b!1532809))

(assert (= (and b!1532809 res!1050032) b!1532812))

(assert (= (and b!1532812 res!1050035) b!1532811))

(assert (= (and b!1532811 res!1050034) b!1532808))

(declare-fun m!1415565 () Bool)

(assert (=> b!1532809 m!1415565))

(assert (=> b!1532809 m!1415565))

(declare-fun m!1415567 () Bool)

(assert (=> b!1532809 m!1415567))

(declare-fun m!1415569 () Bool)

(assert (=> b!1532812 m!1415569))

(assert (=> b!1532812 m!1415569))

(declare-fun m!1415571 () Bool)

(assert (=> b!1532812 m!1415571))

(declare-fun m!1415573 () Bool)

(assert (=> b!1532808 m!1415573))

(declare-fun m!1415575 () Bool)

(assert (=> start!130732 m!1415575))

(declare-fun m!1415577 () Bool)

(assert (=> start!130732 m!1415577))

(declare-fun m!1415579 () Bool)

(assert (=> b!1532811 m!1415579))

(push 1)

(assert (not b!1532811))

(assert (not start!130732))

(assert (not b!1532812))

(assert (not b!1532809))

(assert (not b!1532808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

