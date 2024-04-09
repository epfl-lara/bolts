; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130726 () Bool)

(assert start!130726)

(declare-fun b!1532756 () Bool)

(declare-fun res!1049984 () Bool)

(declare-fun e!854015 () Bool)

(assert (=> b!1532756 (=> (not res!1049984) (not e!854015))))

(declare-datatypes ((array!101751 0))(
  ( (array!101752 (arr!49087 (Array (_ BitVec 32) (_ BitVec 64))) (size!49638 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101751)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101751 (_ BitVec 32)) Bool)

(assert (=> b!1532756 (= res!1049984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532757 () Bool)

(declare-fun res!1049983 () Bool)

(assert (=> b!1532757 (=> (not res!1049983) (not e!854015))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532757 (= res!1049983 (validKeyInArray!0 (select (arr!49087 a!2792) j!64)))))

(declare-fun b!1532758 () Bool)

(declare-fun res!1049980 () Bool)

(assert (=> b!1532758 (=> (not res!1049980) (not e!854015))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532758 (= res!1049980 (validKeyInArray!0 (select (arr!49087 a!2792) i!951)))))

(declare-fun b!1532759 () Bool)

(declare-fun res!1049981 () Bool)

(assert (=> b!1532759 (=> (not res!1049981) (not e!854015))))

(declare-datatypes ((List!35741 0))(
  ( (Nil!35738) (Cons!35737 (h!37183 (_ BitVec 64)) (t!50442 List!35741)) )
))
(declare-fun arrayNoDuplicates!0 (array!101751 (_ BitVec 32) List!35741) Bool)

(assert (=> b!1532759 (= res!1049981 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35738))))

(declare-fun b!1532760 () Bool)

(declare-fun res!1049985 () Bool)

(assert (=> b!1532760 (=> (not res!1049985) (not e!854015))))

(assert (=> b!1532760 (= res!1049985 (and (= (size!49638 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49638 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49638 a!2792)) (not (= i!951 j!64))))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun b!1532761 () Bool)

(assert (=> b!1532761 (= e!854015 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49638 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49638 a!2792)) (= (select (arr!49087 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun res!1049982 () Bool)

(assert (=> start!130726 (=> (not res!1049982) (not e!854015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130726 (= res!1049982 (validMask!0 mask!2480))))

(assert (=> start!130726 e!854015))

(assert (=> start!130726 true))

(declare-fun array_inv!38032 (array!101751) Bool)

(assert (=> start!130726 (array_inv!38032 a!2792)))

(assert (= (and start!130726 res!1049982) b!1532760))

(assert (= (and b!1532760 res!1049985) b!1532758))

(assert (= (and b!1532758 res!1049980) b!1532757))

(assert (= (and b!1532757 res!1049983) b!1532756))

(assert (= (and b!1532756 res!1049984) b!1532759))

(assert (= (and b!1532759 res!1049981) b!1532761))

(declare-fun m!1415511 () Bool)

(assert (=> b!1532761 m!1415511))

(declare-fun m!1415513 () Bool)

(assert (=> b!1532758 m!1415513))

(assert (=> b!1532758 m!1415513))

(declare-fun m!1415515 () Bool)

(assert (=> b!1532758 m!1415515))

(declare-fun m!1415517 () Bool)

(assert (=> start!130726 m!1415517))

(declare-fun m!1415519 () Bool)

(assert (=> start!130726 m!1415519))

(declare-fun m!1415521 () Bool)

(assert (=> b!1532757 m!1415521))

(assert (=> b!1532757 m!1415521))

(declare-fun m!1415523 () Bool)

(assert (=> b!1532757 m!1415523))

(declare-fun m!1415525 () Bool)

(assert (=> b!1532759 m!1415525))

(declare-fun m!1415527 () Bool)

(assert (=> b!1532756 m!1415527))

(push 1)

(assert (not b!1532758))

(assert (not b!1532757))

(assert (not b!1532756))

(assert (not start!130726))

(assert (not b!1532759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

