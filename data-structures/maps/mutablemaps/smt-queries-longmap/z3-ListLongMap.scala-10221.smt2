; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120420 () Bool)

(assert start!120420)

(declare-fun b!1401192 () Bool)

(declare-fun e!793417 () Bool)

(assert (=> b!1401192 (= e!793417 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!616752 () (_ BitVec 64))

(declare-fun lt!616759 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10559 0))(
  ( (MissingZero!10559 (index!44612 (_ BitVec 32))) (Found!10559 (index!44613 (_ BitVec 32))) (Intermediate!10559 (undefined!11371 Bool) (index!44614 (_ BitVec 32)) (x!126253 (_ BitVec 32))) (Undefined!10559) (MissingVacant!10559 (index!44615 (_ BitVec 32))) )
))
(declare-fun lt!616756 () SeekEntryResult!10559)

(declare-datatypes ((array!95747 0))(
  ( (array!95748 (arr!46220 (Array (_ BitVec 32) (_ BitVec 64))) (size!46771 (_ BitVec 32))) )
))
(declare-fun lt!616755 () array!95747)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95747 (_ BitVec 32)) SeekEntryResult!10559)

(assert (=> b!1401192 (= lt!616756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616759 lt!616752 lt!616755 mask!2840))))

(declare-fun a!2901 () array!95747)

(declare-fun e!793418 () Bool)

(declare-fun b!1401193 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!616754 () SeekEntryResult!10559)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95747 (_ BitVec 32)) SeekEntryResult!10559)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95747 (_ BitVec 32)) SeekEntryResult!10559)

(assert (=> b!1401193 (= e!793418 (= (seekEntryOrOpen!0 lt!616752 lt!616755 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126253 lt!616754) (index!44614 lt!616754) (index!44614 lt!616754) (select (arr!46220 a!2901) j!112) lt!616755 mask!2840)))))

(declare-fun b!1401194 () Bool)

(declare-fun e!793416 () Bool)

(declare-fun e!793413 () Bool)

(assert (=> b!1401194 (= e!793416 (not e!793413))))

(declare-fun res!939819 () Bool)

(assert (=> b!1401194 (=> res!939819 e!793413)))

(declare-fun lt!616757 () SeekEntryResult!10559)

(get-info :version)

(assert (=> b!1401194 (= res!939819 (or (not ((_ is Intermediate!10559) lt!616757)) (undefined!11371 lt!616757)))))

(declare-fun e!793412 () Bool)

(assert (=> b!1401194 e!793412))

(declare-fun res!939822 () Bool)

(assert (=> b!1401194 (=> (not res!939822) (not e!793412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95747 (_ BitVec 32)) Bool)

(assert (=> b!1401194 (= res!939822 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47072 0))(
  ( (Unit!47073) )
))
(declare-fun lt!616758 () Unit!47072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47072)

(assert (=> b!1401194 (= lt!616758 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401194 (= lt!616757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616759 (select (arr!46220 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401194 (= lt!616759 (toIndex!0 (select (arr!46220 a!2901) j!112) mask!2840))))

(declare-fun b!1401196 () Bool)

(declare-fun res!939812 () Bool)

(assert (=> b!1401196 (=> (not res!939812) (not e!793416))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401196 (= res!939812 (and (= (size!46771 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46771 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46771 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401197 () Bool)

(assert (=> b!1401197 (= e!793412 (= (seekEntryOrOpen!0 (select (arr!46220 a!2901) j!112) a!2901 mask!2840) (Found!10559 j!112)))))

(declare-fun b!1401198 () Bool)

(declare-fun res!939816 () Bool)

(assert (=> b!1401198 (=> (not res!939816) (not e!793416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401198 (= res!939816 (validKeyInArray!0 (select (arr!46220 a!2901) j!112)))))

(declare-fun b!1401199 () Bool)

(declare-fun e!793414 () Bool)

(assert (=> b!1401199 (= e!793414 e!793417)))

(declare-fun res!939821 () Bool)

(assert (=> b!1401199 (=> res!939821 e!793417)))

(assert (=> b!1401199 (= res!939821 (or (bvslt (x!126253 lt!616757) #b00000000000000000000000000000000) (bvsgt (x!126253 lt!616757) #b01111111111111111111111111111110) (bvslt (x!126253 lt!616754) #b00000000000000000000000000000000) (bvsgt (x!126253 lt!616754) #b01111111111111111111111111111110) (bvslt lt!616759 #b00000000000000000000000000000000) (bvsge lt!616759 (size!46771 a!2901)) (bvslt (index!44614 lt!616757) #b00000000000000000000000000000000) (bvsge (index!44614 lt!616757) (size!46771 a!2901)) (bvslt (index!44614 lt!616754) #b00000000000000000000000000000000) (bvsge (index!44614 lt!616754) (size!46771 a!2901)) (not (= lt!616757 (Intermediate!10559 false (index!44614 lt!616757) (x!126253 lt!616757)))) (not (= lt!616754 (Intermediate!10559 false (index!44614 lt!616754) (x!126253 lt!616754))))))))

(assert (=> b!1401199 e!793418))

(declare-fun res!939817 () Bool)

(assert (=> b!1401199 (=> (not res!939817) (not e!793418))))

(assert (=> b!1401199 (= res!939817 (and (not (undefined!11371 lt!616754)) (= (index!44614 lt!616754) i!1037) (bvslt (x!126253 lt!616754) (x!126253 lt!616757)) (= (select (store (arr!46220 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44614 lt!616754)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616753 () Unit!47072)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47072)

(assert (=> b!1401199 (= lt!616753 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616759 (x!126253 lt!616757) (index!44614 lt!616757) (x!126253 lt!616754) (index!44614 lt!616754) (undefined!11371 lt!616754) mask!2840))))

(declare-fun b!1401200 () Bool)

(declare-fun res!939820 () Bool)

(assert (=> b!1401200 (=> (not res!939820) (not e!793416))))

(assert (=> b!1401200 (= res!939820 (validKeyInArray!0 (select (arr!46220 a!2901) i!1037)))))

(declare-fun b!1401201 () Bool)

(declare-fun res!939815 () Bool)

(assert (=> b!1401201 (=> (not res!939815) (not e!793416))))

(assert (=> b!1401201 (= res!939815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401202 () Bool)

(assert (=> b!1401202 (= e!793413 e!793414)))

(declare-fun res!939818 () Bool)

(assert (=> b!1401202 (=> res!939818 e!793414)))

(assert (=> b!1401202 (= res!939818 (or (= lt!616757 lt!616754) (not ((_ is Intermediate!10559) lt!616754))))))

(assert (=> b!1401202 (= lt!616754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616752 mask!2840) lt!616752 lt!616755 mask!2840))))

(assert (=> b!1401202 (= lt!616752 (select (store (arr!46220 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401202 (= lt!616755 (array!95748 (store (arr!46220 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46771 a!2901)))))

(declare-fun b!1401195 () Bool)

(declare-fun res!939813 () Bool)

(assert (=> b!1401195 (=> (not res!939813) (not e!793416))))

(declare-datatypes ((List!32919 0))(
  ( (Nil!32916) (Cons!32915 (h!34163 (_ BitVec 64)) (t!47620 List!32919)) )
))
(declare-fun arrayNoDuplicates!0 (array!95747 (_ BitVec 32) List!32919) Bool)

(assert (=> b!1401195 (= res!939813 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32916))))

(declare-fun res!939814 () Bool)

(assert (=> start!120420 (=> (not res!939814) (not e!793416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120420 (= res!939814 (validMask!0 mask!2840))))

(assert (=> start!120420 e!793416))

(assert (=> start!120420 true))

(declare-fun array_inv!35165 (array!95747) Bool)

(assert (=> start!120420 (array_inv!35165 a!2901)))

(assert (= (and start!120420 res!939814) b!1401196))

(assert (= (and b!1401196 res!939812) b!1401200))

(assert (= (and b!1401200 res!939820) b!1401198))

(assert (= (and b!1401198 res!939816) b!1401201))

(assert (= (and b!1401201 res!939815) b!1401195))

(assert (= (and b!1401195 res!939813) b!1401194))

(assert (= (and b!1401194 res!939822) b!1401197))

(assert (= (and b!1401194 (not res!939819)) b!1401202))

(assert (= (and b!1401202 (not res!939818)) b!1401199))

(assert (= (and b!1401199 res!939817) b!1401193))

(assert (= (and b!1401199 (not res!939821)) b!1401192))

(declare-fun m!1288981 () Bool)

(assert (=> b!1401200 m!1288981))

(assert (=> b!1401200 m!1288981))

(declare-fun m!1288983 () Bool)

(assert (=> b!1401200 m!1288983))

(declare-fun m!1288985 () Bool)

(assert (=> b!1401195 m!1288985))

(declare-fun m!1288987 () Bool)

(assert (=> b!1401194 m!1288987))

(declare-fun m!1288989 () Bool)

(assert (=> b!1401194 m!1288989))

(assert (=> b!1401194 m!1288987))

(declare-fun m!1288991 () Bool)

(assert (=> b!1401194 m!1288991))

(assert (=> b!1401194 m!1288987))

(declare-fun m!1288993 () Bool)

(assert (=> b!1401194 m!1288993))

(declare-fun m!1288995 () Bool)

(assert (=> b!1401194 m!1288995))

(assert (=> b!1401197 m!1288987))

(assert (=> b!1401197 m!1288987))

(declare-fun m!1288997 () Bool)

(assert (=> b!1401197 m!1288997))

(assert (=> b!1401198 m!1288987))

(assert (=> b!1401198 m!1288987))

(declare-fun m!1288999 () Bool)

(assert (=> b!1401198 m!1288999))

(declare-fun m!1289001 () Bool)

(assert (=> b!1401192 m!1289001))

(declare-fun m!1289003 () Bool)

(assert (=> b!1401193 m!1289003))

(assert (=> b!1401193 m!1288987))

(assert (=> b!1401193 m!1288987))

(declare-fun m!1289005 () Bool)

(assert (=> b!1401193 m!1289005))

(declare-fun m!1289007 () Bool)

(assert (=> start!120420 m!1289007))

(declare-fun m!1289009 () Bool)

(assert (=> start!120420 m!1289009))

(declare-fun m!1289011 () Bool)

(assert (=> b!1401202 m!1289011))

(assert (=> b!1401202 m!1289011))

(declare-fun m!1289013 () Bool)

(assert (=> b!1401202 m!1289013))

(declare-fun m!1289015 () Bool)

(assert (=> b!1401202 m!1289015))

(declare-fun m!1289017 () Bool)

(assert (=> b!1401202 m!1289017))

(declare-fun m!1289019 () Bool)

(assert (=> b!1401201 m!1289019))

(assert (=> b!1401199 m!1289015))

(declare-fun m!1289021 () Bool)

(assert (=> b!1401199 m!1289021))

(declare-fun m!1289023 () Bool)

(assert (=> b!1401199 m!1289023))

(check-sat (not b!1401193) (not start!120420) (not b!1401202) (not b!1401195) (not b!1401198) (not b!1401199) (not b!1401200) (not b!1401201) (not b!1401197) (not b!1401194) (not b!1401192))
(check-sat)
