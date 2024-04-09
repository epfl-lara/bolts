; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120444 () Bool)

(assert start!120444)

(declare-fun b!1401588 () Bool)

(declare-fun e!793667 () Bool)

(declare-fun e!793666 () Bool)

(assert (=> b!1401588 (= e!793667 e!793666)))

(declare-fun res!940215 () Bool)

(assert (=> b!1401588 (=> res!940215 e!793666)))

(declare-datatypes ((array!95771 0))(
  ( (array!95772 (arr!46232 (Array (_ BitVec 32) (_ BitVec 64))) (size!46783 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95771)

(declare-datatypes ((SeekEntryResult!10571 0))(
  ( (MissingZero!10571 (index!44660 (_ BitVec 32))) (Found!10571 (index!44661 (_ BitVec 32))) (Intermediate!10571 (undefined!11383 Bool) (index!44662 (_ BitVec 32)) (x!126297 (_ BitVec 32))) (Undefined!10571) (MissingVacant!10571 (index!44663 (_ BitVec 32))) )
))
(declare-fun lt!617041 () SeekEntryResult!10571)

(declare-fun lt!617042 () (_ BitVec 32))

(declare-fun lt!617043 () SeekEntryResult!10571)

(assert (=> b!1401588 (= res!940215 (or (bvslt (x!126297 lt!617041) #b00000000000000000000000000000000) (bvsgt (x!126297 lt!617041) #b01111111111111111111111111111110) (bvslt (x!126297 lt!617043) #b00000000000000000000000000000000) (bvsgt (x!126297 lt!617043) #b01111111111111111111111111111110) (bvslt lt!617042 #b00000000000000000000000000000000) (bvsge lt!617042 (size!46783 a!2901)) (bvslt (index!44662 lt!617041) #b00000000000000000000000000000000) (bvsge (index!44662 lt!617041) (size!46783 a!2901)) (bvslt (index!44662 lt!617043) #b00000000000000000000000000000000) (bvsge (index!44662 lt!617043) (size!46783 a!2901)) (not (= lt!617041 (Intermediate!10571 false (index!44662 lt!617041) (x!126297 lt!617041)))) (not (= lt!617043 (Intermediate!10571 false (index!44662 lt!617043) (x!126297 lt!617043))))))))

(declare-fun e!793664 () Bool)

(assert (=> b!1401588 e!793664))

(declare-fun res!940218 () Bool)

(assert (=> b!1401588 (=> (not res!940218) (not e!793664))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401588 (= res!940218 (and (not (undefined!11383 lt!617043)) (= (index!44662 lt!617043) i!1037) (bvslt (x!126297 lt!617043) (x!126297 lt!617041)) (= (select (store (arr!46232 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44662 lt!617043)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47096 0))(
  ( (Unit!47097) )
))
(declare-fun lt!617040 () Unit!47096)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47096)

(assert (=> b!1401588 (= lt!617040 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617042 (x!126297 lt!617041) (index!44662 lt!617041) (x!126297 lt!617043) (index!44662 lt!617043) (undefined!11383 lt!617043) mask!2840))))

(declare-fun b!1401589 () Bool)

(declare-fun res!940209 () Bool)

(declare-fun e!793665 () Bool)

(assert (=> b!1401589 (=> (not res!940209) (not e!793665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401589 (= res!940209 (validKeyInArray!0 (select (arr!46232 a!2901) j!112)))))

(declare-fun lt!617045 () array!95771)

(declare-fun lt!617044 () (_ BitVec 64))

(declare-fun b!1401590 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95771 (_ BitVec 32)) SeekEntryResult!10571)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95771 (_ BitVec 32)) SeekEntryResult!10571)

(assert (=> b!1401590 (= e!793664 (= (seekEntryOrOpen!0 lt!617044 lt!617045 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126297 lt!617043) (index!44662 lt!617043) (index!44662 lt!617043) (select (arr!46232 a!2901) j!112) lt!617045 mask!2840)))))

(declare-fun b!1401591 () Bool)

(declare-fun res!940208 () Bool)

(assert (=> b!1401591 (=> (not res!940208) (not e!793665))))

(assert (=> b!1401591 (= res!940208 (validKeyInArray!0 (select (arr!46232 a!2901) i!1037)))))

(declare-fun e!793670 () Bool)

(declare-fun b!1401592 () Bool)

(assert (=> b!1401592 (= e!793670 (= (seekEntryOrOpen!0 (select (arr!46232 a!2901) j!112) a!2901 mask!2840) (Found!10571 j!112)))))

(declare-fun b!1401593 () Bool)

(declare-fun e!793668 () Bool)

(assert (=> b!1401593 (= e!793668 e!793667)))

(declare-fun res!940216 () Bool)

(assert (=> b!1401593 (=> res!940216 e!793667)))

(get-info :version)

(assert (=> b!1401593 (= res!940216 (or (= lt!617041 lt!617043) (not ((_ is Intermediate!10571) lt!617043))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95771 (_ BitVec 32)) SeekEntryResult!10571)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401593 (= lt!617043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617044 mask!2840) lt!617044 lt!617045 mask!2840))))

(assert (=> b!1401593 (= lt!617044 (select (store (arr!46232 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401593 (= lt!617045 (array!95772 (store (arr!46232 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46783 a!2901)))))

(declare-fun b!1401594 () Bool)

(assert (=> b!1401594 (= e!793666 true)))

(declare-fun lt!617046 () SeekEntryResult!10571)

(assert (=> b!1401594 (= lt!617046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617042 lt!617044 lt!617045 mask!2840))))

(declare-fun b!1401595 () Bool)

(declare-fun res!940212 () Bool)

(assert (=> b!1401595 (=> (not res!940212) (not e!793665))))

(declare-datatypes ((List!32931 0))(
  ( (Nil!32928) (Cons!32927 (h!34175 (_ BitVec 64)) (t!47632 List!32931)) )
))
(declare-fun arrayNoDuplicates!0 (array!95771 (_ BitVec 32) List!32931) Bool)

(assert (=> b!1401595 (= res!940212 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32928))))

(declare-fun b!1401596 () Bool)

(assert (=> b!1401596 (= e!793665 (not e!793668))))

(declare-fun res!940211 () Bool)

(assert (=> b!1401596 (=> res!940211 e!793668)))

(assert (=> b!1401596 (= res!940211 (or (not ((_ is Intermediate!10571) lt!617041)) (undefined!11383 lt!617041)))))

(assert (=> b!1401596 e!793670))

(declare-fun res!940214 () Bool)

(assert (=> b!1401596 (=> (not res!940214) (not e!793670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95771 (_ BitVec 32)) Bool)

(assert (=> b!1401596 (= res!940214 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617047 () Unit!47096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47096)

(assert (=> b!1401596 (= lt!617047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401596 (= lt!617041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617042 (select (arr!46232 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401596 (= lt!617042 (toIndex!0 (select (arr!46232 a!2901) j!112) mask!2840))))

(declare-fun b!1401597 () Bool)

(declare-fun res!940210 () Bool)

(assert (=> b!1401597 (=> (not res!940210) (not e!793665))))

(assert (=> b!1401597 (= res!940210 (and (= (size!46783 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46783 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46783 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!940217 () Bool)

(assert (=> start!120444 (=> (not res!940217) (not e!793665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120444 (= res!940217 (validMask!0 mask!2840))))

(assert (=> start!120444 e!793665))

(assert (=> start!120444 true))

(declare-fun array_inv!35177 (array!95771) Bool)

(assert (=> start!120444 (array_inv!35177 a!2901)))

(declare-fun b!1401598 () Bool)

(declare-fun res!940213 () Bool)

(assert (=> b!1401598 (=> (not res!940213) (not e!793665))))

(assert (=> b!1401598 (= res!940213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120444 res!940217) b!1401597))

(assert (= (and b!1401597 res!940210) b!1401591))

(assert (= (and b!1401591 res!940208) b!1401589))

(assert (= (and b!1401589 res!940209) b!1401598))

(assert (= (and b!1401598 res!940213) b!1401595))

(assert (= (and b!1401595 res!940212) b!1401596))

(assert (= (and b!1401596 res!940214) b!1401592))

(assert (= (and b!1401596 (not res!940211)) b!1401593))

(assert (= (and b!1401593 (not res!940216)) b!1401588))

(assert (= (and b!1401588 res!940218) b!1401590))

(assert (= (and b!1401588 (not res!940215)) b!1401594))

(declare-fun m!1289509 () Bool)

(assert (=> b!1401594 m!1289509))

(declare-fun m!1289511 () Bool)

(assert (=> b!1401598 m!1289511))

(declare-fun m!1289513 () Bool)

(assert (=> start!120444 m!1289513))

(declare-fun m!1289515 () Bool)

(assert (=> start!120444 m!1289515))

(declare-fun m!1289517 () Bool)

(assert (=> b!1401589 m!1289517))

(assert (=> b!1401589 m!1289517))

(declare-fun m!1289519 () Bool)

(assert (=> b!1401589 m!1289519))

(declare-fun m!1289521 () Bool)

(assert (=> b!1401595 m!1289521))

(assert (=> b!1401592 m!1289517))

(assert (=> b!1401592 m!1289517))

(declare-fun m!1289523 () Bool)

(assert (=> b!1401592 m!1289523))

(declare-fun m!1289525 () Bool)

(assert (=> b!1401588 m!1289525))

(declare-fun m!1289527 () Bool)

(assert (=> b!1401588 m!1289527))

(declare-fun m!1289529 () Bool)

(assert (=> b!1401588 m!1289529))

(declare-fun m!1289531 () Bool)

(assert (=> b!1401593 m!1289531))

(assert (=> b!1401593 m!1289531))

(declare-fun m!1289533 () Bool)

(assert (=> b!1401593 m!1289533))

(assert (=> b!1401593 m!1289525))

(declare-fun m!1289535 () Bool)

(assert (=> b!1401593 m!1289535))

(declare-fun m!1289537 () Bool)

(assert (=> b!1401590 m!1289537))

(assert (=> b!1401590 m!1289517))

(assert (=> b!1401590 m!1289517))

(declare-fun m!1289539 () Bool)

(assert (=> b!1401590 m!1289539))

(declare-fun m!1289541 () Bool)

(assert (=> b!1401591 m!1289541))

(assert (=> b!1401591 m!1289541))

(declare-fun m!1289543 () Bool)

(assert (=> b!1401591 m!1289543))

(assert (=> b!1401596 m!1289517))

(declare-fun m!1289545 () Bool)

(assert (=> b!1401596 m!1289545))

(assert (=> b!1401596 m!1289517))

(assert (=> b!1401596 m!1289517))

(declare-fun m!1289547 () Bool)

(assert (=> b!1401596 m!1289547))

(declare-fun m!1289549 () Bool)

(assert (=> b!1401596 m!1289549))

(declare-fun m!1289551 () Bool)

(assert (=> b!1401596 m!1289551))

(check-sat (not b!1401595) (not b!1401592) (not b!1401594) (not start!120444) (not b!1401598) (not b!1401593) (not b!1401596) (not b!1401588) (not b!1401590) (not b!1401591) (not b!1401589))
(check-sat)
