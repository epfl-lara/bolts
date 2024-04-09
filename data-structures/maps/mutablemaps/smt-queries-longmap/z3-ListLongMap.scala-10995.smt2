; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128850 () Bool)

(assert start!128850)

(declare-fun b!1509251 () Bool)

(declare-fun res!1029233 () Bool)

(declare-fun e!843063 () Bool)

(assert (=> b!1509251 (=> (not res!1029233) (not e!843063))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100619 0))(
  ( (array!100620 (arr!48542 (Array (_ BitVec 32) (_ BitVec 64))) (size!49093 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100619)

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509251 (= res!1029233 (and (= (size!49093 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49093 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49093 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509252 () Bool)

(declare-fun res!1029231 () Bool)

(assert (=> b!1509252 (=> (not res!1029231) (not e!843063))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509252 (= res!1029231 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49093 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49093 a!2804))))))

(declare-fun b!1509254 () Bool)

(declare-fun res!1029234 () Bool)

(assert (=> b!1509254 (=> (not res!1029234) (not e!843063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100619 (_ BitVec 32)) Bool)

(assert (=> b!1509254 (= res!1029234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509255 () Bool)

(declare-fun res!1029228 () Bool)

(assert (=> b!1509255 (=> (not res!1029228) (not e!843063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509255 (= res!1029228 (validKeyInArray!0 (select (arr!48542 a!2804) j!70)))))

(declare-fun b!1509256 () Bool)

(declare-fun res!1029229 () Bool)

(assert (=> b!1509256 (=> (not res!1029229) (not e!843063))))

(assert (=> b!1509256 (= res!1029229 (validKeyInArray!0 (select (arr!48542 a!2804) i!961)))))

(declare-fun b!1509257 () Bool)

(declare-fun e!843064 () Bool)

(assert (=> b!1509257 (= e!843064 false)))

(declare-datatypes ((SeekEntryResult!12734 0))(
  ( (MissingZero!12734 (index!53330 (_ BitVec 32))) (Found!12734 (index!53331 (_ BitVec 32))) (Intermediate!12734 (undefined!13546 Bool) (index!53332 (_ BitVec 32)) (x!135097 (_ BitVec 32))) (Undefined!12734) (MissingVacant!12734 (index!53333 (_ BitVec 32))) )
))
(declare-fun lt!654814 () SeekEntryResult!12734)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100619 (_ BitVec 32)) SeekEntryResult!12734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509257 (= lt!654814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48542 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48542 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100620 (store (arr!48542 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49093 a!2804)) mask!2512))))

(declare-fun b!1509258 () Bool)

(assert (=> b!1509258 (= e!843063 e!843064)))

(declare-fun res!1029227 () Bool)

(assert (=> b!1509258 (=> (not res!1029227) (not e!843064))))

(declare-fun lt!654813 () SeekEntryResult!12734)

(assert (=> b!1509258 (= res!1029227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48542 a!2804) j!70) mask!2512) (select (arr!48542 a!2804) j!70) a!2804 mask!2512) lt!654813))))

(assert (=> b!1509258 (= lt!654813 (Intermediate!12734 false resIndex!21 resX!21))))

(declare-fun b!1509259 () Bool)

(declare-fun res!1029232 () Bool)

(assert (=> b!1509259 (=> (not res!1029232) (not e!843064))))

(assert (=> b!1509259 (= res!1029232 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48542 a!2804) j!70) a!2804 mask!2512) lt!654813))))

(declare-fun b!1509253 () Bool)

(declare-fun res!1029226 () Bool)

(assert (=> b!1509253 (=> (not res!1029226) (not e!843063))))

(declare-datatypes ((List!35205 0))(
  ( (Nil!35202) (Cons!35201 (h!36614 (_ BitVec 64)) (t!49906 List!35205)) )
))
(declare-fun arrayNoDuplicates!0 (array!100619 (_ BitVec 32) List!35205) Bool)

(assert (=> b!1509253 (= res!1029226 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35202))))

(declare-fun res!1029230 () Bool)

(assert (=> start!128850 (=> (not res!1029230) (not e!843063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128850 (= res!1029230 (validMask!0 mask!2512))))

(assert (=> start!128850 e!843063))

(assert (=> start!128850 true))

(declare-fun array_inv!37487 (array!100619) Bool)

(assert (=> start!128850 (array_inv!37487 a!2804)))

(assert (= (and start!128850 res!1029230) b!1509251))

(assert (= (and b!1509251 res!1029233) b!1509256))

(assert (= (and b!1509256 res!1029229) b!1509255))

(assert (= (and b!1509255 res!1029228) b!1509254))

(assert (= (and b!1509254 res!1029234) b!1509253))

(assert (= (and b!1509253 res!1029226) b!1509252))

(assert (= (and b!1509252 res!1029231) b!1509258))

(assert (= (and b!1509258 res!1029227) b!1509259))

(assert (= (and b!1509259 res!1029232) b!1509257))

(declare-fun m!1391769 () Bool)

(assert (=> b!1509259 m!1391769))

(assert (=> b!1509259 m!1391769))

(declare-fun m!1391771 () Bool)

(assert (=> b!1509259 m!1391771))

(declare-fun m!1391773 () Bool)

(assert (=> b!1509256 m!1391773))

(assert (=> b!1509256 m!1391773))

(declare-fun m!1391775 () Bool)

(assert (=> b!1509256 m!1391775))

(declare-fun m!1391777 () Bool)

(assert (=> start!128850 m!1391777))

(declare-fun m!1391779 () Bool)

(assert (=> start!128850 m!1391779))

(assert (=> b!1509258 m!1391769))

(assert (=> b!1509258 m!1391769))

(declare-fun m!1391781 () Bool)

(assert (=> b!1509258 m!1391781))

(assert (=> b!1509258 m!1391781))

(assert (=> b!1509258 m!1391769))

(declare-fun m!1391783 () Bool)

(assert (=> b!1509258 m!1391783))

(declare-fun m!1391785 () Bool)

(assert (=> b!1509253 m!1391785))

(assert (=> b!1509255 m!1391769))

(assert (=> b!1509255 m!1391769))

(declare-fun m!1391787 () Bool)

(assert (=> b!1509255 m!1391787))

(declare-fun m!1391789 () Bool)

(assert (=> b!1509254 m!1391789))

(declare-fun m!1391791 () Bool)

(assert (=> b!1509257 m!1391791))

(declare-fun m!1391793 () Bool)

(assert (=> b!1509257 m!1391793))

(assert (=> b!1509257 m!1391793))

(declare-fun m!1391795 () Bool)

(assert (=> b!1509257 m!1391795))

(assert (=> b!1509257 m!1391795))

(assert (=> b!1509257 m!1391793))

(declare-fun m!1391797 () Bool)

(assert (=> b!1509257 m!1391797))

(check-sat (not b!1509256) (not b!1509258) (not start!128850) (not b!1509253) (not b!1509257) (not b!1509254) (not b!1509259) (not b!1509255))
(check-sat)
