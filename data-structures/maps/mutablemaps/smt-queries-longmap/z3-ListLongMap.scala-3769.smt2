; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51628 () Bool)

(assert start!51628)

(declare-fun b!564597 () Bool)

(declare-fun e!325139 () Bool)

(declare-datatypes ((array!35447 0))(
  ( (array!35448 (arr!17020 (Array (_ BitVec 32) (_ BitVec 64))) (size!17384 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35447)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564597 (= e!325139 (and (bvsle #b00000000000000000000000000000000 (size!17384 a!3118)) (bvsgt j!142 (size!17384 a!3118))))))

(declare-fun b!564598 () Bool)

(declare-fun e!325140 () Bool)

(assert (=> b!564598 (= e!325140 e!325139)))

(declare-fun res!355906 () Bool)

(assert (=> b!564598 (=> (not res!355906) (not e!325139))))

(declare-datatypes ((SeekEntryResult!5476 0))(
  ( (MissingZero!5476 (index!24131 (_ BitVec 32))) (Found!5476 (index!24132 (_ BitVec 32))) (Intermediate!5476 (undefined!6288 Bool) (index!24133 (_ BitVec 32)) (x!53030 (_ BitVec 32))) (Undefined!5476) (MissingVacant!5476 (index!24134 (_ BitVec 32))) )
))
(declare-fun lt!257618 () SeekEntryResult!5476)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564598 (= res!355906 (or (= lt!257618 (MissingZero!5476 i!1132)) (= lt!257618 (MissingVacant!5476 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35447 (_ BitVec 32)) SeekEntryResult!5476)

(assert (=> b!564598 (= lt!257618 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564599 () Bool)

(declare-fun res!355907 () Bool)

(assert (=> b!564599 (=> (not res!355907) (not e!325140))))

(assert (=> b!564599 (= res!355907 (and (= (size!17384 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17384 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17384 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564600 () Bool)

(declare-fun res!355900 () Bool)

(assert (=> b!564600 (=> (not res!355900) (not e!325139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35447 (_ BitVec 32)) Bool)

(assert (=> b!564600 (= res!355900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564601 () Bool)

(declare-fun res!355903 () Bool)

(assert (=> b!564601 (=> (not res!355903) (not e!325139))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35447 (_ BitVec 32)) SeekEntryResult!5476)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564601 (= res!355903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17020 a!3118) j!142) mask!3119) (select (arr!17020 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17020 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17020 a!3118) i!1132 k0!1914) j!142) (array!35448 (store (arr!17020 a!3118) i!1132 k0!1914) (size!17384 a!3118)) mask!3119)))))

(declare-fun b!564602 () Bool)

(declare-fun res!355899 () Bool)

(assert (=> b!564602 (=> (not res!355899) (not e!325140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564602 (= res!355899 (validKeyInArray!0 k0!1914))))

(declare-fun b!564603 () Bool)

(declare-fun res!355904 () Bool)

(assert (=> b!564603 (=> (not res!355904) (not e!325140))))

(assert (=> b!564603 (= res!355904 (validKeyInArray!0 (select (arr!17020 a!3118) j!142)))))

(declare-fun res!355905 () Bool)

(assert (=> start!51628 (=> (not res!355905) (not e!325140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51628 (= res!355905 (validMask!0 mask!3119))))

(assert (=> start!51628 e!325140))

(assert (=> start!51628 true))

(declare-fun array_inv!12794 (array!35447) Bool)

(assert (=> start!51628 (array_inv!12794 a!3118)))

(declare-fun b!564604 () Bool)

(declare-fun res!355901 () Bool)

(assert (=> b!564604 (=> (not res!355901) (not e!325139))))

(declare-datatypes ((List!11153 0))(
  ( (Nil!11150) (Cons!11149 (h!12152 (_ BitVec 64)) (t!17389 List!11153)) )
))
(declare-fun arrayNoDuplicates!0 (array!35447 (_ BitVec 32) List!11153) Bool)

(assert (=> b!564604 (= res!355901 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11150))))

(declare-fun b!564605 () Bool)

(declare-fun res!355902 () Bool)

(assert (=> b!564605 (=> (not res!355902) (not e!325140))))

(declare-fun arrayContainsKey!0 (array!35447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564605 (= res!355902 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51628 res!355905) b!564599))

(assert (= (and b!564599 res!355907) b!564603))

(assert (= (and b!564603 res!355904) b!564602))

(assert (= (and b!564602 res!355899) b!564605))

(assert (= (and b!564605 res!355902) b!564598))

(assert (= (and b!564598 res!355906) b!564600))

(assert (= (and b!564600 res!355900) b!564604))

(assert (= (and b!564604 res!355901) b!564601))

(assert (= (and b!564601 res!355903) b!564597))

(declare-fun m!543103 () Bool)

(assert (=> b!564605 m!543103))

(declare-fun m!543105 () Bool)

(assert (=> start!51628 m!543105))

(declare-fun m!543107 () Bool)

(assert (=> start!51628 m!543107))

(declare-fun m!543109 () Bool)

(assert (=> b!564603 m!543109))

(assert (=> b!564603 m!543109))

(declare-fun m!543111 () Bool)

(assert (=> b!564603 m!543111))

(declare-fun m!543113 () Bool)

(assert (=> b!564604 m!543113))

(declare-fun m!543115 () Bool)

(assert (=> b!564598 m!543115))

(declare-fun m!543117 () Bool)

(assert (=> b!564602 m!543117))

(assert (=> b!564601 m!543109))

(declare-fun m!543119 () Bool)

(assert (=> b!564601 m!543119))

(assert (=> b!564601 m!543109))

(declare-fun m!543121 () Bool)

(assert (=> b!564601 m!543121))

(declare-fun m!543123 () Bool)

(assert (=> b!564601 m!543123))

(assert (=> b!564601 m!543121))

(declare-fun m!543125 () Bool)

(assert (=> b!564601 m!543125))

(assert (=> b!564601 m!543119))

(assert (=> b!564601 m!543109))

(declare-fun m!543127 () Bool)

(assert (=> b!564601 m!543127))

(declare-fun m!543129 () Bool)

(assert (=> b!564601 m!543129))

(assert (=> b!564601 m!543121))

(assert (=> b!564601 m!543123))

(declare-fun m!543131 () Bool)

(assert (=> b!564600 m!543131))

(check-sat (not b!564602) (not b!564600) (not b!564603) (not b!564605) (not b!564604) (not b!564601) (not b!564598) (not start!51628))
(check-sat)
