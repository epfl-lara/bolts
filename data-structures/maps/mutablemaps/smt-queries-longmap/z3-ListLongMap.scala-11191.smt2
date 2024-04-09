; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130812 () Bool)

(assert start!130812)

(declare-fun b!1533648 () Bool)

(declare-fun res!1050873 () Bool)

(declare-fun e!854272 () Bool)

(assert (=> b!1533648 (=> (not res!1050873) (not e!854272))))

(declare-datatypes ((array!101837 0))(
  ( (array!101838 (arr!49130 (Array (_ BitVec 32) (_ BitVec 64))) (size!49681 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101837)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533648 (= res!1050873 (validKeyInArray!0 (select (arr!49130 a!2792) j!64)))))

(declare-fun b!1533649 () Bool)

(declare-fun res!1050874 () Bool)

(assert (=> b!1533649 (=> (not res!1050874) (not e!854272))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533649 (= res!1050874 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49681 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49681 a!2792)) (= (select (arr!49130 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533650 () Bool)

(declare-fun res!1050872 () Bool)

(assert (=> b!1533650 (=> (not res!1050872) (not e!854272))))

(declare-datatypes ((List!35784 0))(
  ( (Nil!35781) (Cons!35780 (h!37226 (_ BitVec 64)) (t!50485 List!35784)) )
))
(declare-fun arrayNoDuplicates!0 (array!101837 (_ BitVec 32) List!35784) Bool)

(assert (=> b!1533650 (= res!1050872 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35781))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun b!1533651 () Bool)

(assert (=> b!1533651 (= e!854272 (and (= (select (arr!49130 a!2792) index!463) (select (arr!49130 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533652 () Bool)

(declare-fun res!1050875 () Bool)

(assert (=> b!1533652 (=> (not res!1050875) (not e!854272))))

(declare-datatypes ((SeekEntryResult!13285 0))(
  ( (MissingZero!13285 (index!55534 (_ BitVec 32))) (Found!13285 (index!55535 (_ BitVec 32))) (Intermediate!13285 (undefined!14097 Bool) (index!55536 (_ BitVec 32)) (x!137306 (_ BitVec 32))) (Undefined!13285) (MissingVacant!13285 (index!55537 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101837 (_ BitVec 32)) SeekEntryResult!13285)

(assert (=> b!1533652 (= res!1050875 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49130 a!2792) j!64) a!2792 mask!2480) (Found!13285 j!64)))))

(declare-fun b!1533653 () Bool)

(declare-fun res!1050877 () Bool)

(assert (=> b!1533653 (=> (not res!1050877) (not e!854272))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533653 (= res!1050877 (and (= (size!49681 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49681 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49681 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533654 () Bool)

(declare-fun res!1050878 () Bool)

(assert (=> b!1533654 (=> (not res!1050878) (not e!854272))))

(assert (=> b!1533654 (= res!1050878 (validKeyInArray!0 (select (arr!49130 a!2792) i!951)))))

(declare-fun b!1533655 () Bool)

(declare-fun res!1050876 () Bool)

(assert (=> b!1533655 (=> (not res!1050876) (not e!854272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101837 (_ BitVec 32)) Bool)

(assert (=> b!1533655 (= res!1050876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1050879 () Bool)

(assert (=> start!130812 (=> (not res!1050879) (not e!854272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130812 (= res!1050879 (validMask!0 mask!2480))))

(assert (=> start!130812 e!854272))

(assert (=> start!130812 true))

(declare-fun array_inv!38075 (array!101837) Bool)

(assert (=> start!130812 (array_inv!38075 a!2792)))

(assert (= (and start!130812 res!1050879) b!1533653))

(assert (= (and b!1533653 res!1050877) b!1533654))

(assert (= (and b!1533654 res!1050878) b!1533648))

(assert (= (and b!1533648 res!1050873) b!1533655))

(assert (= (and b!1533655 res!1050876) b!1533650))

(assert (= (and b!1533650 res!1050872) b!1533649))

(assert (= (and b!1533649 res!1050874) b!1533652))

(assert (= (and b!1533652 res!1050875) b!1533651))

(declare-fun m!1416391 () Bool)

(assert (=> b!1533654 m!1416391))

(assert (=> b!1533654 m!1416391))

(declare-fun m!1416393 () Bool)

(assert (=> b!1533654 m!1416393))

(declare-fun m!1416395 () Bool)

(assert (=> b!1533649 m!1416395))

(declare-fun m!1416397 () Bool)

(assert (=> b!1533650 m!1416397))

(declare-fun m!1416399 () Bool)

(assert (=> b!1533651 m!1416399))

(declare-fun m!1416401 () Bool)

(assert (=> b!1533651 m!1416401))

(declare-fun m!1416403 () Bool)

(assert (=> start!130812 m!1416403))

(declare-fun m!1416405 () Bool)

(assert (=> start!130812 m!1416405))

(assert (=> b!1533648 m!1416401))

(assert (=> b!1533648 m!1416401))

(declare-fun m!1416407 () Bool)

(assert (=> b!1533648 m!1416407))

(assert (=> b!1533652 m!1416401))

(assert (=> b!1533652 m!1416401))

(declare-fun m!1416409 () Bool)

(assert (=> b!1533652 m!1416409))

(declare-fun m!1416411 () Bool)

(assert (=> b!1533655 m!1416411))

(check-sat (not b!1533654) (not b!1533655) (not b!1533648) (not b!1533652) (not b!1533650) (not start!130812))
(check-sat)
