; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129604 () Bool)

(assert start!129604)

(declare-fun b!1520950 () Bool)

(declare-fun res!1040312 () Bool)

(declare-fun e!848390 () Bool)

(assert (=> b!1520950 (=> (not res!1040312) (not e!848390))))

(declare-datatypes ((array!101206 0))(
  ( (array!101207 (arr!48831 (Array (_ BitVec 32) (_ BitVec 64))) (size!49382 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101206)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520950 (= res!1040312 (validKeyInArray!0 (select (arr!48831 a!2804) j!70)))))

(declare-fun res!1040316 () Bool)

(assert (=> start!129604 (=> (not res!1040316) (not e!848390))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129604 (= res!1040316 (validMask!0 mask!2512))))

(assert (=> start!129604 e!848390))

(assert (=> start!129604 true))

(declare-fun array_inv!37776 (array!101206) Bool)

(assert (=> start!129604 (array_inv!37776 a!2804)))

(declare-fun b!1520951 () Bool)

(declare-fun res!1040314 () Bool)

(assert (=> b!1520951 (=> (not res!1040314) (not e!848390))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1520951 (= res!1040314 (validKeyInArray!0 (select (arr!48831 a!2804) i!961)))))

(declare-fun b!1520952 () Bool)

(declare-fun res!1040310 () Bool)

(assert (=> b!1520952 (=> (not res!1040310) (not e!848390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101206 (_ BitVec 32)) Bool)

(assert (=> b!1520952 (= res!1040310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520953 () Bool)

(assert (=> b!1520953 (= e!848390 false)))

(declare-datatypes ((SeekEntryResult!13017 0))(
  ( (MissingZero!13017 (index!54462 (_ BitVec 32))) (Found!13017 (index!54463 (_ BitVec 32))) (Intermediate!13017 (undefined!13829 Bool) (index!54464 (_ BitVec 32)) (x!136168 (_ BitVec 32))) (Undefined!13017) (MissingVacant!13017 (index!54465 (_ BitVec 32))) )
))
(declare-fun lt!659227 () SeekEntryResult!13017)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101206 (_ BitVec 32)) SeekEntryResult!13017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520953 (= lt!659227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48831 a!2804) j!70) mask!2512) (select (arr!48831 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520954 () Bool)

(declare-fun res!1040311 () Bool)

(assert (=> b!1520954 (=> (not res!1040311) (not e!848390))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520954 (= res!1040311 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49382 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49382 a!2804))))))

(declare-fun b!1520955 () Bool)

(declare-fun res!1040315 () Bool)

(assert (=> b!1520955 (=> (not res!1040315) (not e!848390))))

(declare-datatypes ((List!35494 0))(
  ( (Nil!35491) (Cons!35490 (h!36912 (_ BitVec 64)) (t!50195 List!35494)) )
))
(declare-fun arrayNoDuplicates!0 (array!101206 (_ BitVec 32) List!35494) Bool)

(assert (=> b!1520955 (= res!1040315 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35491))))

(declare-fun b!1520956 () Bool)

(declare-fun res!1040313 () Bool)

(assert (=> b!1520956 (=> (not res!1040313) (not e!848390))))

(assert (=> b!1520956 (= res!1040313 (and (= (size!49382 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49382 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49382 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129604 res!1040316) b!1520956))

(assert (= (and b!1520956 res!1040313) b!1520951))

(assert (= (and b!1520951 res!1040314) b!1520950))

(assert (= (and b!1520950 res!1040312) b!1520952))

(assert (= (and b!1520952 res!1040310) b!1520955))

(assert (= (and b!1520955 res!1040315) b!1520954))

(assert (= (and b!1520954 res!1040311) b!1520953))

(declare-fun m!1404123 () Bool)

(assert (=> b!1520955 m!1404123))

(declare-fun m!1404125 () Bool)

(assert (=> b!1520950 m!1404125))

(assert (=> b!1520950 m!1404125))

(declare-fun m!1404127 () Bool)

(assert (=> b!1520950 m!1404127))

(declare-fun m!1404129 () Bool)

(assert (=> b!1520952 m!1404129))

(declare-fun m!1404131 () Bool)

(assert (=> start!129604 m!1404131))

(declare-fun m!1404133 () Bool)

(assert (=> start!129604 m!1404133))

(declare-fun m!1404135 () Bool)

(assert (=> b!1520951 m!1404135))

(assert (=> b!1520951 m!1404135))

(declare-fun m!1404137 () Bool)

(assert (=> b!1520951 m!1404137))

(assert (=> b!1520953 m!1404125))

(assert (=> b!1520953 m!1404125))

(declare-fun m!1404139 () Bool)

(assert (=> b!1520953 m!1404139))

(assert (=> b!1520953 m!1404139))

(assert (=> b!1520953 m!1404125))

(declare-fun m!1404141 () Bool)

(assert (=> b!1520953 m!1404141))

(push 1)

(assert (not b!1520955))

(assert (not start!129604))

(assert (not b!1520950))

(assert (not b!1520953))

(assert (not b!1520951))

(assert (not b!1520952))

(check-sat)

