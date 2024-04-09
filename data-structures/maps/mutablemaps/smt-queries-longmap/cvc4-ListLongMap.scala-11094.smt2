; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129622 () Bool)

(assert start!129622)

(declare-fun res!1040530 () Bool)

(declare-fun e!848444 () Bool)

(assert (=> start!129622 (=> (not res!1040530) (not e!848444))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129622 (= res!1040530 (validMask!0 mask!2512))))

(assert (=> start!129622 e!848444))

(assert (=> start!129622 true))

(declare-datatypes ((array!101224 0))(
  ( (array!101225 (arr!48840 (Array (_ BitVec 32) (_ BitVec 64))) (size!49391 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101224)

(declare-fun array_inv!37785 (array!101224) Bool)

(assert (=> start!129622 (array_inv!37785 a!2804)))

(declare-fun b!1521165 () Bool)

(declare-fun res!1040525 () Bool)

(assert (=> b!1521165 (=> (not res!1040525) (not e!848444))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521165 (= res!1040525 (validKeyInArray!0 (select (arr!48840 a!2804) i!961)))))

(declare-fun b!1521166 () Bool)

(declare-fun res!1040532 () Bool)

(assert (=> b!1521166 (=> (not res!1040532) (not e!848444))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521166 (= res!1040532 (and (= (size!49391 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49391 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49391 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521167 () Bool)

(declare-fun res!1040528 () Bool)

(assert (=> b!1521167 (=> (not res!1040528) (not e!848444))))

(assert (=> b!1521167 (= res!1040528 (validKeyInArray!0 (select (arr!48840 a!2804) j!70)))))

(declare-fun b!1521168 () Bool)

(declare-fun res!1040531 () Bool)

(assert (=> b!1521168 (=> (not res!1040531) (not e!848444))))

(declare-datatypes ((List!35503 0))(
  ( (Nil!35500) (Cons!35499 (h!36921 (_ BitVec 64)) (t!50204 List!35503)) )
))
(declare-fun arrayNoDuplicates!0 (array!101224 (_ BitVec 32) List!35503) Bool)

(assert (=> b!1521168 (= res!1040531 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35500))))

(declare-fun b!1521169 () Bool)

(declare-fun res!1040526 () Bool)

(assert (=> b!1521169 (=> (not res!1040526) (not e!848444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101224 (_ BitVec 32)) Bool)

(assert (=> b!1521169 (= res!1040526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521170 () Bool)

(declare-fun res!1040527 () Bool)

(assert (=> b!1521170 (=> (not res!1040527) (not e!848444))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13026 0))(
  ( (MissingZero!13026 (index!54498 (_ BitVec 32))) (Found!13026 (index!54499 (_ BitVec 32))) (Intermediate!13026 (undefined!13838 Bool) (index!54500 (_ BitVec 32)) (x!136201 (_ BitVec 32))) (Undefined!13026) (MissingVacant!13026 (index!54501 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101224 (_ BitVec 32)) SeekEntryResult!13026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521170 (= res!1040527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48840 a!2804) j!70) mask!2512) (select (arr!48840 a!2804) j!70) a!2804 mask!2512) (Intermediate!13026 false resIndex!21 resX!21)))))

(declare-fun b!1521171 () Bool)

(assert (=> b!1521171 (= e!848444 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!659254 () SeekEntryResult!13026)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521171 (= lt!659254 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48840 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521172 () Bool)

(declare-fun res!1040529 () Bool)

(assert (=> b!1521172 (=> (not res!1040529) (not e!848444))))

(assert (=> b!1521172 (= res!1040529 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49391 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49391 a!2804))))))

(assert (= (and start!129622 res!1040530) b!1521166))

(assert (= (and b!1521166 res!1040532) b!1521165))

(assert (= (and b!1521165 res!1040525) b!1521167))

(assert (= (and b!1521167 res!1040528) b!1521169))

(assert (= (and b!1521169 res!1040526) b!1521168))

(assert (= (and b!1521168 res!1040531) b!1521172))

(assert (= (and b!1521172 res!1040529) b!1521170))

(assert (= (and b!1521170 res!1040527) b!1521171))

(declare-fun m!1404319 () Bool)

(assert (=> b!1521171 m!1404319))

(assert (=> b!1521171 m!1404319))

(declare-fun m!1404321 () Bool)

(assert (=> b!1521171 m!1404321))

(assert (=> b!1521170 m!1404319))

(assert (=> b!1521170 m!1404319))

(declare-fun m!1404323 () Bool)

(assert (=> b!1521170 m!1404323))

(assert (=> b!1521170 m!1404323))

(assert (=> b!1521170 m!1404319))

(declare-fun m!1404325 () Bool)

(assert (=> b!1521170 m!1404325))

(declare-fun m!1404327 () Bool)

(assert (=> b!1521169 m!1404327))

(declare-fun m!1404329 () Bool)

(assert (=> b!1521168 m!1404329))

(assert (=> b!1521167 m!1404319))

(assert (=> b!1521167 m!1404319))

(declare-fun m!1404331 () Bool)

(assert (=> b!1521167 m!1404331))

(declare-fun m!1404333 () Bool)

(assert (=> b!1521165 m!1404333))

(assert (=> b!1521165 m!1404333))

(declare-fun m!1404335 () Bool)

(assert (=> b!1521165 m!1404335))

(declare-fun m!1404337 () Bool)

(assert (=> start!129622 m!1404337))

(declare-fun m!1404339 () Bool)

(assert (=> start!129622 m!1404339))

(push 1)

(assert (not b!1521165))

(assert (not start!129622))

(assert (not b!1521170))

(assert (not b!1521168))

(assert (not b!1521169))

(assert (not b!1521171))

(assert (not b!1521167))

(check-sat)

