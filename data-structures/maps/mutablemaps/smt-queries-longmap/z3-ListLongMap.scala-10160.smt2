; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119766 () Bool)

(assert start!119766)

(declare-fun b!1394624 () Bool)

(declare-fun e!789608 () Bool)

(assert (=> b!1394624 (= e!789608 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!612625 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10376 0))(
  ( (MissingZero!10376 (index!43874 (_ BitVec 32))) (Found!10376 (index!43875 (_ BitVec 32))) (Intermediate!10376 (undefined!11188 Bool) (index!43876 (_ BitVec 32)) (x!125543 (_ BitVec 32))) (Undefined!10376) (MissingVacant!10376 (index!43877 (_ BitVec 32))) )
))
(declare-fun lt!612619 () SeekEntryResult!10376)

(declare-datatypes ((array!95366 0))(
  ( (array!95367 (arr!46037 (Array (_ BitVec 32) (_ BitVec 64))) (size!46588 (_ BitVec 32))) )
))
(declare-fun lt!612622 () array!95366)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95366 (_ BitVec 32)) SeekEntryResult!10376)

(assert (=> b!1394624 (= lt!612619 (seekEntryOrOpen!0 lt!612625 lt!612622 mask!2840))))

(declare-fun a!2901 () array!95366)

(declare-fun lt!612620 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!46706 0))(
  ( (Unit!46707) )
))
(declare-fun lt!612621 () Unit!46706)

(declare-fun lt!612624 () SeekEntryResult!10376)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46706)

(assert (=> b!1394624 (= lt!612621 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612620 (x!125543 lt!612624) (index!43876 lt!612624) mask!2840))))

(declare-fun b!1394625 () Bool)

(declare-fun e!789606 () Bool)

(declare-fun e!789607 () Bool)

(assert (=> b!1394625 (= e!789606 (not e!789607))))

(declare-fun res!934149 () Bool)

(assert (=> b!1394625 (=> res!934149 e!789607)))

(get-info :version)

(assert (=> b!1394625 (= res!934149 (or (not ((_ is Intermediate!10376) lt!612624)) (undefined!11188 lt!612624)))))

(assert (=> b!1394625 (= lt!612619 (Found!10376 j!112))))

(assert (=> b!1394625 (= lt!612619 (seekEntryOrOpen!0 (select (arr!46037 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95366 (_ BitVec 32)) Bool)

(assert (=> b!1394625 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612623 () Unit!46706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46706)

(assert (=> b!1394625 (= lt!612623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95366 (_ BitVec 32)) SeekEntryResult!10376)

(assert (=> b!1394625 (= lt!612624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612620 (select (arr!46037 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394625 (= lt!612620 (toIndex!0 (select (arr!46037 a!2901) j!112) mask!2840))))

(declare-fun b!1394626 () Bool)

(declare-fun res!934146 () Bool)

(assert (=> b!1394626 (=> (not res!934146) (not e!789606))))

(assert (=> b!1394626 (= res!934146 (and (= (size!46588 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46588 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46588 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394627 () Bool)

(declare-fun res!934143 () Bool)

(assert (=> b!1394627 (=> (not res!934143) (not e!789606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394627 (= res!934143 (validKeyInArray!0 (select (arr!46037 a!2901) j!112)))))

(declare-fun res!934145 () Bool)

(assert (=> start!119766 (=> (not res!934145) (not e!789606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119766 (= res!934145 (validMask!0 mask!2840))))

(assert (=> start!119766 e!789606))

(assert (=> start!119766 true))

(declare-fun array_inv!34982 (array!95366) Bool)

(assert (=> start!119766 (array_inv!34982 a!2901)))

(declare-fun b!1394628 () Bool)

(assert (=> b!1394628 (= e!789607 e!789608)))

(declare-fun res!934144 () Bool)

(assert (=> b!1394628 (=> res!934144 e!789608)))

(assert (=> b!1394628 (= res!934144 (not (= lt!612624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612625 mask!2840) lt!612625 lt!612622 mask!2840))))))

(assert (=> b!1394628 (= lt!612625 (select (store (arr!46037 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394628 (= lt!612622 (array!95367 (store (arr!46037 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46588 a!2901)))))

(declare-fun b!1394629 () Bool)

(declare-fun res!934141 () Bool)

(assert (=> b!1394629 (=> (not res!934141) (not e!789606))))

(declare-datatypes ((List!32736 0))(
  ( (Nil!32733) (Cons!32732 (h!33965 (_ BitVec 64)) (t!47437 List!32736)) )
))
(declare-fun arrayNoDuplicates!0 (array!95366 (_ BitVec 32) List!32736) Bool)

(assert (=> b!1394629 (= res!934141 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32733))))

(declare-fun b!1394630 () Bool)

(declare-fun res!934142 () Bool)

(assert (=> b!1394630 (=> (not res!934142) (not e!789606))))

(assert (=> b!1394630 (= res!934142 (validKeyInArray!0 (select (arr!46037 a!2901) i!1037)))))

(declare-fun b!1394631 () Bool)

(declare-fun res!934148 () Bool)

(assert (=> b!1394631 (=> (not res!934148) (not e!789606))))

(assert (=> b!1394631 (= res!934148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394632 () Bool)

(declare-fun res!934147 () Bool)

(assert (=> b!1394632 (=> res!934147 e!789608)))

(assert (=> b!1394632 (= res!934147 (or (bvslt (x!125543 lt!612624) #b00000000000000000000000000000000) (bvsgt (x!125543 lt!612624) #b01111111111111111111111111111110) (bvslt lt!612620 #b00000000000000000000000000000000) (bvsge lt!612620 (size!46588 a!2901)) (bvslt (index!43876 lt!612624) #b00000000000000000000000000000000) (bvsge (index!43876 lt!612624) (size!46588 a!2901)) (not (= lt!612624 (Intermediate!10376 false (index!43876 lt!612624) (x!125543 lt!612624))))))))

(assert (= (and start!119766 res!934145) b!1394626))

(assert (= (and b!1394626 res!934146) b!1394630))

(assert (= (and b!1394630 res!934142) b!1394627))

(assert (= (and b!1394627 res!934143) b!1394631))

(assert (= (and b!1394631 res!934148) b!1394629))

(assert (= (and b!1394629 res!934141) b!1394625))

(assert (= (and b!1394625 (not res!934149)) b!1394628))

(assert (= (and b!1394628 (not res!934144)) b!1394632))

(assert (= (and b!1394632 (not res!934147)) b!1394624))

(declare-fun m!1281115 () Bool)

(assert (=> b!1394624 m!1281115))

(declare-fun m!1281117 () Bool)

(assert (=> b!1394624 m!1281117))

(declare-fun m!1281119 () Bool)

(assert (=> b!1394625 m!1281119))

(declare-fun m!1281121 () Bool)

(assert (=> b!1394625 m!1281121))

(assert (=> b!1394625 m!1281119))

(declare-fun m!1281123 () Bool)

(assert (=> b!1394625 m!1281123))

(assert (=> b!1394625 m!1281119))

(declare-fun m!1281125 () Bool)

(assert (=> b!1394625 m!1281125))

(declare-fun m!1281127 () Bool)

(assert (=> b!1394625 m!1281127))

(assert (=> b!1394625 m!1281119))

(declare-fun m!1281129 () Bool)

(assert (=> b!1394625 m!1281129))

(declare-fun m!1281131 () Bool)

(assert (=> start!119766 m!1281131))

(declare-fun m!1281133 () Bool)

(assert (=> start!119766 m!1281133))

(declare-fun m!1281135 () Bool)

(assert (=> b!1394630 m!1281135))

(assert (=> b!1394630 m!1281135))

(declare-fun m!1281137 () Bool)

(assert (=> b!1394630 m!1281137))

(declare-fun m!1281139 () Bool)

(assert (=> b!1394628 m!1281139))

(assert (=> b!1394628 m!1281139))

(declare-fun m!1281141 () Bool)

(assert (=> b!1394628 m!1281141))

(declare-fun m!1281143 () Bool)

(assert (=> b!1394628 m!1281143))

(declare-fun m!1281145 () Bool)

(assert (=> b!1394628 m!1281145))

(declare-fun m!1281147 () Bool)

(assert (=> b!1394629 m!1281147))

(declare-fun m!1281149 () Bool)

(assert (=> b!1394631 m!1281149))

(assert (=> b!1394627 m!1281119))

(assert (=> b!1394627 m!1281119))

(declare-fun m!1281151 () Bool)

(assert (=> b!1394627 m!1281151))

(check-sat (not b!1394631) (not b!1394625) (not b!1394628) (not b!1394630) (not start!119766) (not b!1394629) (not b!1394624) (not b!1394627))
(check-sat)
