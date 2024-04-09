; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129626 () Bool)

(assert start!129626)

(declare-fun b!1521213 () Bool)

(declare-fun res!1040579 () Bool)

(declare-fun e!848455 () Bool)

(assert (=> b!1521213 (=> (not res!1040579) (not e!848455))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101228 0))(
  ( (array!101229 (arr!48842 (Array (_ BitVec 32) (_ BitVec 64))) (size!49393 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101228)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13028 0))(
  ( (MissingZero!13028 (index!54506 (_ BitVec 32))) (Found!13028 (index!54507 (_ BitVec 32))) (Intermediate!13028 (undefined!13840 Bool) (index!54508 (_ BitVec 32)) (x!136211 (_ BitVec 32))) (Undefined!13028) (MissingVacant!13028 (index!54509 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101228 (_ BitVec 32)) SeekEntryResult!13028)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521213 (= res!1040579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48842 a!2804) j!70) mask!2512) (select (arr!48842 a!2804) j!70) a!2804 mask!2512) (Intermediate!13028 false resIndex!21 resX!21)))))

(declare-fun b!1521214 () Bool)

(declare-fun res!1040580 () Bool)

(assert (=> b!1521214 (=> (not res!1040580) (not e!848455))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1521214 (= res!1040580 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49393 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49393 a!2804))))))

(declare-fun b!1521215 () Bool)

(declare-fun res!1040577 () Bool)

(assert (=> b!1521215 (=> (not res!1040577) (not e!848455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521215 (= res!1040577 (validKeyInArray!0 (select (arr!48842 a!2804) j!70)))))

(declare-fun b!1521216 () Bool)

(declare-fun res!1040574 () Bool)

(assert (=> b!1521216 (=> (not res!1040574) (not e!848455))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521216 (= res!1040574 (and (= (size!49393 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49393 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49393 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521217 () Bool)

(declare-fun res!1040578 () Bool)

(assert (=> b!1521217 (=> (not res!1040578) (not e!848455))))

(declare-datatypes ((List!35505 0))(
  ( (Nil!35502) (Cons!35501 (h!36923 (_ BitVec 64)) (t!50206 List!35505)) )
))
(declare-fun arrayNoDuplicates!0 (array!101228 (_ BitVec 32) List!35505) Bool)

(assert (=> b!1521217 (= res!1040578 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35502))))

(declare-fun b!1521218 () Bool)

(declare-fun res!1040575 () Bool)

(assert (=> b!1521218 (=> (not res!1040575) (not e!848455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101228 (_ BitVec 32)) Bool)

(assert (=> b!1521218 (= res!1040575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521219 () Bool)

(assert (=> b!1521219 (= e!848455 false)))

(declare-fun lt!659260 () SeekEntryResult!13028)

(assert (=> b!1521219 (= lt!659260 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48842 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1040573 () Bool)

(assert (=> start!129626 (=> (not res!1040573) (not e!848455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129626 (= res!1040573 (validMask!0 mask!2512))))

(assert (=> start!129626 e!848455))

(assert (=> start!129626 true))

(declare-fun array_inv!37787 (array!101228) Bool)

(assert (=> start!129626 (array_inv!37787 a!2804)))

(declare-fun b!1521220 () Bool)

(declare-fun res!1040576 () Bool)

(assert (=> b!1521220 (=> (not res!1040576) (not e!848455))))

(assert (=> b!1521220 (= res!1040576 (validKeyInArray!0 (select (arr!48842 a!2804) i!961)))))

(assert (= (and start!129626 res!1040573) b!1521216))

(assert (= (and b!1521216 res!1040574) b!1521220))

(assert (= (and b!1521220 res!1040576) b!1521215))

(assert (= (and b!1521215 res!1040577) b!1521218))

(assert (= (and b!1521218 res!1040575) b!1521217))

(assert (= (and b!1521217 res!1040578) b!1521214))

(assert (= (and b!1521214 res!1040580) b!1521213))

(assert (= (and b!1521213 res!1040579) b!1521219))

(declare-fun m!1404363 () Bool)

(assert (=> b!1521218 m!1404363))

(declare-fun m!1404365 () Bool)

(assert (=> b!1521217 m!1404365))

(declare-fun m!1404367 () Bool)

(assert (=> b!1521220 m!1404367))

(assert (=> b!1521220 m!1404367))

(declare-fun m!1404369 () Bool)

(assert (=> b!1521220 m!1404369))

(declare-fun m!1404371 () Bool)

(assert (=> b!1521219 m!1404371))

(assert (=> b!1521219 m!1404371))

(declare-fun m!1404373 () Bool)

(assert (=> b!1521219 m!1404373))

(assert (=> b!1521213 m!1404371))

(assert (=> b!1521213 m!1404371))

(declare-fun m!1404375 () Bool)

(assert (=> b!1521213 m!1404375))

(assert (=> b!1521213 m!1404375))

(assert (=> b!1521213 m!1404371))

(declare-fun m!1404377 () Bool)

(assert (=> b!1521213 m!1404377))

(declare-fun m!1404379 () Bool)

(assert (=> start!129626 m!1404379))

(declare-fun m!1404381 () Bool)

(assert (=> start!129626 m!1404381))

(assert (=> b!1521215 m!1404371))

(assert (=> b!1521215 m!1404371))

(declare-fun m!1404383 () Bool)

(assert (=> b!1521215 m!1404383))

(check-sat (not b!1521215) (not b!1521219) (not b!1521217) (not b!1521220) (not b!1521213) (not b!1521218) (not start!129626))
