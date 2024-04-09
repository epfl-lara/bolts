; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121146 () Bool)

(assert start!121146)

(declare-fun res!945838 () Bool)

(declare-fun e!796916 () Bool)

(assert (=> start!121146 (=> (not res!945838) (not e!796916))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121146 (= res!945838 (validMask!0 mask!2840))))

(assert (=> start!121146 e!796916))

(assert (=> start!121146 true))

(declare-datatypes ((array!96218 0))(
  ( (array!96219 (arr!46448 (Array (_ BitVec 32) (_ BitVec 64))) (size!46999 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96218)

(declare-fun array_inv!35393 (array!96218) Bool)

(assert (=> start!121146 (array_inv!35393 a!2901)))

(declare-fun b!1408001 () Bool)

(declare-fun e!796917 () Bool)

(assert (=> b!1408001 (= e!796917 true)))

(declare-datatypes ((SeekEntryResult!10781 0))(
  ( (MissingZero!10781 (index!45500 (_ BitVec 32))) (Found!10781 (index!45501 (_ BitVec 32))) (Intermediate!10781 (undefined!11593 Bool) (index!45502 (_ BitVec 32)) (x!127113 (_ BitVec 32))) (Undefined!10781) (MissingVacant!10781 (index!45503 (_ BitVec 32))) )
))
(declare-fun lt!620046 () SeekEntryResult!10781)

(declare-fun lt!620042 () (_ BitVec 64))

(declare-fun lt!620044 () array!96218)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96218 (_ BitVec 32)) SeekEntryResult!10781)

(assert (=> b!1408001 (= lt!620046 (seekEntryOrOpen!0 lt!620042 lt!620044 mask!2840))))

(declare-fun lt!620047 () SeekEntryResult!10781)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((Unit!47486 0))(
  ( (Unit!47487) )
))
(declare-fun lt!620041 () Unit!47486)

(declare-fun lt!620045 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47486)

(assert (=> b!1408001 (= lt!620041 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620045 (x!127113 lt!620047) (index!45502 lt!620047) mask!2840))))

(declare-fun b!1408002 () Bool)

(declare-fun e!796919 () Bool)

(assert (=> b!1408002 (= e!796916 (not e!796919))))

(declare-fun res!945839 () Bool)

(assert (=> b!1408002 (=> res!945839 e!796919)))

(get-info :version)

(assert (=> b!1408002 (= res!945839 (or (not ((_ is Intermediate!10781) lt!620047)) (undefined!11593 lt!620047)))))

(assert (=> b!1408002 (= lt!620046 (Found!10781 j!112))))

(assert (=> b!1408002 (= lt!620046 (seekEntryOrOpen!0 (select (arr!46448 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96218 (_ BitVec 32)) Bool)

(assert (=> b!1408002 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620043 () Unit!47486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47486)

(assert (=> b!1408002 (= lt!620043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96218 (_ BitVec 32)) SeekEntryResult!10781)

(assert (=> b!1408002 (= lt!620047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620045 (select (arr!46448 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408002 (= lt!620045 (toIndex!0 (select (arr!46448 a!2901) j!112) mask!2840))))

(declare-fun b!1408003 () Bool)

(declare-fun res!945840 () Bool)

(assert (=> b!1408003 (=> (not res!945840) (not e!796916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408003 (= res!945840 (validKeyInArray!0 (select (arr!46448 a!2901) i!1037)))))

(declare-fun b!1408004 () Bool)

(declare-fun res!945834 () Bool)

(assert (=> b!1408004 (=> (not res!945834) (not e!796916))))

(assert (=> b!1408004 (= res!945834 (and (= (size!46999 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46999 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46999 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408005 () Bool)

(declare-fun res!945837 () Bool)

(assert (=> b!1408005 (=> (not res!945837) (not e!796916))))

(assert (=> b!1408005 (= res!945837 (validKeyInArray!0 (select (arr!46448 a!2901) j!112)))))

(declare-fun b!1408006 () Bool)

(declare-fun res!945832 () Bool)

(assert (=> b!1408006 (=> (not res!945832) (not e!796916))))

(assert (=> b!1408006 (= res!945832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408007 () Bool)

(declare-fun res!945833 () Bool)

(assert (=> b!1408007 (=> (not res!945833) (not e!796916))))

(declare-datatypes ((List!33147 0))(
  ( (Nil!33144) (Cons!33143 (h!34406 (_ BitVec 64)) (t!47848 List!33147)) )
))
(declare-fun arrayNoDuplicates!0 (array!96218 (_ BitVec 32) List!33147) Bool)

(assert (=> b!1408007 (= res!945833 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33144))))

(declare-fun b!1408008 () Bool)

(declare-fun res!945836 () Bool)

(assert (=> b!1408008 (=> res!945836 e!796917)))

(assert (=> b!1408008 (= res!945836 (or (bvslt (x!127113 lt!620047) #b00000000000000000000000000000000) (bvsgt (x!127113 lt!620047) #b01111111111111111111111111111110) (bvslt lt!620045 #b00000000000000000000000000000000) (bvsge lt!620045 (size!46999 a!2901)) (bvslt (index!45502 lt!620047) #b00000000000000000000000000000000) (bvsge (index!45502 lt!620047) (size!46999 a!2901)) (not (= lt!620047 (Intermediate!10781 false (index!45502 lt!620047) (x!127113 lt!620047))))))))

(declare-fun b!1408009 () Bool)

(assert (=> b!1408009 (= e!796919 e!796917)))

(declare-fun res!945835 () Bool)

(assert (=> b!1408009 (=> res!945835 e!796917)))

(assert (=> b!1408009 (= res!945835 (not (= lt!620047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620042 mask!2840) lt!620042 lt!620044 mask!2840))))))

(assert (=> b!1408009 (= lt!620042 (select (store (arr!46448 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408009 (= lt!620044 (array!96219 (store (arr!46448 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46999 a!2901)))))

(assert (= (and start!121146 res!945838) b!1408004))

(assert (= (and b!1408004 res!945834) b!1408003))

(assert (= (and b!1408003 res!945840) b!1408005))

(assert (= (and b!1408005 res!945837) b!1408006))

(assert (= (and b!1408006 res!945832) b!1408007))

(assert (= (and b!1408007 res!945833) b!1408002))

(assert (= (and b!1408002 (not res!945839)) b!1408009))

(assert (= (and b!1408009 (not res!945835)) b!1408008))

(assert (= (and b!1408008 (not res!945836)) b!1408001))

(declare-fun m!1297213 () Bool)

(assert (=> b!1408002 m!1297213))

(declare-fun m!1297215 () Bool)

(assert (=> b!1408002 m!1297215))

(assert (=> b!1408002 m!1297213))

(assert (=> b!1408002 m!1297213))

(declare-fun m!1297217 () Bool)

(assert (=> b!1408002 m!1297217))

(declare-fun m!1297219 () Bool)

(assert (=> b!1408002 m!1297219))

(assert (=> b!1408002 m!1297213))

(declare-fun m!1297221 () Bool)

(assert (=> b!1408002 m!1297221))

(declare-fun m!1297223 () Bool)

(assert (=> b!1408002 m!1297223))

(assert (=> b!1408005 m!1297213))

(assert (=> b!1408005 m!1297213))

(declare-fun m!1297225 () Bool)

(assert (=> b!1408005 m!1297225))

(declare-fun m!1297227 () Bool)

(assert (=> b!1408003 m!1297227))

(assert (=> b!1408003 m!1297227))

(declare-fun m!1297229 () Bool)

(assert (=> b!1408003 m!1297229))

(declare-fun m!1297231 () Bool)

(assert (=> b!1408007 m!1297231))

(declare-fun m!1297233 () Bool)

(assert (=> b!1408006 m!1297233))

(declare-fun m!1297235 () Bool)

(assert (=> b!1408001 m!1297235))

(declare-fun m!1297237 () Bool)

(assert (=> b!1408001 m!1297237))

(declare-fun m!1297239 () Bool)

(assert (=> b!1408009 m!1297239))

(assert (=> b!1408009 m!1297239))

(declare-fun m!1297241 () Bool)

(assert (=> b!1408009 m!1297241))

(declare-fun m!1297243 () Bool)

(assert (=> b!1408009 m!1297243))

(declare-fun m!1297245 () Bool)

(assert (=> b!1408009 m!1297245))

(declare-fun m!1297247 () Bool)

(assert (=> start!121146 m!1297247))

(declare-fun m!1297249 () Bool)

(assert (=> start!121146 m!1297249))

(check-sat (not b!1408007) (not b!1408009) (not b!1408001) (not b!1408006) (not b!1408002) (not start!121146) (not b!1408005) (not b!1408003))
(check-sat)
