; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120518 () Bool)

(assert start!120518)

(declare-fun b!1402747 () Bool)

(declare-fun e!794319 () Bool)

(declare-fun e!794321 () Bool)

(assert (=> b!1402747 (= e!794319 e!794321)))

(declare-fun res!941372 () Bool)

(assert (=> b!1402747 (=> res!941372 e!794321)))

(declare-datatypes ((SeekEntryResult!10608 0))(
  ( (MissingZero!10608 (index!44808 (_ BitVec 32))) (Found!10608 (index!44809 (_ BitVec 32))) (Intermediate!10608 (undefined!11420 Bool) (index!44810 (_ BitVec 32)) (x!126430 (_ BitVec 32))) (Undefined!10608) (MissingVacant!10608 (index!44811 (_ BitVec 32))) )
))
(declare-fun lt!618061 () SeekEntryResult!10608)

(declare-fun lt!618055 () SeekEntryResult!10608)

(assert (=> b!1402747 (= res!941372 (or (= lt!618061 lt!618055) (not (is-Intermediate!10608 lt!618055))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!618053 () (_ BitVec 64))

(declare-datatypes ((array!95845 0))(
  ( (array!95846 (arr!46269 (Array (_ BitVec 32) (_ BitVec 64))) (size!46820 (_ BitVec 32))) )
))
(declare-fun lt!618060 () array!95845)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95845 (_ BitVec 32)) SeekEntryResult!10608)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402747 (= lt!618055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618053 mask!2840) lt!618053 lt!618060 mask!2840))))

(declare-fun a!2901 () array!95845)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402747 (= lt!618053 (select (store (arr!46269 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402747 (= lt!618060 (array!95846 (store (arr!46269 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46820 a!2901)))))

(declare-fun b!1402748 () Bool)

(declare-fun res!941370 () Bool)

(declare-fun e!794317 () Bool)

(assert (=> b!1402748 (=> (not res!941370) (not e!794317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402748 (= res!941370 (validKeyInArray!0 (select (arr!46269 a!2901) j!112)))))

(declare-fun b!1402749 () Bool)

(declare-fun res!941374 () Bool)

(assert (=> b!1402749 (=> (not res!941374) (not e!794317))))

(assert (=> b!1402749 (= res!941374 (validKeyInArray!0 (select (arr!46269 a!2901) i!1037)))))

(declare-fun b!1402750 () Bool)

(assert (=> b!1402750 (= e!794317 (not e!794319))))

(declare-fun res!941373 () Bool)

(assert (=> b!1402750 (=> res!941373 e!794319)))

(assert (=> b!1402750 (= res!941373 (or (not (is-Intermediate!10608 lt!618061)) (undefined!11420 lt!618061)))))

(declare-fun lt!618058 () SeekEntryResult!10608)

(assert (=> b!1402750 (= lt!618058 (Found!10608 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95845 (_ BitVec 32)) SeekEntryResult!10608)

(assert (=> b!1402750 (= lt!618058 (seekEntryOrOpen!0 (select (arr!46269 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95845 (_ BitVec 32)) Bool)

(assert (=> b!1402750 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47170 0))(
  ( (Unit!47171) )
))
(declare-fun lt!618056 () Unit!47170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47170)

(assert (=> b!1402750 (= lt!618056 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618052 () (_ BitVec 32))

(assert (=> b!1402750 (= lt!618061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618052 (select (arr!46269 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402750 (= lt!618052 (toIndex!0 (select (arr!46269 a!2901) j!112) mask!2840))))

(declare-fun b!1402751 () Bool)

(declare-fun res!941371 () Bool)

(declare-fun e!794320 () Bool)

(assert (=> b!1402751 (=> res!941371 e!794320)))

(assert (=> b!1402751 (= res!941371 (not (= lt!618055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618052 lt!618053 lt!618060 mask!2840))))))

(declare-fun b!1402752 () Bool)

(declare-fun res!941376 () Bool)

(assert (=> b!1402752 (=> (not res!941376) (not e!794317))))

(declare-datatypes ((List!32968 0))(
  ( (Nil!32965) (Cons!32964 (h!34212 (_ BitVec 64)) (t!47669 List!32968)) )
))
(declare-fun arrayNoDuplicates!0 (array!95845 (_ BitVec 32) List!32968) Bool)

(assert (=> b!1402752 (= res!941376 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32965))))

(declare-fun b!1402753 () Bool)

(declare-fun res!941375 () Bool)

(assert (=> b!1402753 (=> (not res!941375) (not e!794317))))

(assert (=> b!1402753 (= res!941375 (and (= (size!46820 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46820 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46820 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941369 () Bool)

(assert (=> start!120518 (=> (not res!941369) (not e!794317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120518 (= res!941369 (validMask!0 mask!2840))))

(assert (=> start!120518 e!794317))

(assert (=> start!120518 true))

(declare-fun array_inv!35214 (array!95845) Bool)

(assert (=> start!120518 (array_inv!35214 a!2901)))

(declare-fun b!1402754 () Bool)

(declare-fun res!941368 () Bool)

(assert (=> b!1402754 (=> (not res!941368) (not e!794317))))

(assert (=> b!1402754 (= res!941368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402755 () Bool)

(assert (=> b!1402755 (= e!794320 true)))

(declare-fun lt!618054 () SeekEntryResult!10608)

(assert (=> b!1402755 (= lt!618058 lt!618054)))

(declare-fun lt!618057 () Unit!47170)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47170)

(assert (=> b!1402755 (= lt!618057 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618052 (x!126430 lt!618061) (index!44810 lt!618061) (x!126430 lt!618055) (index!44810 lt!618055) mask!2840))))

(declare-fun b!1402756 () Bool)

(assert (=> b!1402756 (= e!794321 e!794320)))

(declare-fun res!941367 () Bool)

(assert (=> b!1402756 (=> res!941367 e!794320)))

(assert (=> b!1402756 (= res!941367 (or (bvslt (x!126430 lt!618061) #b00000000000000000000000000000000) (bvsgt (x!126430 lt!618061) #b01111111111111111111111111111110) (bvslt (x!126430 lt!618055) #b00000000000000000000000000000000) (bvsgt (x!126430 lt!618055) #b01111111111111111111111111111110) (bvslt lt!618052 #b00000000000000000000000000000000) (bvsge lt!618052 (size!46820 a!2901)) (bvslt (index!44810 lt!618061) #b00000000000000000000000000000000) (bvsge (index!44810 lt!618061) (size!46820 a!2901)) (bvslt (index!44810 lt!618055) #b00000000000000000000000000000000) (bvsge (index!44810 lt!618055) (size!46820 a!2901)) (not (= lt!618061 (Intermediate!10608 false (index!44810 lt!618061) (x!126430 lt!618061)))) (not (= lt!618055 (Intermediate!10608 false (index!44810 lt!618055) (x!126430 lt!618055))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95845 (_ BitVec 32)) SeekEntryResult!10608)

(assert (=> b!1402756 (= lt!618054 (seekKeyOrZeroReturnVacant!0 (x!126430 lt!618055) (index!44810 lt!618055) (index!44810 lt!618055) (select (arr!46269 a!2901) j!112) lt!618060 mask!2840))))

(assert (=> b!1402756 (= lt!618054 (seekEntryOrOpen!0 lt!618053 lt!618060 mask!2840))))

(assert (=> b!1402756 (and (not (undefined!11420 lt!618055)) (= (index!44810 lt!618055) i!1037) (bvslt (x!126430 lt!618055) (x!126430 lt!618061)) (= (select (store (arr!46269 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44810 lt!618055)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!618059 () Unit!47170)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47170)

(assert (=> b!1402756 (= lt!618059 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618052 (x!126430 lt!618061) (index!44810 lt!618061) (x!126430 lt!618055) (index!44810 lt!618055) (undefined!11420 lt!618055) mask!2840))))

(assert (= (and start!120518 res!941369) b!1402753))

(assert (= (and b!1402753 res!941375) b!1402749))

(assert (= (and b!1402749 res!941374) b!1402748))

(assert (= (and b!1402748 res!941370) b!1402754))

(assert (= (and b!1402754 res!941368) b!1402752))

(assert (= (and b!1402752 res!941376) b!1402750))

(assert (= (and b!1402750 (not res!941373)) b!1402747))

(assert (= (and b!1402747 (not res!941372)) b!1402756))

(assert (= (and b!1402756 (not res!941367)) b!1402751))

(assert (= (and b!1402751 (not res!941371)) b!1402755))

(declare-fun m!1291177 () Bool)

(assert (=> b!1402750 m!1291177))

(declare-fun m!1291179 () Bool)

(assert (=> b!1402750 m!1291179))

(assert (=> b!1402750 m!1291177))

(assert (=> b!1402750 m!1291177))

(declare-fun m!1291181 () Bool)

(assert (=> b!1402750 m!1291181))

(declare-fun m!1291183 () Bool)

(assert (=> b!1402750 m!1291183))

(assert (=> b!1402750 m!1291177))

(declare-fun m!1291185 () Bool)

(assert (=> b!1402750 m!1291185))

(declare-fun m!1291187 () Bool)

(assert (=> b!1402750 m!1291187))

(declare-fun m!1291189 () Bool)

(assert (=> b!1402751 m!1291189))

(declare-fun m!1291191 () Bool)

(assert (=> b!1402755 m!1291191))

(declare-fun m!1291193 () Bool)

(assert (=> start!120518 m!1291193))

(declare-fun m!1291195 () Bool)

(assert (=> start!120518 m!1291195))

(assert (=> b!1402756 m!1291177))

(declare-fun m!1291197 () Bool)

(assert (=> b!1402756 m!1291197))

(declare-fun m!1291199 () Bool)

(assert (=> b!1402756 m!1291199))

(declare-fun m!1291201 () Bool)

(assert (=> b!1402756 m!1291201))

(declare-fun m!1291203 () Bool)

(assert (=> b!1402756 m!1291203))

(declare-fun m!1291205 () Bool)

(assert (=> b!1402756 m!1291205))

(assert (=> b!1402756 m!1291177))

(assert (=> b!1402748 m!1291177))

(assert (=> b!1402748 m!1291177))

(declare-fun m!1291207 () Bool)

(assert (=> b!1402748 m!1291207))

(declare-fun m!1291209 () Bool)

(assert (=> b!1402754 m!1291209))

(declare-fun m!1291211 () Bool)

(assert (=> b!1402749 m!1291211))

(assert (=> b!1402749 m!1291211))

(declare-fun m!1291213 () Bool)

(assert (=> b!1402749 m!1291213))

(declare-fun m!1291215 () Bool)

(assert (=> b!1402747 m!1291215))

(assert (=> b!1402747 m!1291215))

(declare-fun m!1291217 () Bool)

(assert (=> b!1402747 m!1291217))

(assert (=> b!1402747 m!1291203))

(declare-fun m!1291219 () Bool)

(assert (=> b!1402747 m!1291219))

(declare-fun m!1291221 () Bool)

(assert (=> b!1402752 m!1291221))

(push 1)

