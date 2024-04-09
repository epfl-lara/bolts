; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129602 () Bool)

(assert start!129602)

(declare-fun b!1520929 () Bool)

(declare-fun res!1040294 () Bool)

(declare-fun e!848384 () Bool)

(assert (=> b!1520929 (=> (not res!1040294) (not e!848384))))

(declare-datatypes ((array!101204 0))(
  ( (array!101205 (arr!48830 (Array (_ BitVec 32) (_ BitVec 64))) (size!49381 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101204)

(declare-datatypes ((List!35493 0))(
  ( (Nil!35490) (Cons!35489 (h!36911 (_ BitVec 64)) (t!50194 List!35493)) )
))
(declare-fun arrayNoDuplicates!0 (array!101204 (_ BitVec 32) List!35493) Bool)

(assert (=> b!1520929 (= res!1040294 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35490))))

(declare-fun b!1520930 () Bool)

(assert (=> b!1520930 (= e!848384 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13016 0))(
  ( (MissingZero!13016 (index!54458 (_ BitVec 32))) (Found!13016 (index!54459 (_ BitVec 32))) (Intermediate!13016 (undefined!13828 Bool) (index!54460 (_ BitVec 32)) (x!136167 (_ BitVec 32))) (Undefined!13016) (MissingVacant!13016 (index!54461 (_ BitVec 32))) )
))
(declare-fun lt!659224 () SeekEntryResult!13016)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101204 (_ BitVec 32)) SeekEntryResult!13016)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520930 (= lt!659224 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48830 a!2804) j!70) mask!2512) (select (arr!48830 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520931 () Bool)

(declare-fun res!1040295 () Bool)

(assert (=> b!1520931 (=> (not res!1040295) (not e!848384))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520931 (= res!1040295 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49381 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49381 a!2804))))))

(declare-fun b!1520932 () Bool)

(declare-fun res!1040290 () Bool)

(assert (=> b!1520932 (=> (not res!1040290) (not e!848384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101204 (_ BitVec 32)) Bool)

(assert (=> b!1520932 (= res!1040290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520934 () Bool)

(declare-fun res!1040293 () Bool)

(assert (=> b!1520934 (=> (not res!1040293) (not e!848384))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1520934 (= res!1040293 (and (= (size!49381 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49381 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49381 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520935 () Bool)

(declare-fun res!1040291 () Bool)

(assert (=> b!1520935 (=> (not res!1040291) (not e!848384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520935 (= res!1040291 (validKeyInArray!0 (select (arr!48830 a!2804) j!70)))))

(declare-fun res!1040289 () Bool)

(assert (=> start!129602 (=> (not res!1040289) (not e!848384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129602 (= res!1040289 (validMask!0 mask!2512))))

(assert (=> start!129602 e!848384))

(assert (=> start!129602 true))

(declare-fun array_inv!37775 (array!101204) Bool)

(assert (=> start!129602 (array_inv!37775 a!2804)))

(declare-fun b!1520933 () Bool)

(declare-fun res!1040292 () Bool)

(assert (=> b!1520933 (=> (not res!1040292) (not e!848384))))

(assert (=> b!1520933 (= res!1040292 (validKeyInArray!0 (select (arr!48830 a!2804) i!961)))))

(assert (= (and start!129602 res!1040289) b!1520934))

(assert (= (and b!1520934 res!1040293) b!1520933))

(assert (= (and b!1520933 res!1040292) b!1520935))

(assert (= (and b!1520935 res!1040291) b!1520932))

(assert (= (and b!1520932 res!1040290) b!1520929))

(assert (= (and b!1520929 res!1040294) b!1520931))

(assert (= (and b!1520931 res!1040295) b!1520930))

(declare-fun m!1404103 () Bool)

(assert (=> b!1520930 m!1404103))

(assert (=> b!1520930 m!1404103))

(declare-fun m!1404105 () Bool)

(assert (=> b!1520930 m!1404105))

(assert (=> b!1520930 m!1404105))

(assert (=> b!1520930 m!1404103))

(declare-fun m!1404107 () Bool)

(assert (=> b!1520930 m!1404107))

(declare-fun m!1404109 () Bool)

(assert (=> start!129602 m!1404109))

(declare-fun m!1404111 () Bool)

(assert (=> start!129602 m!1404111))

(declare-fun m!1404113 () Bool)

(assert (=> b!1520929 m!1404113))

(declare-fun m!1404115 () Bool)

(assert (=> b!1520933 m!1404115))

(assert (=> b!1520933 m!1404115))

(declare-fun m!1404117 () Bool)

(assert (=> b!1520933 m!1404117))

(assert (=> b!1520935 m!1404103))

(assert (=> b!1520935 m!1404103))

(declare-fun m!1404119 () Bool)

(assert (=> b!1520935 m!1404119))

(declare-fun m!1404121 () Bool)

(assert (=> b!1520932 m!1404121))

(check-sat (not start!129602) (not b!1520930) (not b!1520932) (not b!1520933) (not b!1520935) (not b!1520929))
