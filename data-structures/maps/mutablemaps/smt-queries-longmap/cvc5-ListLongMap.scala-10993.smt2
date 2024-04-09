; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128836 () Bool)

(assert start!128836)

(declare-fun res!1029043 () Bool)

(declare-fun e!843002 () Bool)

(assert (=> start!128836 (=> (not res!1029043) (not e!843002))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128836 (= res!1029043 (validMask!0 mask!2512))))

(assert (=> start!128836 e!843002))

(assert (=> start!128836 true))

(declare-datatypes ((array!100605 0))(
  ( (array!100606 (arr!48535 (Array (_ BitVec 32) (_ BitVec 64))) (size!49086 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100605)

(declare-fun array_inv!37480 (array!100605) Bool)

(assert (=> start!128836 (array_inv!37480 a!2804)))

(declare-fun b!1509062 () Bool)

(declare-fun res!1029045 () Bool)

(assert (=> b!1509062 (=> (not res!1029045) (not e!843002))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509062 (= res!1029045 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49086 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49086 a!2804))))))

(declare-fun b!1509063 () Bool)

(declare-fun e!843000 () Bool)

(assert (=> b!1509063 (= e!843000 false)))

(declare-datatypes ((SeekEntryResult!12727 0))(
  ( (MissingZero!12727 (index!53302 (_ BitVec 32))) (Found!12727 (index!53303 (_ BitVec 32))) (Intermediate!12727 (undefined!13539 Bool) (index!53304 (_ BitVec 32)) (x!135074 (_ BitVec 32))) (Undefined!12727) (MissingVacant!12727 (index!53305 (_ BitVec 32))) )
))
(declare-fun lt!654772 () SeekEntryResult!12727)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100605 (_ BitVec 32)) SeekEntryResult!12727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509063 (= lt!654772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48535 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48535 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100606 (store (arr!48535 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49086 a!2804)) mask!2512))))

(declare-fun b!1509064 () Bool)

(declare-fun res!1029040 () Bool)

(assert (=> b!1509064 (=> (not res!1029040) (not e!843002))))

(assert (=> b!1509064 (= res!1029040 (and (= (size!49086 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49086 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49086 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509065 () Bool)

(assert (=> b!1509065 (= e!843002 e!843000)))

(declare-fun res!1029044 () Bool)

(assert (=> b!1509065 (=> (not res!1029044) (not e!843000))))

(declare-fun lt!654771 () SeekEntryResult!12727)

(assert (=> b!1509065 (= res!1029044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48535 a!2804) j!70) mask!2512) (select (arr!48535 a!2804) j!70) a!2804 mask!2512) lt!654771))))

(assert (=> b!1509065 (= lt!654771 (Intermediate!12727 false resIndex!21 resX!21))))

(declare-fun b!1509066 () Bool)

(declare-fun res!1029042 () Bool)

(assert (=> b!1509066 (=> (not res!1029042) (not e!843002))))

(declare-datatypes ((List!35198 0))(
  ( (Nil!35195) (Cons!35194 (h!36607 (_ BitVec 64)) (t!49899 List!35198)) )
))
(declare-fun arrayNoDuplicates!0 (array!100605 (_ BitVec 32) List!35198) Bool)

(assert (=> b!1509066 (= res!1029042 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35195))))

(declare-fun b!1509067 () Bool)

(declare-fun res!1029037 () Bool)

(assert (=> b!1509067 (=> (not res!1029037) (not e!843002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100605 (_ BitVec 32)) Bool)

(assert (=> b!1509067 (= res!1029037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509068 () Bool)

(declare-fun res!1029039 () Bool)

(assert (=> b!1509068 (=> (not res!1029039) (not e!843002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509068 (= res!1029039 (validKeyInArray!0 (select (arr!48535 a!2804) j!70)))))

(declare-fun b!1509069 () Bool)

(declare-fun res!1029038 () Bool)

(assert (=> b!1509069 (=> (not res!1029038) (not e!843000))))

(assert (=> b!1509069 (= res!1029038 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48535 a!2804) j!70) a!2804 mask!2512) lt!654771))))

(declare-fun b!1509070 () Bool)

(declare-fun res!1029041 () Bool)

(assert (=> b!1509070 (=> (not res!1029041) (not e!843002))))

(assert (=> b!1509070 (= res!1029041 (validKeyInArray!0 (select (arr!48535 a!2804) i!961)))))

(assert (= (and start!128836 res!1029043) b!1509064))

(assert (= (and b!1509064 res!1029040) b!1509070))

(assert (= (and b!1509070 res!1029041) b!1509068))

(assert (= (and b!1509068 res!1029039) b!1509067))

(assert (= (and b!1509067 res!1029037) b!1509066))

(assert (= (and b!1509066 res!1029042) b!1509062))

(assert (= (and b!1509062 res!1029045) b!1509065))

(assert (= (and b!1509065 res!1029044) b!1509069))

(assert (= (and b!1509069 res!1029038) b!1509063))

(declare-fun m!1391559 () Bool)

(assert (=> b!1509068 m!1391559))

(assert (=> b!1509068 m!1391559))

(declare-fun m!1391561 () Bool)

(assert (=> b!1509068 m!1391561))

(declare-fun m!1391563 () Bool)

(assert (=> start!128836 m!1391563))

(declare-fun m!1391565 () Bool)

(assert (=> start!128836 m!1391565))

(assert (=> b!1509069 m!1391559))

(assert (=> b!1509069 m!1391559))

(declare-fun m!1391567 () Bool)

(assert (=> b!1509069 m!1391567))

(declare-fun m!1391569 () Bool)

(assert (=> b!1509070 m!1391569))

(assert (=> b!1509070 m!1391569))

(declare-fun m!1391571 () Bool)

(assert (=> b!1509070 m!1391571))

(declare-fun m!1391573 () Bool)

(assert (=> b!1509067 m!1391573))

(declare-fun m!1391575 () Bool)

(assert (=> b!1509066 m!1391575))

(assert (=> b!1509065 m!1391559))

(assert (=> b!1509065 m!1391559))

(declare-fun m!1391577 () Bool)

(assert (=> b!1509065 m!1391577))

(assert (=> b!1509065 m!1391577))

(assert (=> b!1509065 m!1391559))

(declare-fun m!1391579 () Bool)

(assert (=> b!1509065 m!1391579))

(declare-fun m!1391581 () Bool)

(assert (=> b!1509063 m!1391581))

(declare-fun m!1391583 () Bool)

(assert (=> b!1509063 m!1391583))

(assert (=> b!1509063 m!1391583))

(declare-fun m!1391585 () Bool)

(assert (=> b!1509063 m!1391585))

(assert (=> b!1509063 m!1391585))

(assert (=> b!1509063 m!1391583))

(declare-fun m!1391587 () Bool)

(assert (=> b!1509063 m!1391587))

(push 1)

