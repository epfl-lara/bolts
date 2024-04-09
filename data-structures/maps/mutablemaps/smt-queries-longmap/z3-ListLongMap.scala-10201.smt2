; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120234 () Bool)

(assert start!120234)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95624 0))(
  ( (array!95625 (arr!46160 (Array (_ BitVec 32) (_ BitVec 64))) (size!46711 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95624)

(declare-fun b!1398947 () Bool)

(declare-fun e!792020 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10499 0))(
  ( (MissingZero!10499 (index!44369 (_ BitVec 32))) (Found!10499 (index!44370 (_ BitVec 32))) (Intermediate!10499 (undefined!11311 Bool) (index!44371 (_ BitVec 32)) (x!126021 (_ BitVec 32))) (Undefined!10499) (MissingVacant!10499 (index!44372 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95624 (_ BitVec 32)) SeekEntryResult!10499)

(assert (=> b!1398947 (= e!792020 (= (seekEntryOrOpen!0 (select (arr!46160 a!2901) j!112) a!2901 mask!2840) (Found!10499 j!112)))))

(declare-fun b!1398948 () Bool)

(declare-fun res!937807 () Bool)

(declare-fun e!792023 () Bool)

(assert (=> b!1398948 (=> (not res!937807) (not e!792023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398948 (= res!937807 (validKeyInArray!0 (select (arr!46160 a!2901) j!112)))))

(declare-fun b!1398949 () Bool)

(declare-fun res!937810 () Bool)

(assert (=> b!1398949 (=> (not res!937810) (not e!792023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95624 (_ BitVec 32)) Bool)

(assert (=> b!1398949 (= res!937810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398950 () Bool)

(declare-fun e!792021 () Bool)

(assert (=> b!1398950 (= e!792021 true)))

(declare-fun lt!615221 () SeekEntryResult!10499)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!615223 () SeekEntryResult!10499)

(assert (=> b!1398950 (and (not (undefined!11311 lt!615223)) (= (index!44371 lt!615223) i!1037) (bvslt (x!126021 lt!615223) (x!126021 lt!615221)) (= (select (store (arr!46160 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44371 lt!615223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46952 0))(
  ( (Unit!46953) )
))
(declare-fun lt!615220 () Unit!46952)

(declare-fun lt!615218 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46952)

(assert (=> b!1398950 (= lt!615220 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615218 (x!126021 lt!615221) (index!44371 lt!615221) (x!126021 lt!615223) (index!44371 lt!615223) (undefined!11311 lt!615223) mask!2840))))

(declare-fun b!1398951 () Bool)

(declare-fun e!792022 () Bool)

(assert (=> b!1398951 (= e!792023 (not e!792022))))

(declare-fun res!937804 () Bool)

(assert (=> b!1398951 (=> res!937804 e!792022)))

(get-info :version)

(assert (=> b!1398951 (= res!937804 (or (not ((_ is Intermediate!10499) lt!615221)) (undefined!11311 lt!615221)))))

(assert (=> b!1398951 e!792020))

(declare-fun res!937808 () Bool)

(assert (=> b!1398951 (=> (not res!937808) (not e!792020))))

(assert (=> b!1398951 (= res!937808 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615219 () Unit!46952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46952)

(assert (=> b!1398951 (= lt!615219 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95624 (_ BitVec 32)) SeekEntryResult!10499)

(assert (=> b!1398951 (= lt!615221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615218 (select (arr!46160 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398951 (= lt!615218 (toIndex!0 (select (arr!46160 a!2901) j!112) mask!2840))))

(declare-fun b!1398952 () Bool)

(declare-fun res!937806 () Bool)

(assert (=> b!1398952 (=> (not res!937806) (not e!792023))))

(assert (=> b!1398952 (= res!937806 (validKeyInArray!0 (select (arr!46160 a!2901) i!1037)))))

(declare-fun b!1398953 () Bool)

(assert (=> b!1398953 (= e!792022 e!792021)))

(declare-fun res!937811 () Bool)

(assert (=> b!1398953 (=> res!937811 e!792021)))

(assert (=> b!1398953 (= res!937811 (or (= lt!615221 lt!615223) (not ((_ is Intermediate!10499) lt!615223))))))

(declare-fun lt!615222 () (_ BitVec 64))

(assert (=> b!1398953 (= lt!615223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615222 mask!2840) lt!615222 (array!95625 (store (arr!46160 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46711 a!2901)) mask!2840))))

(assert (=> b!1398953 (= lt!615222 (select (store (arr!46160 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398954 () Bool)

(declare-fun res!937812 () Bool)

(assert (=> b!1398954 (=> (not res!937812) (not e!792023))))

(declare-datatypes ((List!32859 0))(
  ( (Nil!32856) (Cons!32855 (h!34100 (_ BitVec 64)) (t!47560 List!32859)) )
))
(declare-fun arrayNoDuplicates!0 (array!95624 (_ BitVec 32) List!32859) Bool)

(assert (=> b!1398954 (= res!937812 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32856))))

(declare-fun b!1398955 () Bool)

(declare-fun res!937805 () Bool)

(assert (=> b!1398955 (=> (not res!937805) (not e!792023))))

(assert (=> b!1398955 (= res!937805 (and (= (size!46711 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46711 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46711 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937809 () Bool)

(assert (=> start!120234 (=> (not res!937809) (not e!792023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120234 (= res!937809 (validMask!0 mask!2840))))

(assert (=> start!120234 e!792023))

(assert (=> start!120234 true))

(declare-fun array_inv!35105 (array!95624) Bool)

(assert (=> start!120234 (array_inv!35105 a!2901)))

(assert (= (and start!120234 res!937809) b!1398955))

(assert (= (and b!1398955 res!937805) b!1398952))

(assert (= (and b!1398952 res!937806) b!1398948))

(assert (= (and b!1398948 res!937807) b!1398949))

(assert (= (and b!1398949 res!937810) b!1398954))

(assert (= (and b!1398954 res!937812) b!1398951))

(assert (= (and b!1398951 res!937808) b!1398947))

(assert (= (and b!1398951 (not res!937804)) b!1398953))

(assert (= (and b!1398953 (not res!937811)) b!1398950))

(declare-fun m!1286179 () Bool)

(assert (=> b!1398950 m!1286179))

(declare-fun m!1286181 () Bool)

(assert (=> b!1398950 m!1286181))

(declare-fun m!1286183 () Bool)

(assert (=> b!1398950 m!1286183))

(declare-fun m!1286185 () Bool)

(assert (=> b!1398951 m!1286185))

(declare-fun m!1286187 () Bool)

(assert (=> b!1398951 m!1286187))

(assert (=> b!1398951 m!1286185))

(declare-fun m!1286189 () Bool)

(assert (=> b!1398951 m!1286189))

(declare-fun m!1286191 () Bool)

(assert (=> b!1398951 m!1286191))

(assert (=> b!1398951 m!1286185))

(declare-fun m!1286193 () Bool)

(assert (=> b!1398951 m!1286193))

(declare-fun m!1286195 () Bool)

(assert (=> b!1398949 m!1286195))

(declare-fun m!1286197 () Bool)

(assert (=> b!1398954 m!1286197))

(declare-fun m!1286199 () Bool)

(assert (=> b!1398952 m!1286199))

(assert (=> b!1398952 m!1286199))

(declare-fun m!1286201 () Bool)

(assert (=> b!1398952 m!1286201))

(assert (=> b!1398947 m!1286185))

(assert (=> b!1398947 m!1286185))

(declare-fun m!1286203 () Bool)

(assert (=> b!1398947 m!1286203))

(assert (=> b!1398948 m!1286185))

(assert (=> b!1398948 m!1286185))

(declare-fun m!1286205 () Bool)

(assert (=> b!1398948 m!1286205))

(declare-fun m!1286207 () Bool)

(assert (=> b!1398953 m!1286207))

(assert (=> b!1398953 m!1286179))

(assert (=> b!1398953 m!1286207))

(declare-fun m!1286209 () Bool)

(assert (=> b!1398953 m!1286209))

(declare-fun m!1286211 () Bool)

(assert (=> b!1398953 m!1286211))

(declare-fun m!1286213 () Bool)

(assert (=> start!120234 m!1286213))

(declare-fun m!1286215 () Bool)

(assert (=> start!120234 m!1286215))

(check-sat (not b!1398953) (not b!1398950) (not b!1398948) (not b!1398952) (not b!1398947) (not b!1398949) (not start!120234) (not b!1398954) (not b!1398951))
(check-sat)
