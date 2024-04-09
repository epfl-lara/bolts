; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120336 () Bool)

(assert start!120336)

(declare-fun b!1399806 () Bool)

(declare-fun e!792531 () Bool)

(assert (=> b!1399806 (= e!792531 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95663 0))(
  ( (array!95664 (arr!46178 (Array (_ BitVec 32) (_ BitVec 64))) (size!46729 (_ BitVec 32))) )
))
(declare-fun lt!615748 () array!95663)

(declare-fun lt!615750 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10517 0))(
  ( (MissingZero!10517 (index!44444 (_ BitVec 32))) (Found!10517 (index!44445 (_ BitVec 32))) (Intermediate!10517 (undefined!11329 Bool) (index!44446 (_ BitVec 32)) (x!126099 (_ BitVec 32))) (Undefined!10517) (MissingVacant!10517 (index!44447 (_ BitVec 32))) )
))
(declare-fun lt!615745 () SeekEntryResult!10517)

(declare-fun lt!615744 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95663 (_ BitVec 32)) SeekEntryResult!10517)

(assert (=> b!1399806 (= lt!615745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615750 lt!615744 lt!615748 mask!2840))))

(declare-fun a!2901 () array!95663)

(declare-fun b!1399807 () Bool)

(declare-fun e!792536 () Bool)

(declare-fun lt!615747 () SeekEntryResult!10517)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95663 (_ BitVec 32)) SeekEntryResult!10517)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95663 (_ BitVec 32)) SeekEntryResult!10517)

(assert (=> b!1399807 (= e!792536 (= (seekEntryOrOpen!0 lt!615744 lt!615748 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126099 lt!615747) (index!44446 lt!615747) (index!44446 lt!615747) (select (arr!46178 a!2901) j!112) lt!615748 mask!2840)))))

(declare-fun b!1399808 () Bool)

(declare-fun e!792533 () Bool)

(assert (=> b!1399808 (= e!792533 e!792531)))

(declare-fun res!938427 () Bool)

(assert (=> b!1399808 (=> res!938427 e!792531)))

(declare-fun lt!615749 () SeekEntryResult!10517)

(assert (=> b!1399808 (= res!938427 (or (bvslt (x!126099 lt!615749) #b00000000000000000000000000000000) (bvsgt (x!126099 lt!615749) #b01111111111111111111111111111110) (bvslt (x!126099 lt!615747) #b00000000000000000000000000000000) (bvsgt (x!126099 lt!615747) #b01111111111111111111111111111110) (bvslt lt!615750 #b00000000000000000000000000000000) (bvsge lt!615750 (size!46729 a!2901)) (bvslt (index!44446 lt!615749) #b00000000000000000000000000000000) (bvsge (index!44446 lt!615749) (size!46729 a!2901)) (bvslt (index!44446 lt!615747) #b00000000000000000000000000000000) (bvsge (index!44446 lt!615747) (size!46729 a!2901)) (not (= lt!615749 (Intermediate!10517 false (index!44446 lt!615749) (x!126099 lt!615749)))) (not (= lt!615747 (Intermediate!10517 false (index!44446 lt!615747) (x!126099 lt!615747))))))))

(assert (=> b!1399808 e!792536))

(declare-fun res!938426 () Bool)

(assert (=> b!1399808 (=> (not res!938426) (not e!792536))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399808 (= res!938426 (and (not (undefined!11329 lt!615747)) (= (index!44446 lt!615747) i!1037) (bvslt (x!126099 lt!615747) (x!126099 lt!615749)) (= (select (store (arr!46178 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44446 lt!615747)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46988 0))(
  ( (Unit!46989) )
))
(declare-fun lt!615751 () Unit!46988)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46988)

(assert (=> b!1399808 (= lt!615751 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615750 (x!126099 lt!615749) (index!44446 lt!615749) (x!126099 lt!615747) (index!44446 lt!615747) (undefined!11329 lt!615747) mask!2840))))

(declare-fun b!1399809 () Bool)

(declare-fun e!792530 () Bool)

(assert (=> b!1399809 (= e!792530 e!792533)))

(declare-fun res!938432 () Bool)

(assert (=> b!1399809 (=> res!938432 e!792533)))

(get-info :version)

(assert (=> b!1399809 (= res!938432 (or (= lt!615749 lt!615747) (not ((_ is Intermediate!10517) lt!615747))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399809 (= lt!615747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615744 mask!2840) lt!615744 lt!615748 mask!2840))))

(assert (=> b!1399809 (= lt!615744 (select (store (arr!46178 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399809 (= lt!615748 (array!95664 (store (arr!46178 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46729 a!2901)))))

(declare-fun res!938435 () Bool)

(declare-fun e!792532 () Bool)

(assert (=> start!120336 (=> (not res!938435) (not e!792532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120336 (= res!938435 (validMask!0 mask!2840))))

(assert (=> start!120336 e!792532))

(assert (=> start!120336 true))

(declare-fun array_inv!35123 (array!95663) Bool)

(assert (=> start!120336 (array_inv!35123 a!2901)))

(declare-fun b!1399810 () Bool)

(declare-fun res!938430 () Bool)

(assert (=> b!1399810 (=> (not res!938430) (not e!792532))))

(assert (=> b!1399810 (= res!938430 (and (= (size!46729 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46729 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46729 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399811 () Bool)

(declare-fun res!938428 () Bool)

(assert (=> b!1399811 (=> (not res!938428) (not e!792532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95663 (_ BitVec 32)) Bool)

(assert (=> b!1399811 (= res!938428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399812 () Bool)

(declare-fun e!792534 () Bool)

(assert (=> b!1399812 (= e!792534 (= (seekEntryOrOpen!0 (select (arr!46178 a!2901) j!112) a!2901 mask!2840) (Found!10517 j!112)))))

(declare-fun b!1399813 () Bool)

(declare-fun res!938434 () Bool)

(assert (=> b!1399813 (=> (not res!938434) (not e!792532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399813 (= res!938434 (validKeyInArray!0 (select (arr!46178 a!2901) j!112)))))

(declare-fun b!1399814 () Bool)

(declare-fun res!938429 () Bool)

(assert (=> b!1399814 (=> (not res!938429) (not e!792532))))

(assert (=> b!1399814 (= res!938429 (validKeyInArray!0 (select (arr!46178 a!2901) i!1037)))))

(declare-fun b!1399815 () Bool)

(declare-fun res!938431 () Bool)

(assert (=> b!1399815 (=> (not res!938431) (not e!792532))))

(declare-datatypes ((List!32877 0))(
  ( (Nil!32874) (Cons!32873 (h!34121 (_ BitVec 64)) (t!47578 List!32877)) )
))
(declare-fun arrayNoDuplicates!0 (array!95663 (_ BitVec 32) List!32877) Bool)

(assert (=> b!1399815 (= res!938431 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32874))))

(declare-fun b!1399816 () Bool)

(assert (=> b!1399816 (= e!792532 (not e!792530))))

(declare-fun res!938433 () Bool)

(assert (=> b!1399816 (=> res!938433 e!792530)))

(assert (=> b!1399816 (= res!938433 (or (not ((_ is Intermediate!10517) lt!615749)) (undefined!11329 lt!615749)))))

(assert (=> b!1399816 e!792534))

(declare-fun res!938436 () Bool)

(assert (=> b!1399816 (=> (not res!938436) (not e!792534))))

(assert (=> b!1399816 (= res!938436 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615746 () Unit!46988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46988)

(assert (=> b!1399816 (= lt!615746 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399816 (= lt!615749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615750 (select (arr!46178 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399816 (= lt!615750 (toIndex!0 (select (arr!46178 a!2901) j!112) mask!2840))))

(assert (= (and start!120336 res!938435) b!1399810))

(assert (= (and b!1399810 res!938430) b!1399814))

(assert (= (and b!1399814 res!938429) b!1399813))

(assert (= (and b!1399813 res!938434) b!1399811))

(assert (= (and b!1399811 res!938428) b!1399815))

(assert (= (and b!1399815 res!938431) b!1399816))

(assert (= (and b!1399816 res!938436) b!1399812))

(assert (= (and b!1399816 (not res!938433)) b!1399809))

(assert (= (and b!1399809 (not res!938432)) b!1399808))

(assert (= (and b!1399808 res!938426) b!1399807))

(assert (= (and b!1399808 (not res!938427)) b!1399806))

(declare-fun m!1287133 () Bool)

(assert (=> b!1399814 m!1287133))

(assert (=> b!1399814 m!1287133))

(declare-fun m!1287135 () Bool)

(assert (=> b!1399814 m!1287135))

(declare-fun m!1287137 () Bool)

(assert (=> b!1399806 m!1287137))

(declare-fun m!1287139 () Bool)

(assert (=> b!1399807 m!1287139))

(declare-fun m!1287141 () Bool)

(assert (=> b!1399807 m!1287141))

(assert (=> b!1399807 m!1287141))

(declare-fun m!1287143 () Bool)

(assert (=> b!1399807 m!1287143))

(declare-fun m!1287145 () Bool)

(assert (=> start!120336 m!1287145))

(declare-fun m!1287147 () Bool)

(assert (=> start!120336 m!1287147))

(assert (=> b!1399812 m!1287141))

(assert (=> b!1399812 m!1287141))

(declare-fun m!1287149 () Bool)

(assert (=> b!1399812 m!1287149))

(assert (=> b!1399813 m!1287141))

(assert (=> b!1399813 m!1287141))

(declare-fun m!1287151 () Bool)

(assert (=> b!1399813 m!1287151))

(declare-fun m!1287153 () Bool)

(assert (=> b!1399811 m!1287153))

(declare-fun m!1287155 () Bool)

(assert (=> b!1399808 m!1287155))

(declare-fun m!1287157 () Bool)

(assert (=> b!1399808 m!1287157))

(declare-fun m!1287159 () Bool)

(assert (=> b!1399808 m!1287159))

(assert (=> b!1399816 m!1287141))

(declare-fun m!1287161 () Bool)

(assert (=> b!1399816 m!1287161))

(assert (=> b!1399816 m!1287141))

(assert (=> b!1399816 m!1287141))

(declare-fun m!1287163 () Bool)

(assert (=> b!1399816 m!1287163))

(declare-fun m!1287165 () Bool)

(assert (=> b!1399816 m!1287165))

(declare-fun m!1287167 () Bool)

(assert (=> b!1399816 m!1287167))

(declare-fun m!1287169 () Bool)

(assert (=> b!1399815 m!1287169))

(declare-fun m!1287171 () Bool)

(assert (=> b!1399809 m!1287171))

(assert (=> b!1399809 m!1287171))

(declare-fun m!1287173 () Bool)

(assert (=> b!1399809 m!1287173))

(assert (=> b!1399809 m!1287155))

(declare-fun m!1287175 () Bool)

(assert (=> b!1399809 m!1287175))

(check-sat (not b!1399812) (not b!1399811) (not b!1399807) (not b!1399813) (not b!1399814) (not b!1399815) (not start!120336) (not b!1399809) (not b!1399816) (not b!1399808) (not b!1399806))
(check-sat)
