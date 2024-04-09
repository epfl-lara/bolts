; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119550 () Bool)

(assert start!119550)

(declare-datatypes ((array!95201 0))(
  ( (array!95202 (arr!45956 (Array (_ BitVec 32) (_ BitVec 64))) (size!46507 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95201)

(declare-fun b!1392344 () Bool)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun e!788471 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392344 (= e!788471 (validKeyInArray!0 (select (store (arr!45956 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1392345 () Bool)

(declare-fun e!788472 () Bool)

(declare-fun e!788470 () Bool)

(assert (=> b!1392345 (= e!788472 (not e!788470))))

(declare-fun res!932029 () Bool)

(assert (=> b!1392345 (=> res!932029 e!788470)))

(declare-datatypes ((SeekEntryResult!10295 0))(
  ( (MissingZero!10295 (index!43550 (_ BitVec 32))) (Found!10295 (index!43551 (_ BitVec 32))) (Intermediate!10295 (undefined!11107 Bool) (index!43552 (_ BitVec 32)) (x!125240 (_ BitVec 32))) (Undefined!10295) (MissingVacant!10295 (index!43553 (_ BitVec 32))) )
))
(declare-fun lt!611553 () SeekEntryResult!10295)

(get-info :version)

(assert (=> b!1392345 (= res!932029 (or (not ((_ is Intermediate!10295) lt!611553)) (undefined!11107 lt!611553)))))

(declare-fun e!788474 () Bool)

(assert (=> b!1392345 e!788474))

(declare-fun res!932031 () Bool)

(assert (=> b!1392345 (=> (not res!932031) (not e!788474))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95201 (_ BitVec 32)) Bool)

(assert (=> b!1392345 (= res!932031 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46544 0))(
  ( (Unit!46545) )
))
(declare-fun lt!611552 () Unit!46544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46544)

(assert (=> b!1392345 (= lt!611552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95201 (_ BitVec 32)) SeekEntryResult!10295)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392345 (= lt!611553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45956 a!2901) j!112) mask!2840) (select (arr!45956 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392346 () Bool)

(declare-fun res!932030 () Bool)

(assert (=> b!1392346 (=> (not res!932030) (not e!788472))))

(assert (=> b!1392346 (= res!932030 (and (= (size!46507 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46507 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46507 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!932026 () Bool)

(assert (=> start!119550 (=> (not res!932026) (not e!788472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119550 (= res!932026 (validMask!0 mask!2840))))

(assert (=> start!119550 e!788472))

(assert (=> start!119550 true))

(declare-fun array_inv!34901 (array!95201) Bool)

(assert (=> start!119550 (array_inv!34901 a!2901)))

(declare-fun b!1392347 () Bool)

(declare-fun res!932027 () Bool)

(assert (=> b!1392347 (=> (not res!932027) (not e!788472))))

(assert (=> b!1392347 (= res!932027 (validKeyInArray!0 (select (arr!45956 a!2901) j!112)))))

(declare-fun b!1392348 () Bool)

(declare-fun res!932033 () Bool)

(assert (=> b!1392348 (=> (not res!932033) (not e!788472))))

(declare-datatypes ((List!32655 0))(
  ( (Nil!32652) (Cons!32651 (h!33881 (_ BitVec 64)) (t!47356 List!32655)) )
))
(declare-fun arrayNoDuplicates!0 (array!95201 (_ BitVec 32) List!32655) Bool)

(assert (=> b!1392348 (= res!932033 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32652))))

(declare-fun b!1392349 () Bool)

(declare-fun res!932032 () Bool)

(assert (=> b!1392349 (=> (not res!932032) (not e!788472))))

(assert (=> b!1392349 (= res!932032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392350 () Bool)

(assert (=> b!1392350 (= e!788470 e!788471)))

(declare-fun res!932034 () Bool)

(assert (=> b!1392350 (=> res!932034 e!788471)))

(declare-fun lt!611554 () (_ BitVec 32))

(assert (=> b!1392350 (= res!932034 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!611554 #b00000000000000000000000000000000) (bvsge lt!611554 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(assert (=> b!1392350 (= lt!611554 (toIndex!0 (select (store (arr!45956 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1392351 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95201 (_ BitVec 32)) SeekEntryResult!10295)

(assert (=> b!1392351 (= e!788474 (= (seekEntryOrOpen!0 (select (arr!45956 a!2901) j!112) a!2901 mask!2840) (Found!10295 j!112)))))

(declare-fun b!1392352 () Bool)

(declare-fun res!932028 () Bool)

(assert (=> b!1392352 (=> (not res!932028) (not e!788472))))

(assert (=> b!1392352 (= res!932028 (validKeyInArray!0 (select (arr!45956 a!2901) i!1037)))))

(assert (= (and start!119550 res!932026) b!1392346))

(assert (= (and b!1392346 res!932030) b!1392352))

(assert (= (and b!1392352 res!932028) b!1392347))

(assert (= (and b!1392347 res!932027) b!1392349))

(assert (= (and b!1392349 res!932032) b!1392348))

(assert (= (and b!1392348 res!932033) b!1392345))

(assert (= (and b!1392345 res!932031) b!1392351))

(assert (= (and b!1392345 (not res!932029)) b!1392350))

(assert (= (and b!1392350 (not res!932034)) b!1392344))

(declare-fun m!1278135 () Bool)

(assert (=> start!119550 m!1278135))

(declare-fun m!1278137 () Bool)

(assert (=> start!119550 m!1278137))

(declare-fun m!1278139 () Bool)

(assert (=> b!1392350 m!1278139))

(declare-fun m!1278141 () Bool)

(assert (=> b!1392350 m!1278141))

(assert (=> b!1392350 m!1278141))

(declare-fun m!1278143 () Bool)

(assert (=> b!1392350 m!1278143))

(declare-fun m!1278145 () Bool)

(assert (=> b!1392349 m!1278145))

(assert (=> b!1392344 m!1278139))

(assert (=> b!1392344 m!1278141))

(assert (=> b!1392344 m!1278141))

(declare-fun m!1278147 () Bool)

(assert (=> b!1392344 m!1278147))

(declare-fun m!1278149 () Bool)

(assert (=> b!1392351 m!1278149))

(assert (=> b!1392351 m!1278149))

(declare-fun m!1278151 () Bool)

(assert (=> b!1392351 m!1278151))

(assert (=> b!1392345 m!1278149))

(declare-fun m!1278153 () Bool)

(assert (=> b!1392345 m!1278153))

(assert (=> b!1392345 m!1278149))

(declare-fun m!1278155 () Bool)

(assert (=> b!1392345 m!1278155))

(assert (=> b!1392345 m!1278153))

(assert (=> b!1392345 m!1278149))

(declare-fun m!1278157 () Bool)

(assert (=> b!1392345 m!1278157))

(declare-fun m!1278159 () Bool)

(assert (=> b!1392345 m!1278159))

(declare-fun m!1278161 () Bool)

(assert (=> b!1392348 m!1278161))

(assert (=> b!1392347 m!1278149))

(assert (=> b!1392347 m!1278149))

(declare-fun m!1278163 () Bool)

(assert (=> b!1392347 m!1278163))

(declare-fun m!1278165 () Bool)

(assert (=> b!1392352 m!1278165))

(assert (=> b!1392352 m!1278165))

(declare-fun m!1278167 () Bool)

(assert (=> b!1392352 m!1278167))

(check-sat (not b!1392350) (not b!1392348) (not b!1392349) (not b!1392344) (not start!119550) (not b!1392352) (not b!1392351) (not b!1392347) (not b!1392345))
(check-sat)
