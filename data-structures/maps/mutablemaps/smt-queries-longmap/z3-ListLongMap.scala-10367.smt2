; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122058 () Bool)

(assert start!122058)

(declare-fun b!1416175 () Bool)

(declare-fun res!952327 () Bool)

(declare-fun e!801550 () Bool)

(assert (=> b!1416175 (=> (not res!952327) (not e!801550))))

(declare-datatypes ((array!96662 0))(
  ( (array!96663 (arr!46658 (Array (_ BitVec 32) (_ BitVec 64))) (size!47209 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96662)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416175 (= res!952327 (validKeyInArray!0 (select (arr!46658 a!2901) i!1037)))))

(declare-fun res!952330 () Bool)

(assert (=> start!122058 (=> (not res!952330) (not e!801550))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122058 (= res!952330 (validMask!0 mask!2840))))

(assert (=> start!122058 e!801550))

(assert (=> start!122058 true))

(declare-fun array_inv!35603 (array!96662) Bool)

(assert (=> start!122058 (array_inv!35603 a!2901)))

(declare-fun b!1416176 () Bool)

(declare-fun res!952332 () Bool)

(assert (=> b!1416176 (=> (not res!952332) (not e!801550))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416176 (= res!952332 (validKeyInArray!0 (select (arr!46658 a!2901) j!112)))))

(declare-fun b!1416177 () Bool)

(declare-fun e!801551 () Bool)

(declare-fun e!801552 () Bool)

(assert (=> b!1416177 (= e!801551 e!801552)))

(declare-fun res!952335 () Bool)

(assert (=> b!1416177 (=> res!952335 e!801552)))

(declare-datatypes ((SeekEntryResult!10991 0))(
  ( (MissingZero!10991 (index!46355 (_ BitVec 32))) (Found!10991 (index!46356 (_ BitVec 32))) (Intermediate!10991 (undefined!11803 Bool) (index!46357 (_ BitVec 32)) (x!127961 (_ BitVec 32))) (Undefined!10991) (MissingVacant!10991 (index!46358 (_ BitVec 32))) )
))
(declare-fun lt!624753 () SeekEntryResult!10991)

(declare-fun lt!624759 () SeekEntryResult!10991)

(get-info :version)

(assert (=> b!1416177 (= res!952335 (or (= lt!624753 lt!624759) (not ((_ is Intermediate!10991) lt!624759))))))

(declare-fun lt!624754 () (_ BitVec 64))

(declare-fun lt!624756 () array!96662)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96662 (_ BitVec 32)) SeekEntryResult!10991)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416177 (= lt!624759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624754 mask!2840) lt!624754 lt!624756 mask!2840))))

(assert (=> b!1416177 (= lt!624754 (select (store (arr!46658 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416177 (= lt!624756 (array!96663 (store (arr!46658 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47209 a!2901)))))

(declare-fun b!1416178 () Bool)

(assert (=> b!1416178 (= e!801550 (not e!801551))))

(declare-fun res!952334 () Bool)

(assert (=> b!1416178 (=> res!952334 e!801551)))

(assert (=> b!1416178 (= res!952334 (or (not ((_ is Intermediate!10991) lt!624753)) (undefined!11803 lt!624753)))))

(declare-fun lt!624751 () SeekEntryResult!10991)

(assert (=> b!1416178 (= lt!624751 (Found!10991 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96662 (_ BitVec 32)) SeekEntryResult!10991)

(assert (=> b!1416178 (= lt!624751 (seekEntryOrOpen!0 (select (arr!46658 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96662 (_ BitVec 32)) Bool)

(assert (=> b!1416178 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47906 0))(
  ( (Unit!47907) )
))
(declare-fun lt!624758 () Unit!47906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47906)

(assert (=> b!1416178 (= lt!624758 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624752 () (_ BitVec 32))

(assert (=> b!1416178 (= lt!624753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624752 (select (arr!46658 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416178 (= lt!624752 (toIndex!0 (select (arr!46658 a!2901) j!112) mask!2840))))

(declare-fun b!1416179 () Bool)

(declare-fun res!952333 () Bool)

(assert (=> b!1416179 (=> (not res!952333) (not e!801550))))

(assert (=> b!1416179 (= res!952333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416180 () Bool)

(declare-fun e!801554 () Bool)

(assert (=> b!1416180 (= e!801554 true)))

(declare-fun lt!624760 () SeekEntryResult!10991)

(assert (=> b!1416180 (= lt!624751 lt!624760)))

(declare-fun lt!624757 () Unit!47906)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47906)

(assert (=> b!1416180 (= lt!624757 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624752 (x!127961 lt!624753) (index!46357 lt!624753) (x!127961 lt!624759) (index!46357 lt!624759) mask!2840))))

(declare-fun b!1416181 () Bool)

(assert (=> b!1416181 (= e!801552 e!801554)))

(declare-fun res!952326 () Bool)

(assert (=> b!1416181 (=> res!952326 e!801554)))

(assert (=> b!1416181 (= res!952326 (or (bvslt (x!127961 lt!624753) #b00000000000000000000000000000000) (bvsgt (x!127961 lt!624753) #b01111111111111111111111111111110) (bvslt (x!127961 lt!624759) #b00000000000000000000000000000000) (bvsgt (x!127961 lt!624759) #b01111111111111111111111111111110) (bvslt lt!624752 #b00000000000000000000000000000000) (bvsge lt!624752 (size!47209 a!2901)) (bvslt (index!46357 lt!624753) #b00000000000000000000000000000000) (bvsge (index!46357 lt!624753) (size!47209 a!2901)) (bvslt (index!46357 lt!624759) #b00000000000000000000000000000000) (bvsge (index!46357 lt!624759) (size!47209 a!2901)) (not (= lt!624753 (Intermediate!10991 false (index!46357 lt!624753) (x!127961 lt!624753)))) (not (= lt!624759 (Intermediate!10991 false (index!46357 lt!624759) (x!127961 lt!624759))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96662 (_ BitVec 32)) SeekEntryResult!10991)

(assert (=> b!1416181 (= lt!624760 (seekKeyOrZeroReturnVacant!0 (x!127961 lt!624759) (index!46357 lt!624759) (index!46357 lt!624759) (select (arr!46658 a!2901) j!112) lt!624756 mask!2840))))

(assert (=> b!1416181 (= lt!624760 (seekEntryOrOpen!0 lt!624754 lt!624756 mask!2840))))

(assert (=> b!1416181 (and (not (undefined!11803 lt!624759)) (= (index!46357 lt!624759) i!1037) (bvslt (x!127961 lt!624759) (x!127961 lt!624753)) (= (select (store (arr!46658 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46357 lt!624759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624755 () Unit!47906)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96662 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47906)

(assert (=> b!1416181 (= lt!624755 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624752 (x!127961 lt!624753) (index!46357 lt!624753) (x!127961 lt!624759) (index!46357 lt!624759) (undefined!11803 lt!624759) mask!2840))))

(declare-fun b!1416182 () Bool)

(declare-fun res!952331 () Bool)

(assert (=> b!1416182 (=> res!952331 e!801554)))

(assert (=> b!1416182 (= res!952331 (not (= lt!624759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624752 lt!624754 lt!624756 mask!2840))))))

(declare-fun b!1416183 () Bool)

(declare-fun res!952328 () Bool)

(assert (=> b!1416183 (=> (not res!952328) (not e!801550))))

(assert (=> b!1416183 (= res!952328 (and (= (size!47209 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47209 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47209 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416184 () Bool)

(declare-fun res!952329 () Bool)

(assert (=> b!1416184 (=> (not res!952329) (not e!801550))))

(declare-datatypes ((List!33357 0))(
  ( (Nil!33354) (Cons!33353 (h!34640 (_ BitVec 64)) (t!48058 List!33357)) )
))
(declare-fun arrayNoDuplicates!0 (array!96662 (_ BitVec 32) List!33357) Bool)

(assert (=> b!1416184 (= res!952329 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33354))))

(assert (= (and start!122058 res!952330) b!1416183))

(assert (= (and b!1416183 res!952328) b!1416175))

(assert (= (and b!1416175 res!952327) b!1416176))

(assert (= (and b!1416176 res!952332) b!1416179))

(assert (= (and b!1416179 res!952333) b!1416184))

(assert (= (and b!1416184 res!952329) b!1416178))

(assert (= (and b!1416178 (not res!952334)) b!1416177))

(assert (= (and b!1416177 (not res!952335)) b!1416181))

(assert (= (and b!1416181 (not res!952326)) b!1416182))

(assert (= (and b!1416182 (not res!952331)) b!1416180))

(declare-fun m!1306863 () Bool)

(assert (=> b!1416177 m!1306863))

(assert (=> b!1416177 m!1306863))

(declare-fun m!1306865 () Bool)

(assert (=> b!1416177 m!1306865))

(declare-fun m!1306867 () Bool)

(assert (=> b!1416177 m!1306867))

(declare-fun m!1306869 () Bool)

(assert (=> b!1416177 m!1306869))

(declare-fun m!1306871 () Bool)

(assert (=> b!1416179 m!1306871))

(declare-fun m!1306873 () Bool)

(assert (=> b!1416175 m!1306873))

(assert (=> b!1416175 m!1306873))

(declare-fun m!1306875 () Bool)

(assert (=> b!1416175 m!1306875))

(declare-fun m!1306877 () Bool)

(assert (=> b!1416182 m!1306877))

(declare-fun m!1306879 () Bool)

(assert (=> start!122058 m!1306879))

(declare-fun m!1306881 () Bool)

(assert (=> start!122058 m!1306881))

(declare-fun m!1306883 () Bool)

(assert (=> b!1416184 m!1306883))

(declare-fun m!1306885 () Bool)

(assert (=> b!1416181 m!1306885))

(declare-fun m!1306887 () Bool)

(assert (=> b!1416181 m!1306887))

(assert (=> b!1416181 m!1306887))

(declare-fun m!1306889 () Bool)

(assert (=> b!1416181 m!1306889))

(assert (=> b!1416181 m!1306867))

(declare-fun m!1306891 () Bool)

(assert (=> b!1416181 m!1306891))

(declare-fun m!1306893 () Bool)

(assert (=> b!1416181 m!1306893))

(declare-fun m!1306895 () Bool)

(assert (=> b!1416180 m!1306895))

(assert (=> b!1416176 m!1306887))

(assert (=> b!1416176 m!1306887))

(declare-fun m!1306897 () Bool)

(assert (=> b!1416176 m!1306897))

(assert (=> b!1416178 m!1306887))

(declare-fun m!1306899 () Bool)

(assert (=> b!1416178 m!1306899))

(assert (=> b!1416178 m!1306887))

(declare-fun m!1306901 () Bool)

(assert (=> b!1416178 m!1306901))

(assert (=> b!1416178 m!1306887))

(declare-fun m!1306903 () Bool)

(assert (=> b!1416178 m!1306903))

(assert (=> b!1416178 m!1306887))

(declare-fun m!1306905 () Bool)

(assert (=> b!1416178 m!1306905))

(declare-fun m!1306907 () Bool)

(assert (=> b!1416178 m!1306907))

(check-sat (not b!1416176) (not b!1416175) (not b!1416181) (not b!1416180) (not b!1416184) (not start!122058) (not b!1416182) (not b!1416178) (not b!1416179) (not b!1416177))
(check-sat)
