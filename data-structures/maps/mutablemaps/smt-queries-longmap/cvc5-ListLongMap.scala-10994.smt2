; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128842 () Bool)

(assert start!128842)

(declare-fun b!1509143 () Bool)

(declare-fun res!1029125 () Bool)

(declare-fun e!843027 () Bool)

(assert (=> b!1509143 (=> (not res!1029125) (not e!843027))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100611 0))(
  ( (array!100612 (arr!48538 (Array (_ BitVec 32) (_ BitVec 64))) (size!49089 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100611)

(assert (=> b!1509143 (= res!1029125 (and (= (size!49089 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49089 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49089 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509144 () Bool)

(declare-fun res!1029118 () Bool)

(assert (=> b!1509144 (=> (not res!1029118) (not e!843027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100611 (_ BitVec 32)) Bool)

(assert (=> b!1509144 (= res!1029118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509145 () Bool)

(declare-fun res!1029126 () Bool)

(declare-fun e!843029 () Bool)

(assert (=> b!1509145 (=> (not res!1029126) (not e!843029))))

(declare-datatypes ((SeekEntryResult!12730 0))(
  ( (MissingZero!12730 (index!53314 (_ BitVec 32))) (Found!12730 (index!53315 (_ BitVec 32))) (Intermediate!12730 (undefined!13542 Bool) (index!53316 (_ BitVec 32)) (x!135085 (_ BitVec 32))) (Undefined!12730) (MissingVacant!12730 (index!53317 (_ BitVec 32))) )
))
(declare-fun lt!654790 () SeekEntryResult!12730)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100611 (_ BitVec 32)) SeekEntryResult!12730)

(assert (=> b!1509145 (= res!1029126 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48538 a!2804) j!70) a!2804 mask!2512) lt!654790))))

(declare-fun b!1509146 () Bool)

(declare-fun res!1029121 () Bool)

(assert (=> b!1509146 (=> (not res!1029121) (not e!843027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509146 (= res!1029121 (validKeyInArray!0 (select (arr!48538 a!2804) j!70)))))

(declare-fun b!1509147 () Bool)

(assert (=> b!1509147 (= e!843027 e!843029)))

(declare-fun res!1029122 () Bool)

(assert (=> b!1509147 (=> (not res!1029122) (not e!843029))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509147 (= res!1029122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48538 a!2804) j!70) mask!2512) (select (arr!48538 a!2804) j!70) a!2804 mask!2512) lt!654790))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509147 (= lt!654790 (Intermediate!12730 false resIndex!21 resX!21))))

(declare-fun b!1509148 () Bool)

(assert (=> b!1509148 (= e!843029 false)))

(declare-fun lt!654789 () SeekEntryResult!12730)

(assert (=> b!1509148 (= lt!654789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48538 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48538 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100612 (store (arr!48538 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49089 a!2804)) mask!2512))))

(declare-fun res!1029124 () Bool)

(assert (=> start!128842 (=> (not res!1029124) (not e!843027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128842 (= res!1029124 (validMask!0 mask!2512))))

(assert (=> start!128842 e!843027))

(assert (=> start!128842 true))

(declare-fun array_inv!37483 (array!100611) Bool)

(assert (=> start!128842 (array_inv!37483 a!2804)))

(declare-fun b!1509149 () Bool)

(declare-fun res!1029123 () Bool)

(assert (=> b!1509149 (=> (not res!1029123) (not e!843027))))

(assert (=> b!1509149 (= res!1029123 (validKeyInArray!0 (select (arr!48538 a!2804) i!961)))))

(declare-fun b!1509150 () Bool)

(declare-fun res!1029119 () Bool)

(assert (=> b!1509150 (=> (not res!1029119) (not e!843027))))

(assert (=> b!1509150 (= res!1029119 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49089 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49089 a!2804))))))

(declare-fun b!1509151 () Bool)

(declare-fun res!1029120 () Bool)

(assert (=> b!1509151 (=> (not res!1029120) (not e!843027))))

(declare-datatypes ((List!35201 0))(
  ( (Nil!35198) (Cons!35197 (h!36610 (_ BitVec 64)) (t!49902 List!35201)) )
))
(declare-fun arrayNoDuplicates!0 (array!100611 (_ BitVec 32) List!35201) Bool)

(assert (=> b!1509151 (= res!1029120 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35198))))

(assert (= (and start!128842 res!1029124) b!1509143))

(assert (= (and b!1509143 res!1029125) b!1509149))

(assert (= (and b!1509149 res!1029123) b!1509146))

(assert (= (and b!1509146 res!1029121) b!1509144))

(assert (= (and b!1509144 res!1029118) b!1509151))

(assert (= (and b!1509151 res!1029120) b!1509150))

(assert (= (and b!1509150 res!1029119) b!1509147))

(assert (= (and b!1509147 res!1029122) b!1509145))

(assert (= (and b!1509145 res!1029126) b!1509148))

(declare-fun m!1391649 () Bool)

(assert (=> b!1509145 m!1391649))

(assert (=> b!1509145 m!1391649))

(declare-fun m!1391651 () Bool)

(assert (=> b!1509145 m!1391651))

(declare-fun m!1391653 () Bool)

(assert (=> b!1509148 m!1391653))

(declare-fun m!1391655 () Bool)

(assert (=> b!1509148 m!1391655))

(assert (=> b!1509148 m!1391655))

(declare-fun m!1391657 () Bool)

(assert (=> b!1509148 m!1391657))

(assert (=> b!1509148 m!1391657))

(assert (=> b!1509148 m!1391655))

(declare-fun m!1391659 () Bool)

(assert (=> b!1509148 m!1391659))

(assert (=> b!1509147 m!1391649))

(assert (=> b!1509147 m!1391649))

(declare-fun m!1391661 () Bool)

(assert (=> b!1509147 m!1391661))

(assert (=> b!1509147 m!1391661))

(assert (=> b!1509147 m!1391649))

(declare-fun m!1391663 () Bool)

(assert (=> b!1509147 m!1391663))

(declare-fun m!1391665 () Bool)

(assert (=> b!1509151 m!1391665))

(assert (=> b!1509146 m!1391649))

(assert (=> b!1509146 m!1391649))

(declare-fun m!1391667 () Bool)

(assert (=> b!1509146 m!1391667))

(declare-fun m!1391669 () Bool)

(assert (=> start!128842 m!1391669))

(declare-fun m!1391671 () Bool)

(assert (=> start!128842 m!1391671))

(declare-fun m!1391673 () Bool)

(assert (=> b!1509149 m!1391673))

(assert (=> b!1509149 m!1391673))

(declare-fun m!1391675 () Bool)

(assert (=> b!1509149 m!1391675))

(declare-fun m!1391677 () Bool)

(assert (=> b!1509144 m!1391677))

(push 1)

