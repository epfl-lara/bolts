; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128844 () Bool)

(assert start!128844)

(declare-fun b!1509170 () Bool)

(declare-fun res!1029150 () Bool)

(declare-fun e!843037 () Bool)

(assert (=> b!1509170 (=> (not res!1029150) (not e!843037))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100613 0))(
  ( (array!100614 (arr!48539 (Array (_ BitVec 32) (_ BitVec 64))) (size!49090 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100613)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509170 (= res!1029150 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49090 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49090 a!2804))))))

(declare-fun b!1509171 () Bool)

(declare-fun res!1029153 () Bool)

(assert (=> b!1509171 (=> (not res!1029153) (not e!843037))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1509171 (= res!1029153 (and (= (size!49090 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49090 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49090 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509172 () Bool)

(declare-fun e!843036 () Bool)

(assert (=> b!1509172 (= e!843037 e!843036)))

(declare-fun res!1029148 () Bool)

(assert (=> b!1509172 (=> (not res!1029148) (not e!843036))))

(declare-datatypes ((SeekEntryResult!12731 0))(
  ( (MissingZero!12731 (index!53318 (_ BitVec 32))) (Found!12731 (index!53319 (_ BitVec 32))) (Intermediate!12731 (undefined!13543 Bool) (index!53320 (_ BitVec 32)) (x!135086 (_ BitVec 32))) (Undefined!12731) (MissingVacant!12731 (index!53321 (_ BitVec 32))) )
))
(declare-fun lt!654796 () SeekEntryResult!12731)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100613 (_ BitVec 32)) SeekEntryResult!12731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509172 (= res!1029148 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48539 a!2804) j!70) mask!2512) (select (arr!48539 a!2804) j!70) a!2804 mask!2512) lt!654796))))

(assert (=> b!1509172 (= lt!654796 (Intermediate!12731 false resIndex!21 resX!21))))

(declare-fun b!1509173 () Bool)

(declare-fun res!1029146 () Bool)

(assert (=> b!1509173 (=> (not res!1029146) (not e!843037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509173 (= res!1029146 (validKeyInArray!0 (select (arr!48539 a!2804) j!70)))))

(declare-fun b!1509174 () Bool)

(declare-fun res!1029152 () Bool)

(assert (=> b!1509174 (=> (not res!1029152) (not e!843037))))

(declare-datatypes ((List!35202 0))(
  ( (Nil!35199) (Cons!35198 (h!36611 (_ BitVec 64)) (t!49903 List!35202)) )
))
(declare-fun arrayNoDuplicates!0 (array!100613 (_ BitVec 32) List!35202) Bool)

(assert (=> b!1509174 (= res!1029152 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35199))))

(declare-fun b!1509175 () Bool)

(declare-fun res!1029149 () Bool)

(assert (=> b!1509175 (=> (not res!1029149) (not e!843037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100613 (_ BitVec 32)) Bool)

(assert (=> b!1509175 (= res!1029149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509176 () Bool)

(assert (=> b!1509176 (= e!843036 false)))

(declare-fun lt!654795 () SeekEntryResult!12731)

(assert (=> b!1509176 (= lt!654795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48539 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48539 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100614 (store (arr!48539 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49090 a!2804)) mask!2512))))

(declare-fun res!1029147 () Bool)

(assert (=> start!128844 (=> (not res!1029147) (not e!843037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128844 (= res!1029147 (validMask!0 mask!2512))))

(assert (=> start!128844 e!843037))

(assert (=> start!128844 true))

(declare-fun array_inv!37484 (array!100613) Bool)

(assert (=> start!128844 (array_inv!37484 a!2804)))

(declare-fun b!1509177 () Bool)

(declare-fun res!1029145 () Bool)

(assert (=> b!1509177 (=> (not res!1029145) (not e!843036))))

(assert (=> b!1509177 (= res!1029145 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48539 a!2804) j!70) a!2804 mask!2512) lt!654796))))

(declare-fun b!1509178 () Bool)

(declare-fun res!1029151 () Bool)

(assert (=> b!1509178 (=> (not res!1029151) (not e!843037))))

(assert (=> b!1509178 (= res!1029151 (validKeyInArray!0 (select (arr!48539 a!2804) i!961)))))

(assert (= (and start!128844 res!1029147) b!1509171))

(assert (= (and b!1509171 res!1029153) b!1509178))

(assert (= (and b!1509178 res!1029151) b!1509173))

(assert (= (and b!1509173 res!1029146) b!1509175))

(assert (= (and b!1509175 res!1029149) b!1509174))

(assert (= (and b!1509174 res!1029152) b!1509170))

(assert (= (and b!1509170 res!1029150) b!1509172))

(assert (= (and b!1509172 res!1029148) b!1509177))

(assert (= (and b!1509177 res!1029145) b!1509176))

(declare-fun m!1391679 () Bool)

(assert (=> b!1509172 m!1391679))

(assert (=> b!1509172 m!1391679))

(declare-fun m!1391681 () Bool)

(assert (=> b!1509172 m!1391681))

(assert (=> b!1509172 m!1391681))

(assert (=> b!1509172 m!1391679))

(declare-fun m!1391683 () Bool)

(assert (=> b!1509172 m!1391683))

(assert (=> b!1509177 m!1391679))

(assert (=> b!1509177 m!1391679))

(declare-fun m!1391685 () Bool)

(assert (=> b!1509177 m!1391685))

(declare-fun m!1391687 () Bool)

(assert (=> start!128844 m!1391687))

(declare-fun m!1391689 () Bool)

(assert (=> start!128844 m!1391689))

(declare-fun m!1391691 () Bool)

(assert (=> b!1509176 m!1391691))

(declare-fun m!1391693 () Bool)

(assert (=> b!1509176 m!1391693))

(assert (=> b!1509176 m!1391693))

(declare-fun m!1391695 () Bool)

(assert (=> b!1509176 m!1391695))

(assert (=> b!1509176 m!1391695))

(assert (=> b!1509176 m!1391693))

(declare-fun m!1391697 () Bool)

(assert (=> b!1509176 m!1391697))

(declare-fun m!1391699 () Bool)

(assert (=> b!1509178 m!1391699))

(assert (=> b!1509178 m!1391699))

(declare-fun m!1391701 () Bool)

(assert (=> b!1509178 m!1391701))

(assert (=> b!1509173 m!1391679))

(assert (=> b!1509173 m!1391679))

(declare-fun m!1391703 () Bool)

(assert (=> b!1509173 m!1391703))

(declare-fun m!1391705 () Bool)

(assert (=> b!1509174 m!1391705))

(declare-fun m!1391707 () Bool)

(assert (=> b!1509175 m!1391707))

(check-sat (not b!1509177) (not b!1509175) (not b!1509176) (not b!1509174) (not b!1509178) (not start!128844) (not b!1509172) (not b!1509173))
(check-sat)
