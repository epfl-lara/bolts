; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122814 () Bool)

(assert start!122814)

(declare-fun b!1423129 () Bool)

(declare-fun e!804461 () Bool)

(assert (=> b!1423129 (= e!804461 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11169 0))(
  ( (MissingZero!11169 (index!47067 (_ BitVec 32))) (Found!11169 (index!47068 (_ BitVec 32))) (Intermediate!11169 (undefined!11981 Bool) (index!47069 (_ BitVec 32)) (x!128710 (_ BitVec 32))) (Undefined!11169) (MissingVacant!11169 (index!47070 (_ BitVec 32))) )
))
(declare-fun lt!626956 () SeekEntryResult!11169)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!626959 () (_ BitVec 64))

(declare-fun lt!626957 () (_ BitVec 32))

(declare-datatypes ((array!97097 0))(
  ( (array!97098 (arr!46862 (Array (_ BitVec 32) (_ BitVec 64))) (size!47413 (_ BitVec 32))) )
))
(declare-fun lt!626953 () array!97097)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97097 (_ BitVec 32)) SeekEntryResult!11169)

(assert (=> b!1423129 (= lt!626956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626957 lt!626959 lt!626953 mask!2608))))

(declare-fun b!1423130 () Bool)

(declare-fun res!958679 () Bool)

(declare-fun e!804465 () Bool)

(assert (=> b!1423130 (=> (not res!958679) (not e!804465))))

(declare-fun a!2831 () array!97097)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97097 (_ BitVec 32)) Bool)

(assert (=> b!1423130 (= res!958679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423131 () Bool)

(declare-fun res!958683 () Bool)

(assert (=> b!1423131 (=> (not res!958683) (not e!804465))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423131 (= res!958683 (and (= (size!47413 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47413 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47413 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423132 () Bool)

(declare-fun res!958673 () Bool)

(declare-fun e!804466 () Bool)

(assert (=> b!1423132 (=> (not res!958673) (not e!804466))))

(declare-fun lt!626954 () SeekEntryResult!11169)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423132 (= res!958673 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46862 a!2831) j!81) a!2831 mask!2608) lt!626954))))

(declare-fun b!1423133 () Bool)

(declare-fun res!958682 () Bool)

(assert (=> b!1423133 (=> (not res!958682) (not e!804465))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423133 (= res!958682 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47413 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47413 a!2831))))))

(declare-fun b!1423134 () Bool)

(declare-fun e!804464 () Bool)

(assert (=> b!1423134 (= e!804466 (not e!804464))))

(declare-fun res!958681 () Bool)

(assert (=> b!1423134 (=> res!958681 e!804464)))

(assert (=> b!1423134 (= res!958681 (or (= (select (arr!46862 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46862 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46862 a!2831) index!585) (select (arr!46862 a!2831) j!81)) (= (select (store (arr!46862 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804467 () Bool)

(assert (=> b!1423134 e!804467))

(declare-fun res!958678 () Bool)

(assert (=> b!1423134 (=> (not res!958678) (not e!804467))))

(assert (=> b!1423134 (= res!958678 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48122 0))(
  ( (Unit!48123) )
))
(declare-fun lt!626958 () Unit!48122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48122)

(assert (=> b!1423134 (= lt!626958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423135 () Bool)

(declare-fun res!958684 () Bool)

(assert (=> b!1423135 (=> (not res!958684) (not e!804465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423135 (= res!958684 (validKeyInArray!0 (select (arr!46862 a!2831) j!81)))))

(declare-fun b!1423136 () Bool)

(declare-fun e!804462 () Bool)

(assert (=> b!1423136 (= e!804462 e!804466)))

(declare-fun res!958686 () Bool)

(assert (=> b!1423136 (=> (not res!958686) (not e!804466))))

(declare-fun lt!626955 () SeekEntryResult!11169)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423136 (= res!958686 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626959 mask!2608) lt!626959 lt!626953 mask!2608) lt!626955))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423136 (= lt!626955 (Intermediate!11169 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423136 (= lt!626959 (select (store (arr!46862 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423136 (= lt!626953 (array!97098 (store (arr!46862 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47413 a!2831)))))

(declare-fun b!1423137 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97097 (_ BitVec 32)) SeekEntryResult!11169)

(assert (=> b!1423137 (= e!804467 (= (seekEntryOrOpen!0 (select (arr!46862 a!2831) j!81) a!2831 mask!2608) (Found!11169 j!81)))))

(declare-fun b!1423138 () Bool)

(declare-fun res!958680 () Bool)

(assert (=> b!1423138 (=> res!958680 e!804461)))

(assert (=> b!1423138 (= res!958680 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626957 (select (arr!46862 a!2831) j!81) a!2831 mask!2608) lt!626954)))))

(declare-fun b!1423139 () Bool)

(declare-fun res!958672 () Bool)

(assert (=> b!1423139 (=> (not res!958672) (not e!804466))))

(assert (=> b!1423139 (= res!958672 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423140 () Bool)

(declare-fun res!958677 () Bool)

(assert (=> b!1423140 (=> (not res!958677) (not e!804465))))

(declare-datatypes ((List!33552 0))(
  ( (Nil!33549) (Cons!33548 (h!34850 (_ BitVec 64)) (t!48253 List!33552)) )
))
(declare-fun arrayNoDuplicates!0 (array!97097 (_ BitVec 32) List!33552) Bool)

(assert (=> b!1423140 (= res!958677 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33549))))

(declare-fun b!1423141 () Bool)

(assert (=> b!1423141 (= e!804464 e!804461)))

(declare-fun res!958671 () Bool)

(assert (=> b!1423141 (=> res!958671 e!804461)))

(assert (=> b!1423141 (= res!958671 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626957 #b00000000000000000000000000000000) (bvsge lt!626957 (size!47413 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423141 (= lt!626957 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423142 () Bool)

(assert (=> b!1423142 (= e!804465 e!804462)))

(declare-fun res!958685 () Bool)

(assert (=> b!1423142 (=> (not res!958685) (not e!804462))))

(assert (=> b!1423142 (= res!958685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46862 a!2831) j!81) mask!2608) (select (arr!46862 a!2831) j!81) a!2831 mask!2608) lt!626954))))

(assert (=> b!1423142 (= lt!626954 (Intermediate!11169 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423143 () Bool)

(declare-fun res!958674 () Bool)

(assert (=> b!1423143 (=> (not res!958674) (not e!804465))))

(assert (=> b!1423143 (= res!958674 (validKeyInArray!0 (select (arr!46862 a!2831) i!982)))))

(declare-fun res!958676 () Bool)

(assert (=> start!122814 (=> (not res!958676) (not e!804465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122814 (= res!958676 (validMask!0 mask!2608))))

(assert (=> start!122814 e!804465))

(assert (=> start!122814 true))

(declare-fun array_inv!35807 (array!97097) Bool)

(assert (=> start!122814 (array_inv!35807 a!2831)))

(declare-fun b!1423144 () Bool)

(declare-fun res!958675 () Bool)

(assert (=> b!1423144 (=> (not res!958675) (not e!804466))))

(assert (=> b!1423144 (= res!958675 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626959 lt!626953 mask!2608) lt!626955))))

(assert (= (and start!122814 res!958676) b!1423131))

(assert (= (and b!1423131 res!958683) b!1423143))

(assert (= (and b!1423143 res!958674) b!1423135))

(assert (= (and b!1423135 res!958684) b!1423130))

(assert (= (and b!1423130 res!958679) b!1423140))

(assert (= (and b!1423140 res!958677) b!1423133))

(assert (= (and b!1423133 res!958682) b!1423142))

(assert (= (and b!1423142 res!958685) b!1423136))

(assert (= (and b!1423136 res!958686) b!1423132))

(assert (= (and b!1423132 res!958673) b!1423144))

(assert (= (and b!1423144 res!958675) b!1423139))

(assert (= (and b!1423139 res!958672) b!1423134))

(assert (= (and b!1423134 res!958678) b!1423137))

(assert (= (and b!1423134 (not res!958681)) b!1423141))

(assert (= (and b!1423141 (not res!958671)) b!1423138))

(assert (= (and b!1423138 (not res!958680)) b!1423129))

(declare-fun m!1313735 () Bool)

(assert (=> b!1423141 m!1313735))

(declare-fun m!1313737 () Bool)

(assert (=> b!1423138 m!1313737))

(assert (=> b!1423138 m!1313737))

(declare-fun m!1313739 () Bool)

(assert (=> b!1423138 m!1313739))

(declare-fun m!1313741 () Bool)

(assert (=> start!122814 m!1313741))

(declare-fun m!1313743 () Bool)

(assert (=> start!122814 m!1313743))

(assert (=> b!1423137 m!1313737))

(assert (=> b!1423137 m!1313737))

(declare-fun m!1313745 () Bool)

(assert (=> b!1423137 m!1313745))

(assert (=> b!1423142 m!1313737))

(assert (=> b!1423142 m!1313737))

(declare-fun m!1313747 () Bool)

(assert (=> b!1423142 m!1313747))

(assert (=> b!1423142 m!1313747))

(assert (=> b!1423142 m!1313737))

(declare-fun m!1313749 () Bool)

(assert (=> b!1423142 m!1313749))

(declare-fun m!1313751 () Bool)

(assert (=> b!1423134 m!1313751))

(declare-fun m!1313753 () Bool)

(assert (=> b!1423134 m!1313753))

(declare-fun m!1313755 () Bool)

(assert (=> b!1423134 m!1313755))

(declare-fun m!1313757 () Bool)

(assert (=> b!1423134 m!1313757))

(assert (=> b!1423134 m!1313737))

(declare-fun m!1313759 () Bool)

(assert (=> b!1423134 m!1313759))

(assert (=> b!1423132 m!1313737))

(assert (=> b!1423132 m!1313737))

(declare-fun m!1313761 () Bool)

(assert (=> b!1423132 m!1313761))

(declare-fun m!1313763 () Bool)

(assert (=> b!1423130 m!1313763))

(declare-fun m!1313765 () Bool)

(assert (=> b!1423144 m!1313765))

(declare-fun m!1313767 () Bool)

(assert (=> b!1423143 m!1313767))

(assert (=> b!1423143 m!1313767))

(declare-fun m!1313769 () Bool)

(assert (=> b!1423143 m!1313769))

(declare-fun m!1313771 () Bool)

(assert (=> b!1423129 m!1313771))

(declare-fun m!1313773 () Bool)

(assert (=> b!1423140 m!1313773))

(declare-fun m!1313775 () Bool)

(assert (=> b!1423136 m!1313775))

(assert (=> b!1423136 m!1313775))

(declare-fun m!1313777 () Bool)

(assert (=> b!1423136 m!1313777))

(assert (=> b!1423136 m!1313751))

(declare-fun m!1313779 () Bool)

(assert (=> b!1423136 m!1313779))

(assert (=> b!1423135 m!1313737))

(assert (=> b!1423135 m!1313737))

(declare-fun m!1313781 () Bool)

(assert (=> b!1423135 m!1313781))

(check-sat (not start!122814) (not b!1423140) (not b!1423144) (not b!1423142) (not b!1423134) (not b!1423137) (not b!1423141) (not b!1423143) (not b!1423129) (not b!1423135) (not b!1423136) (not b!1423132) (not b!1423138) (not b!1423130))
(check-sat)
