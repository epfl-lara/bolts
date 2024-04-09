; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121984 () Bool)

(assert start!121984)

(declare-fun b!1415038 () Bool)

(declare-fun res!951195 () Bool)

(declare-fun e!800893 () Bool)

(assert (=> b!1415038 (=> (not res!951195) (not e!800893))))

(declare-datatypes ((array!96588 0))(
  ( (array!96589 (arr!46621 (Array (_ BitVec 32) (_ BitVec 64))) (size!47172 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96588)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415038 (= res!951195 (validKeyInArray!0 (select (arr!46621 a!2901) i!1037)))))

(declare-fun b!1415039 () Bool)

(declare-fun e!800889 () Bool)

(declare-fun e!800894 () Bool)

(assert (=> b!1415039 (= e!800889 e!800894)))

(declare-fun res!951196 () Bool)

(assert (=> b!1415039 (=> res!951196 e!800894)))

(declare-datatypes ((SeekEntryResult!10954 0))(
  ( (MissingZero!10954 (index!46207 (_ BitVec 32))) (Found!10954 (index!46208 (_ BitVec 32))) (Intermediate!10954 (undefined!11766 Bool) (index!46209 (_ BitVec 32)) (x!127828 (_ BitVec 32))) (Undefined!10954) (MissingVacant!10954 (index!46210 (_ BitVec 32))) )
))
(declare-fun lt!623860 () SeekEntryResult!10954)

(declare-fun lt!623864 () SeekEntryResult!10954)

(assert (=> b!1415039 (= res!951196 (or (= lt!623860 lt!623864) (not (is-Intermediate!10954 lt!623864))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!623866 () (_ BitVec 64))

(declare-fun lt!623861 () array!96588)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96588 (_ BitVec 32)) SeekEntryResult!10954)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415039 (= lt!623864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623866 mask!2840) lt!623866 lt!623861 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415039 (= lt!623866 (select (store (arr!46621 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415039 (= lt!623861 (array!96589 (store (arr!46621 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47172 a!2901)))))

(declare-fun e!800891 () Bool)

(declare-fun b!1415040 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96588 (_ BitVec 32)) SeekEntryResult!10954)

(assert (=> b!1415040 (= e!800891 (= (seekEntryOrOpen!0 (select (arr!46621 a!2901) j!112) a!2901 mask!2840) (Found!10954 j!112)))))

(declare-fun b!1415041 () Bool)

(declare-fun res!951193 () Bool)

(assert (=> b!1415041 (=> (not res!951193) (not e!800893))))

(assert (=> b!1415041 (= res!951193 (and (= (size!47172 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47172 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47172 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415042 () Bool)

(assert (=> b!1415042 (= e!800893 (not e!800889))))

(declare-fun res!951198 () Bool)

(assert (=> b!1415042 (=> res!951198 e!800889)))

(assert (=> b!1415042 (= res!951198 (or (not (is-Intermediate!10954 lt!623860)) (undefined!11766 lt!623860)))))

(assert (=> b!1415042 e!800891))

(declare-fun res!951190 () Bool)

(assert (=> b!1415042 (=> (not res!951190) (not e!800891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96588 (_ BitVec 32)) Bool)

(assert (=> b!1415042 (= res!951190 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47832 0))(
  ( (Unit!47833) )
))
(declare-fun lt!623862 () Unit!47832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47832)

(assert (=> b!1415042 (= lt!623862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623863 () (_ BitVec 32))

(assert (=> b!1415042 (= lt!623860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623863 (select (arr!46621 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415042 (= lt!623863 (toIndex!0 (select (arr!46621 a!2901) j!112) mask!2840))))

(declare-fun b!1415043 () Bool)

(declare-fun e!800890 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96588 (_ BitVec 32)) SeekEntryResult!10954)

(assert (=> b!1415043 (= e!800890 (= (seekEntryOrOpen!0 lt!623866 lt!623861 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127828 lt!623864) (index!46209 lt!623864) (index!46209 lt!623864) (select (arr!46621 a!2901) j!112) lt!623861 mask!2840)))))

(declare-fun b!1415044 () Bool)

(declare-fun res!951192 () Bool)

(assert (=> b!1415044 (=> (not res!951192) (not e!800893))))

(assert (=> b!1415044 (= res!951192 (validKeyInArray!0 (select (arr!46621 a!2901) j!112)))))

(declare-fun res!951197 () Bool)

(assert (=> start!121984 (=> (not res!951197) (not e!800893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121984 (= res!951197 (validMask!0 mask!2840))))

(assert (=> start!121984 e!800893))

(assert (=> start!121984 true))

(declare-fun array_inv!35566 (array!96588) Bool)

(assert (=> start!121984 (array_inv!35566 a!2901)))

(declare-fun b!1415045 () Bool)

(declare-fun res!951194 () Bool)

(assert (=> b!1415045 (=> (not res!951194) (not e!800893))))

(assert (=> b!1415045 (= res!951194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415046 () Bool)

(assert (=> b!1415046 (= e!800894 (or (bvslt (x!127828 lt!623860) #b00000000000000000000000000000000) (bvsgt (x!127828 lt!623860) #b01111111111111111111111111111110) (bvslt (x!127828 lt!623864) #b00000000000000000000000000000000) (bvsgt (x!127828 lt!623864) #b01111111111111111111111111111110) (bvslt lt!623863 #b00000000000000000000000000000000) (bvsge lt!623863 (size!47172 a!2901)) (bvslt (index!46209 lt!623860) #b00000000000000000000000000000000) (bvsge (index!46209 lt!623860) (size!47172 a!2901)) (and (bvsge (index!46209 lt!623864) #b00000000000000000000000000000000) (bvslt (index!46209 lt!623864) (size!47172 a!2901)))))))

(assert (=> b!1415046 e!800890))

(declare-fun res!951191 () Bool)

(assert (=> b!1415046 (=> (not res!951191) (not e!800890))))

(assert (=> b!1415046 (= res!951191 (and (not (undefined!11766 lt!623864)) (= (index!46209 lt!623864) i!1037) (bvslt (x!127828 lt!623864) (x!127828 lt!623860)) (= (select (store (arr!46621 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46209 lt!623864)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623865 () Unit!47832)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47832)

(assert (=> b!1415046 (= lt!623865 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623863 (x!127828 lt!623860) (index!46209 lt!623860) (x!127828 lt!623864) (index!46209 lt!623864) (undefined!11766 lt!623864) mask!2840))))

(declare-fun b!1415047 () Bool)

(declare-fun res!951189 () Bool)

(assert (=> b!1415047 (=> (not res!951189) (not e!800893))))

(declare-datatypes ((List!33320 0))(
  ( (Nil!33317) (Cons!33316 (h!34603 (_ BitVec 64)) (t!48021 List!33320)) )
))
(declare-fun arrayNoDuplicates!0 (array!96588 (_ BitVec 32) List!33320) Bool)

(assert (=> b!1415047 (= res!951189 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33317))))

(assert (= (and start!121984 res!951197) b!1415041))

(assert (= (and b!1415041 res!951193) b!1415038))

(assert (= (and b!1415038 res!951195) b!1415044))

(assert (= (and b!1415044 res!951192) b!1415045))

(assert (= (and b!1415045 res!951194) b!1415047))

(assert (= (and b!1415047 res!951189) b!1415042))

(assert (= (and b!1415042 res!951190) b!1415040))

(assert (= (and b!1415042 (not res!951198)) b!1415039))

(assert (= (and b!1415039 (not res!951196)) b!1415046))

(assert (= (and b!1415046 res!951191) b!1415043))

(declare-fun m!1305251 () Bool)

(assert (=> b!1415046 m!1305251))

(declare-fun m!1305253 () Bool)

(assert (=> b!1415046 m!1305253))

(declare-fun m!1305255 () Bool)

(assert (=> b!1415046 m!1305255))

(declare-fun m!1305257 () Bool)

(assert (=> b!1415042 m!1305257))

(declare-fun m!1305259 () Bool)

(assert (=> b!1415042 m!1305259))

(assert (=> b!1415042 m!1305257))

(declare-fun m!1305261 () Bool)

(assert (=> b!1415042 m!1305261))

(assert (=> b!1415042 m!1305257))

(declare-fun m!1305263 () Bool)

(assert (=> b!1415042 m!1305263))

(declare-fun m!1305265 () Bool)

(assert (=> b!1415042 m!1305265))

(declare-fun m!1305267 () Bool)

(assert (=> b!1415039 m!1305267))

(assert (=> b!1415039 m!1305267))

(declare-fun m!1305269 () Bool)

(assert (=> b!1415039 m!1305269))

(assert (=> b!1415039 m!1305251))

(declare-fun m!1305271 () Bool)

(assert (=> b!1415039 m!1305271))

(assert (=> b!1415040 m!1305257))

(assert (=> b!1415040 m!1305257))

(declare-fun m!1305273 () Bool)

(assert (=> b!1415040 m!1305273))

(declare-fun m!1305275 () Bool)

(assert (=> b!1415045 m!1305275))

(declare-fun m!1305277 () Bool)

(assert (=> b!1415047 m!1305277))

(declare-fun m!1305279 () Bool)

(assert (=> b!1415043 m!1305279))

(assert (=> b!1415043 m!1305257))

(assert (=> b!1415043 m!1305257))

(declare-fun m!1305281 () Bool)

(assert (=> b!1415043 m!1305281))

(declare-fun m!1305283 () Bool)

(assert (=> b!1415038 m!1305283))

(assert (=> b!1415038 m!1305283))

(declare-fun m!1305285 () Bool)

(assert (=> b!1415038 m!1305285))

(assert (=> b!1415044 m!1305257))

(assert (=> b!1415044 m!1305257))

(declare-fun m!1305287 () Bool)

(assert (=> b!1415044 m!1305287))

(declare-fun m!1305289 () Bool)

(assert (=> start!121984 m!1305289))

(declare-fun m!1305291 () Bool)

(assert (=> start!121984 m!1305291))

(push 1)

(assert (not b!1415042))

(assert (not b!1415038))

(assert (not start!121984))

(assert (not b!1415046))

(assert (not b!1415040))

(assert (not b!1415045))

(assert (not b!1415044))

(assert (not b!1415047))

(assert (not b!1415039))

(assert (not b!1415043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

