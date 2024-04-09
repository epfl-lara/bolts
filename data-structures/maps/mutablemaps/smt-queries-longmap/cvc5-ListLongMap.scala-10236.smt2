; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120508 () Bool)

(assert start!120508)

(declare-fun b!1402597 () Bool)

(declare-fun res!941217 () Bool)

(declare-fun e!794245 () Bool)

(assert (=> b!1402597 (=> (not res!941217) (not e!794245))))

(declare-datatypes ((array!95835 0))(
  ( (array!95836 (arr!46264 (Array (_ BitVec 32) (_ BitVec 64))) (size!46815 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95835)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402597 (= res!941217 (validKeyInArray!0 (select (arr!46264 a!2901) i!1037)))))

(declare-fun b!1402598 () Bool)

(declare-fun e!794246 () Bool)

(declare-fun e!794244 () Bool)

(assert (=> b!1402598 (= e!794246 e!794244)))

(declare-fun res!941221 () Bool)

(assert (=> b!1402598 (=> res!941221 e!794244)))

(declare-fun lt!617907 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10603 0))(
  ( (MissingZero!10603 (index!44788 (_ BitVec 32))) (Found!10603 (index!44789 (_ BitVec 32))) (Intermediate!10603 (undefined!11415 Bool) (index!44790 (_ BitVec 32)) (x!126417 (_ BitVec 32))) (Undefined!10603) (MissingVacant!10603 (index!44791 (_ BitVec 32))) )
))
(declare-fun lt!617904 () SeekEntryResult!10603)

(declare-fun lt!617903 () SeekEntryResult!10603)

(assert (=> b!1402598 (= res!941221 (or (bvslt (x!126417 lt!617903) #b00000000000000000000000000000000) (bvsgt (x!126417 lt!617903) #b01111111111111111111111111111110) (bvslt (x!126417 lt!617904) #b00000000000000000000000000000000) (bvsgt (x!126417 lt!617904) #b01111111111111111111111111111110) (bvslt lt!617907 #b00000000000000000000000000000000) (bvsge lt!617907 (size!46815 a!2901)) (bvslt (index!44790 lt!617903) #b00000000000000000000000000000000) (bvsge (index!44790 lt!617903) (size!46815 a!2901)) (bvslt (index!44790 lt!617904) #b00000000000000000000000000000000) (bvsge (index!44790 lt!617904) (size!46815 a!2901)) (not (= lt!617903 (Intermediate!10603 false (index!44790 lt!617903) (x!126417 lt!617903)))) (not (= lt!617904 (Intermediate!10603 false (index!44790 lt!617904) (x!126417 lt!617904))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617906 () SeekEntryResult!10603)

(declare-fun lt!617905 () array!95835)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95835 (_ BitVec 32)) SeekEntryResult!10603)

(assert (=> b!1402598 (= lt!617906 (seekKeyOrZeroReturnVacant!0 (x!126417 lt!617904) (index!44790 lt!617904) (index!44790 lt!617904) (select (arr!46264 a!2901) j!112) lt!617905 mask!2840))))

(declare-fun lt!617909 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95835 (_ BitVec 32)) SeekEntryResult!10603)

(assert (=> b!1402598 (= lt!617906 (seekEntryOrOpen!0 lt!617909 lt!617905 mask!2840))))

(assert (=> b!1402598 (and (not (undefined!11415 lt!617904)) (= (index!44790 lt!617904) i!1037) (bvslt (x!126417 lt!617904) (x!126417 lt!617903)) (= (select (store (arr!46264 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44790 lt!617904)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47160 0))(
  ( (Unit!47161) )
))
(declare-fun lt!617910 () Unit!47160)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47160)

(assert (=> b!1402598 (= lt!617910 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617907 (x!126417 lt!617903) (index!44790 lt!617903) (x!126417 lt!617904) (index!44790 lt!617904) (undefined!11415 lt!617904) mask!2840))))

(declare-fun b!1402599 () Bool)

(assert (=> b!1402599 (= e!794244 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!617902 () SeekEntryResult!10603)

(assert (=> b!1402599 (= lt!617902 lt!617906)))

(declare-fun lt!617908 () Unit!47160)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47160)

(assert (=> b!1402599 (= lt!617908 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617907 (x!126417 lt!617903) (index!44790 lt!617903) (x!126417 lt!617904) (index!44790 lt!617904) mask!2840))))

(declare-fun b!1402600 () Bool)

(declare-fun res!941225 () Bool)

(assert (=> b!1402600 (=> res!941225 e!794244)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95835 (_ BitVec 32)) SeekEntryResult!10603)

(assert (=> b!1402600 (= res!941225 (not (= lt!617904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617907 lt!617909 lt!617905 mask!2840))))))

(declare-fun b!1402602 () Bool)

(declare-fun res!941218 () Bool)

(assert (=> b!1402602 (=> (not res!941218) (not e!794245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95835 (_ BitVec 32)) Bool)

(assert (=> b!1402602 (= res!941218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402603 () Bool)

(declare-fun res!941223 () Bool)

(assert (=> b!1402603 (=> (not res!941223) (not e!794245))))

(assert (=> b!1402603 (= res!941223 (and (= (size!46815 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46815 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46815 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402604 () Bool)

(declare-fun e!794243 () Bool)

(assert (=> b!1402604 (= e!794245 (not e!794243))))

(declare-fun res!941224 () Bool)

(assert (=> b!1402604 (=> res!941224 e!794243)))

(assert (=> b!1402604 (= res!941224 (or (not (is-Intermediate!10603 lt!617903)) (undefined!11415 lt!617903)))))

(assert (=> b!1402604 (= lt!617902 (Found!10603 j!112))))

(assert (=> b!1402604 (= lt!617902 (seekEntryOrOpen!0 (select (arr!46264 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402604 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617911 () Unit!47160)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47160)

(assert (=> b!1402604 (= lt!617911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402604 (= lt!617903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617907 (select (arr!46264 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402604 (= lt!617907 (toIndex!0 (select (arr!46264 a!2901) j!112) mask!2840))))

(declare-fun b!1402605 () Bool)

(declare-fun res!941226 () Bool)

(assert (=> b!1402605 (=> (not res!941226) (not e!794245))))

(assert (=> b!1402605 (= res!941226 (validKeyInArray!0 (select (arr!46264 a!2901) j!112)))))

(declare-fun b!1402606 () Bool)

(assert (=> b!1402606 (= e!794243 e!794246)))

(declare-fun res!941219 () Bool)

(assert (=> b!1402606 (=> res!941219 e!794246)))

(assert (=> b!1402606 (= res!941219 (or (= lt!617903 lt!617904) (not (is-Intermediate!10603 lt!617904))))))

(assert (=> b!1402606 (= lt!617904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617909 mask!2840) lt!617909 lt!617905 mask!2840))))

(assert (=> b!1402606 (= lt!617909 (select (store (arr!46264 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402606 (= lt!617905 (array!95836 (store (arr!46264 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46815 a!2901)))))

(declare-fun b!1402601 () Bool)

(declare-fun res!941222 () Bool)

(assert (=> b!1402601 (=> (not res!941222) (not e!794245))))

(declare-datatypes ((List!32963 0))(
  ( (Nil!32960) (Cons!32959 (h!34207 (_ BitVec 64)) (t!47664 List!32963)) )
))
(declare-fun arrayNoDuplicates!0 (array!95835 (_ BitVec 32) List!32963) Bool)

(assert (=> b!1402601 (= res!941222 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32960))))

(declare-fun res!941220 () Bool)

(assert (=> start!120508 (=> (not res!941220) (not e!794245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120508 (= res!941220 (validMask!0 mask!2840))))

(assert (=> start!120508 e!794245))

(assert (=> start!120508 true))

(declare-fun array_inv!35209 (array!95835) Bool)

(assert (=> start!120508 (array_inv!35209 a!2901)))

(assert (= (and start!120508 res!941220) b!1402603))

(assert (= (and b!1402603 res!941223) b!1402597))

(assert (= (and b!1402597 res!941217) b!1402605))

(assert (= (and b!1402605 res!941226) b!1402602))

(assert (= (and b!1402602 res!941218) b!1402601))

(assert (= (and b!1402601 res!941222) b!1402604))

(assert (= (and b!1402604 (not res!941224)) b!1402606))

(assert (= (and b!1402606 (not res!941219)) b!1402598))

(assert (= (and b!1402598 (not res!941221)) b!1402600))

(assert (= (and b!1402600 (not res!941225)) b!1402599))

(declare-fun m!1290947 () Bool)

(assert (=> b!1402602 m!1290947))

(declare-fun m!1290949 () Bool)

(assert (=> b!1402599 m!1290949))

(declare-fun m!1290951 () Bool)

(assert (=> b!1402598 m!1290951))

(declare-fun m!1290953 () Bool)

(assert (=> b!1402598 m!1290953))

(declare-fun m!1290955 () Bool)

(assert (=> b!1402598 m!1290955))

(assert (=> b!1402598 m!1290953))

(declare-fun m!1290957 () Bool)

(assert (=> b!1402598 m!1290957))

(declare-fun m!1290959 () Bool)

(assert (=> b!1402598 m!1290959))

(declare-fun m!1290961 () Bool)

(assert (=> b!1402598 m!1290961))

(declare-fun m!1290963 () Bool)

(assert (=> b!1402606 m!1290963))

(assert (=> b!1402606 m!1290963))

(declare-fun m!1290965 () Bool)

(assert (=> b!1402606 m!1290965))

(assert (=> b!1402606 m!1290961))

(declare-fun m!1290967 () Bool)

(assert (=> b!1402606 m!1290967))

(declare-fun m!1290969 () Bool)

(assert (=> b!1402601 m!1290969))

(assert (=> b!1402605 m!1290953))

(assert (=> b!1402605 m!1290953))

(declare-fun m!1290971 () Bool)

(assert (=> b!1402605 m!1290971))

(declare-fun m!1290973 () Bool)

(assert (=> b!1402600 m!1290973))

(declare-fun m!1290975 () Bool)

(assert (=> start!120508 m!1290975))

(declare-fun m!1290977 () Bool)

(assert (=> start!120508 m!1290977))

(declare-fun m!1290979 () Bool)

(assert (=> b!1402597 m!1290979))

(assert (=> b!1402597 m!1290979))

(declare-fun m!1290981 () Bool)

(assert (=> b!1402597 m!1290981))

(assert (=> b!1402604 m!1290953))

(declare-fun m!1290983 () Bool)

(assert (=> b!1402604 m!1290983))

(assert (=> b!1402604 m!1290953))

(declare-fun m!1290985 () Bool)

(assert (=> b!1402604 m!1290985))

(declare-fun m!1290987 () Bool)

(assert (=> b!1402604 m!1290987))

(assert (=> b!1402604 m!1290953))

(declare-fun m!1290989 () Bool)

(assert (=> b!1402604 m!1290989))

(assert (=> b!1402604 m!1290953))

(declare-fun m!1290991 () Bool)

(assert (=> b!1402604 m!1290991))

(push 1)

