; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120516 () Bool)

(assert start!120516)

(declare-fun b!1402717 () Bool)

(declare-fun e!794305 () Bool)

(declare-fun e!794303 () Bool)

(assert (=> b!1402717 (= e!794305 e!794303)))

(declare-fun res!941346 () Bool)

(assert (=> b!1402717 (=> res!941346 e!794303)))

(declare-datatypes ((SeekEntryResult!10607 0))(
  ( (MissingZero!10607 (index!44804 (_ BitVec 32))) (Found!10607 (index!44805 (_ BitVec 32))) (Intermediate!10607 (undefined!11419 Bool) (index!44806 (_ BitVec 32)) (x!126429 (_ BitVec 32))) (Undefined!10607) (MissingVacant!10607 (index!44807 (_ BitVec 32))) )
))
(declare-fun lt!618031 () SeekEntryResult!10607)

(declare-fun lt!618028 () SeekEntryResult!10607)

(get-info :version)

(assert (=> b!1402717 (= res!941346 (or (= lt!618031 lt!618028) (not ((_ is Intermediate!10607) lt!618028))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95843 0))(
  ( (array!95844 (arr!46268 (Array (_ BitVec 32) (_ BitVec 64))) (size!46819 (_ BitVec 32))) )
))
(declare-fun lt!618026 () array!95843)

(declare-fun lt!618029 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95843 (_ BitVec 32)) SeekEntryResult!10607)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402717 (= lt!618028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618029 mask!2840) lt!618029 lt!618026 mask!2840))))

(declare-fun a!2901 () array!95843)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402717 (= lt!618029 (select (store (arr!46268 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402717 (= lt!618026 (array!95844 (store (arr!46268 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46819 a!2901)))))

(declare-fun b!1402718 () Bool)

(declare-fun res!941337 () Bool)

(declare-fun e!794302 () Bool)

(assert (=> b!1402718 (=> res!941337 e!794302)))

(declare-fun lt!618025 () (_ BitVec 32))

(assert (=> b!1402718 (= res!941337 (not (= lt!618028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618025 lt!618029 lt!618026 mask!2840))))))

(declare-fun b!1402719 () Bool)

(assert (=> b!1402719 (= e!794303 e!794302)))

(declare-fun res!941343 () Bool)

(assert (=> b!1402719 (=> res!941343 e!794302)))

(assert (=> b!1402719 (= res!941343 (or (bvslt (x!126429 lt!618031) #b00000000000000000000000000000000) (bvsgt (x!126429 lt!618031) #b01111111111111111111111111111110) (bvslt (x!126429 lt!618028) #b00000000000000000000000000000000) (bvsgt (x!126429 lt!618028) #b01111111111111111111111111111110) (bvslt lt!618025 #b00000000000000000000000000000000) (bvsge lt!618025 (size!46819 a!2901)) (bvslt (index!44806 lt!618031) #b00000000000000000000000000000000) (bvsge (index!44806 lt!618031) (size!46819 a!2901)) (bvslt (index!44806 lt!618028) #b00000000000000000000000000000000) (bvsge (index!44806 lt!618028) (size!46819 a!2901)) (not (= lt!618031 (Intermediate!10607 false (index!44806 lt!618031) (x!126429 lt!618031)))) (not (= lt!618028 (Intermediate!10607 false (index!44806 lt!618028) (x!126429 lt!618028))))))))

(declare-fun lt!618023 () SeekEntryResult!10607)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95843 (_ BitVec 32)) SeekEntryResult!10607)

(assert (=> b!1402719 (= lt!618023 (seekKeyOrZeroReturnVacant!0 (x!126429 lt!618028) (index!44806 lt!618028) (index!44806 lt!618028) (select (arr!46268 a!2901) j!112) lt!618026 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95843 (_ BitVec 32)) SeekEntryResult!10607)

(assert (=> b!1402719 (= lt!618023 (seekEntryOrOpen!0 lt!618029 lt!618026 mask!2840))))

(assert (=> b!1402719 (and (not (undefined!11419 lt!618028)) (= (index!44806 lt!618028) i!1037) (bvslt (x!126429 lt!618028) (x!126429 lt!618031)) (= (select (store (arr!46268 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44806 lt!618028)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47168 0))(
  ( (Unit!47169) )
))
(declare-fun lt!618024 () Unit!47168)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47168)

(assert (=> b!1402719 (= lt!618024 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618025 (x!126429 lt!618031) (index!44806 lt!618031) (x!126429 lt!618028) (index!44806 lt!618028) (undefined!11419 lt!618028) mask!2840))))

(declare-fun res!941339 () Bool)

(declare-fun e!794306 () Bool)

(assert (=> start!120516 (=> (not res!941339) (not e!794306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120516 (= res!941339 (validMask!0 mask!2840))))

(assert (=> start!120516 e!794306))

(assert (=> start!120516 true))

(declare-fun array_inv!35213 (array!95843) Bool)

(assert (=> start!120516 (array_inv!35213 a!2901)))

(declare-fun b!1402720 () Bool)

(declare-fun res!941341 () Bool)

(assert (=> b!1402720 (=> (not res!941341) (not e!794306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95843 (_ BitVec 32)) Bool)

(assert (=> b!1402720 (= res!941341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402721 () Bool)

(declare-fun res!941344 () Bool)

(assert (=> b!1402721 (=> (not res!941344) (not e!794306))))

(assert (=> b!1402721 (= res!941344 (and (= (size!46819 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46819 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46819 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402722 () Bool)

(assert (=> b!1402722 (= e!794306 (not e!794305))))

(declare-fun res!941340 () Bool)

(assert (=> b!1402722 (=> res!941340 e!794305)))

(assert (=> b!1402722 (= res!941340 (or (not ((_ is Intermediate!10607) lt!618031)) (undefined!11419 lt!618031)))))

(declare-fun lt!618022 () SeekEntryResult!10607)

(assert (=> b!1402722 (= lt!618022 (Found!10607 j!112))))

(assert (=> b!1402722 (= lt!618022 (seekEntryOrOpen!0 (select (arr!46268 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402722 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618030 () Unit!47168)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47168)

(assert (=> b!1402722 (= lt!618030 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402722 (= lt!618031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618025 (select (arr!46268 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402722 (= lt!618025 (toIndex!0 (select (arr!46268 a!2901) j!112) mask!2840))))

(declare-fun b!1402723 () Bool)

(assert (=> b!1402723 (= e!794302 true)))

(assert (=> b!1402723 (= lt!618022 lt!618023)))

(declare-fun lt!618027 () Unit!47168)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47168)

(assert (=> b!1402723 (= lt!618027 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618025 (x!126429 lt!618031) (index!44806 lt!618031) (x!126429 lt!618028) (index!44806 lt!618028) mask!2840))))

(declare-fun b!1402724 () Bool)

(declare-fun res!941338 () Bool)

(assert (=> b!1402724 (=> (not res!941338) (not e!794306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402724 (= res!941338 (validKeyInArray!0 (select (arr!46268 a!2901) j!112)))))

(declare-fun b!1402725 () Bool)

(declare-fun res!941345 () Bool)

(assert (=> b!1402725 (=> (not res!941345) (not e!794306))))

(declare-datatypes ((List!32967 0))(
  ( (Nil!32964) (Cons!32963 (h!34211 (_ BitVec 64)) (t!47668 List!32967)) )
))
(declare-fun arrayNoDuplicates!0 (array!95843 (_ BitVec 32) List!32967) Bool)

(assert (=> b!1402725 (= res!941345 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32964))))

(declare-fun b!1402726 () Bool)

(declare-fun res!941342 () Bool)

(assert (=> b!1402726 (=> (not res!941342) (not e!794306))))

(assert (=> b!1402726 (= res!941342 (validKeyInArray!0 (select (arr!46268 a!2901) i!1037)))))

(assert (= (and start!120516 res!941339) b!1402721))

(assert (= (and b!1402721 res!941344) b!1402726))

(assert (= (and b!1402726 res!941342) b!1402724))

(assert (= (and b!1402724 res!941338) b!1402720))

(assert (= (and b!1402720 res!941341) b!1402725))

(assert (= (and b!1402725 res!941345) b!1402722))

(assert (= (and b!1402722 (not res!941340)) b!1402717))

(assert (= (and b!1402717 (not res!941346)) b!1402719))

(assert (= (and b!1402719 (not res!941343)) b!1402718))

(assert (= (and b!1402718 (not res!941337)) b!1402723))

(declare-fun m!1291131 () Bool)

(assert (=> b!1402726 m!1291131))

(assert (=> b!1402726 m!1291131))

(declare-fun m!1291133 () Bool)

(assert (=> b!1402726 m!1291133))

(declare-fun m!1291135 () Bool)

(assert (=> b!1402717 m!1291135))

(assert (=> b!1402717 m!1291135))

(declare-fun m!1291137 () Bool)

(assert (=> b!1402717 m!1291137))

(declare-fun m!1291139 () Bool)

(assert (=> b!1402717 m!1291139))

(declare-fun m!1291141 () Bool)

(assert (=> b!1402717 m!1291141))

(declare-fun m!1291143 () Bool)

(assert (=> b!1402725 m!1291143))

(declare-fun m!1291145 () Bool)

(assert (=> b!1402718 m!1291145))

(declare-fun m!1291147 () Bool)

(assert (=> b!1402719 m!1291147))

(declare-fun m!1291149 () Bool)

(assert (=> b!1402719 m!1291149))

(declare-fun m!1291151 () Bool)

(assert (=> b!1402719 m!1291151))

(assert (=> b!1402719 m!1291147))

(declare-fun m!1291153 () Bool)

(assert (=> b!1402719 m!1291153))

(assert (=> b!1402719 m!1291139))

(declare-fun m!1291155 () Bool)

(assert (=> b!1402719 m!1291155))

(assert (=> b!1402724 m!1291147))

(assert (=> b!1402724 m!1291147))

(declare-fun m!1291157 () Bool)

(assert (=> b!1402724 m!1291157))

(declare-fun m!1291159 () Bool)

(assert (=> b!1402720 m!1291159))

(assert (=> b!1402722 m!1291147))

(declare-fun m!1291161 () Bool)

(assert (=> b!1402722 m!1291161))

(assert (=> b!1402722 m!1291147))

(declare-fun m!1291163 () Bool)

(assert (=> b!1402722 m!1291163))

(assert (=> b!1402722 m!1291147))

(declare-fun m!1291165 () Bool)

(assert (=> b!1402722 m!1291165))

(declare-fun m!1291167 () Bool)

(assert (=> b!1402722 m!1291167))

(assert (=> b!1402722 m!1291147))

(declare-fun m!1291169 () Bool)

(assert (=> b!1402722 m!1291169))

(declare-fun m!1291171 () Bool)

(assert (=> b!1402723 m!1291171))

(declare-fun m!1291173 () Bool)

(assert (=> start!120516 m!1291173))

(declare-fun m!1291175 () Bool)

(assert (=> start!120516 m!1291175))

(check-sat (not b!1402720) (not b!1402723) (not b!1402717) (not b!1402724) (not b!1402725) (not b!1402719) (not start!120516) (not b!1402726) (not b!1402718) (not b!1402722))
(check-sat)
