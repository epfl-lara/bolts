; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120378 () Bool)

(assert start!120378)

(declare-fun b!1400499 () Bool)

(declare-fun res!939129 () Bool)

(declare-fun e!792975 () Bool)

(assert (=> b!1400499 (=> (not res!939129) (not e!792975))))

(declare-datatypes ((array!95705 0))(
  ( (array!95706 (arr!46199 (Array (_ BitVec 32) (_ BitVec 64))) (size!46750 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95705)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400499 (= res!939129 (validKeyInArray!0 (select (arr!46199 a!2901) i!1037)))))

(declare-fun b!1400500 () Bool)

(declare-fun res!939125 () Bool)

(assert (=> b!1400500 (=> (not res!939125) (not e!792975))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400500 (= res!939125 (and (= (size!46750 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46750 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46750 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400501 () Bool)

(declare-fun res!939119 () Bool)

(assert (=> b!1400501 (=> (not res!939119) (not e!792975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95705 (_ BitVec 32)) Bool)

(assert (=> b!1400501 (= res!939119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!939127 () Bool)

(assert (=> start!120378 (=> (not res!939127) (not e!792975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120378 (= res!939127 (validMask!0 mask!2840))))

(assert (=> start!120378 e!792975))

(assert (=> start!120378 true))

(declare-fun array_inv!35144 (array!95705) Bool)

(assert (=> start!120378 (array_inv!35144 a!2901)))

(declare-fun b!1400502 () Bool)

(declare-fun e!792977 () Bool)

(assert (=> b!1400502 (= e!792977 true)))

(declare-fun lt!616249 () (_ BitVec 32))

(declare-fun lt!616248 () (_ BitVec 64))

(declare-fun lt!616251 () array!95705)

(declare-datatypes ((SeekEntryResult!10538 0))(
  ( (MissingZero!10538 (index!44528 (_ BitVec 32))) (Found!10538 (index!44529 (_ BitVec 32))) (Intermediate!10538 (undefined!11350 Bool) (index!44530 (_ BitVec 32)) (x!126176 (_ BitVec 32))) (Undefined!10538) (MissingVacant!10538 (index!44531 (_ BitVec 32))) )
))
(declare-fun lt!616253 () SeekEntryResult!10538)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95705 (_ BitVec 32)) SeekEntryResult!10538)

(assert (=> b!1400502 (= lt!616253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616249 lt!616248 lt!616251 mask!2840))))

(declare-fun b!1400503 () Bool)

(declare-fun e!792974 () Bool)

(declare-fun lt!616254 () SeekEntryResult!10538)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95705 (_ BitVec 32)) SeekEntryResult!10538)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95705 (_ BitVec 32)) SeekEntryResult!10538)

(assert (=> b!1400503 (= e!792974 (= (seekEntryOrOpen!0 lt!616248 lt!616251 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126176 lt!616254) (index!44530 lt!616254) (index!44530 lt!616254) (select (arr!46199 a!2901) j!112) lt!616251 mask!2840)))))

(declare-fun b!1400504 () Bool)

(declare-fun e!792971 () Bool)

(declare-fun e!792972 () Bool)

(assert (=> b!1400504 (= e!792971 e!792972)))

(declare-fun res!939121 () Bool)

(assert (=> b!1400504 (=> res!939121 e!792972)))

(declare-fun lt!616252 () SeekEntryResult!10538)

(get-info :version)

(assert (=> b!1400504 (= res!939121 (or (= lt!616252 lt!616254) (not ((_ is Intermediate!10538) lt!616254))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400504 (= lt!616254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616248 mask!2840) lt!616248 lt!616251 mask!2840))))

(assert (=> b!1400504 (= lt!616248 (select (store (arr!46199 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400504 (= lt!616251 (array!95706 (store (arr!46199 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46750 a!2901)))))

(declare-fun b!1400505 () Bool)

(assert (=> b!1400505 (= e!792975 (not e!792971))))

(declare-fun res!939124 () Bool)

(assert (=> b!1400505 (=> res!939124 e!792971)))

(assert (=> b!1400505 (= res!939124 (or (not ((_ is Intermediate!10538) lt!616252)) (undefined!11350 lt!616252)))))

(declare-fun e!792973 () Bool)

(assert (=> b!1400505 e!792973))

(declare-fun res!939120 () Bool)

(assert (=> b!1400505 (=> (not res!939120) (not e!792973))))

(assert (=> b!1400505 (= res!939120 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47030 0))(
  ( (Unit!47031) )
))
(declare-fun lt!616250 () Unit!47030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47030)

(assert (=> b!1400505 (= lt!616250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400505 (= lt!616252 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616249 (select (arr!46199 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400505 (= lt!616249 (toIndex!0 (select (arr!46199 a!2901) j!112) mask!2840))))

(declare-fun b!1400506 () Bool)

(declare-fun res!939122 () Bool)

(assert (=> b!1400506 (=> (not res!939122) (not e!792975))))

(assert (=> b!1400506 (= res!939122 (validKeyInArray!0 (select (arr!46199 a!2901) j!112)))))

(declare-fun b!1400507 () Bool)

(assert (=> b!1400507 (= e!792973 (= (seekEntryOrOpen!0 (select (arr!46199 a!2901) j!112) a!2901 mask!2840) (Found!10538 j!112)))))

(declare-fun b!1400508 () Bool)

(declare-fun res!939126 () Bool)

(assert (=> b!1400508 (=> (not res!939126) (not e!792975))))

(declare-datatypes ((List!32898 0))(
  ( (Nil!32895) (Cons!32894 (h!34142 (_ BitVec 64)) (t!47599 List!32898)) )
))
(declare-fun arrayNoDuplicates!0 (array!95705 (_ BitVec 32) List!32898) Bool)

(assert (=> b!1400508 (= res!939126 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32895))))

(declare-fun b!1400509 () Bool)

(assert (=> b!1400509 (= e!792972 e!792977)))

(declare-fun res!939128 () Bool)

(assert (=> b!1400509 (=> res!939128 e!792977)))

(assert (=> b!1400509 (= res!939128 (or (bvslt (x!126176 lt!616252) #b00000000000000000000000000000000) (bvsgt (x!126176 lt!616252) #b01111111111111111111111111111110) (bvslt (x!126176 lt!616254) #b00000000000000000000000000000000) (bvsgt (x!126176 lt!616254) #b01111111111111111111111111111110) (bvslt lt!616249 #b00000000000000000000000000000000) (bvsge lt!616249 (size!46750 a!2901)) (bvslt (index!44530 lt!616252) #b00000000000000000000000000000000) (bvsge (index!44530 lt!616252) (size!46750 a!2901)) (bvslt (index!44530 lt!616254) #b00000000000000000000000000000000) (bvsge (index!44530 lt!616254) (size!46750 a!2901)) (not (= lt!616252 (Intermediate!10538 false (index!44530 lt!616252) (x!126176 lt!616252)))) (not (= lt!616254 (Intermediate!10538 false (index!44530 lt!616254) (x!126176 lt!616254))))))))

(assert (=> b!1400509 e!792974))

(declare-fun res!939123 () Bool)

(assert (=> b!1400509 (=> (not res!939123) (not e!792974))))

(assert (=> b!1400509 (= res!939123 (and (not (undefined!11350 lt!616254)) (= (index!44530 lt!616254) i!1037) (bvslt (x!126176 lt!616254) (x!126176 lt!616252)) (= (select (store (arr!46199 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44530 lt!616254)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616255 () Unit!47030)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47030)

(assert (=> b!1400509 (= lt!616255 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616249 (x!126176 lt!616252) (index!44530 lt!616252) (x!126176 lt!616254) (index!44530 lt!616254) (undefined!11350 lt!616254) mask!2840))))

(assert (= (and start!120378 res!939127) b!1400500))

(assert (= (and b!1400500 res!939125) b!1400499))

(assert (= (and b!1400499 res!939129) b!1400506))

(assert (= (and b!1400506 res!939122) b!1400501))

(assert (= (and b!1400501 res!939119) b!1400508))

(assert (= (and b!1400508 res!939126) b!1400505))

(assert (= (and b!1400505 res!939120) b!1400507))

(assert (= (and b!1400505 (not res!939124)) b!1400504))

(assert (= (and b!1400504 (not res!939121)) b!1400509))

(assert (= (and b!1400509 res!939123) b!1400503))

(assert (= (and b!1400509 (not res!939128)) b!1400502))

(declare-fun m!1288057 () Bool)

(assert (=> b!1400499 m!1288057))

(assert (=> b!1400499 m!1288057))

(declare-fun m!1288059 () Bool)

(assert (=> b!1400499 m!1288059))

(declare-fun m!1288061 () Bool)

(assert (=> b!1400507 m!1288061))

(assert (=> b!1400507 m!1288061))

(declare-fun m!1288063 () Bool)

(assert (=> b!1400507 m!1288063))

(declare-fun m!1288065 () Bool)

(assert (=> b!1400509 m!1288065))

(declare-fun m!1288067 () Bool)

(assert (=> b!1400509 m!1288067))

(declare-fun m!1288069 () Bool)

(assert (=> b!1400509 m!1288069))

(declare-fun m!1288071 () Bool)

(assert (=> b!1400501 m!1288071))

(assert (=> b!1400506 m!1288061))

(assert (=> b!1400506 m!1288061))

(declare-fun m!1288073 () Bool)

(assert (=> b!1400506 m!1288073))

(declare-fun m!1288075 () Bool)

(assert (=> b!1400508 m!1288075))

(declare-fun m!1288077 () Bool)

(assert (=> start!120378 m!1288077))

(declare-fun m!1288079 () Bool)

(assert (=> start!120378 m!1288079))

(assert (=> b!1400505 m!1288061))

(declare-fun m!1288081 () Bool)

(assert (=> b!1400505 m!1288081))

(assert (=> b!1400505 m!1288061))

(assert (=> b!1400505 m!1288061))

(declare-fun m!1288083 () Bool)

(assert (=> b!1400505 m!1288083))

(declare-fun m!1288085 () Bool)

(assert (=> b!1400505 m!1288085))

(declare-fun m!1288087 () Bool)

(assert (=> b!1400505 m!1288087))

(declare-fun m!1288089 () Bool)

(assert (=> b!1400504 m!1288089))

(assert (=> b!1400504 m!1288089))

(declare-fun m!1288091 () Bool)

(assert (=> b!1400504 m!1288091))

(assert (=> b!1400504 m!1288065))

(declare-fun m!1288093 () Bool)

(assert (=> b!1400504 m!1288093))

(declare-fun m!1288095 () Bool)

(assert (=> b!1400502 m!1288095))

(declare-fun m!1288097 () Bool)

(assert (=> b!1400503 m!1288097))

(assert (=> b!1400503 m!1288061))

(assert (=> b!1400503 m!1288061))

(declare-fun m!1288099 () Bool)

(assert (=> b!1400503 m!1288099))

(check-sat (not b!1400506) (not b!1400501) (not b!1400507) (not b!1400503) (not b!1400505) (not b!1400509) (not start!120378) (not b!1400502) (not b!1400504) (not b!1400508) (not b!1400499))
(check-sat)
