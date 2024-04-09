; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51736 () Bool)

(assert start!51736)

(declare-fun b!565568 () Bool)

(declare-fun res!356693 () Bool)

(declare-fun e!325582 () Bool)

(assert (=> b!565568 (=> (not res!356693) (not e!325582))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565568 (= res!356693 (validKeyInArray!0 k0!1914))))

(declare-fun b!565569 () Bool)

(declare-fun e!325584 () Bool)

(assert (=> b!565569 (= e!325584 (not true))))

(declare-fun e!325583 () Bool)

(assert (=> b!565569 e!325583))

(declare-fun res!356688 () Bool)

(assert (=> b!565569 (=> (not res!356688) (not e!325583))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35498 0))(
  ( (array!35499 (arr!17044 (Array (_ BitVec 32) (_ BitVec 64))) (size!17408 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35498)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35498 (_ BitVec 32)) Bool)

(assert (=> b!565569 (= res!356688 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17702 0))(
  ( (Unit!17703) )
))
(declare-fun lt!257915 () Unit!17702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17702)

(assert (=> b!565569 (= lt!257915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565570 () Bool)

(declare-fun res!356694 () Bool)

(assert (=> b!565570 (=> (not res!356694) (not e!325584))))

(assert (=> b!565570 (= res!356694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565571 () Bool)

(declare-fun res!356687 () Bool)

(assert (=> b!565571 (=> (not res!356687) (not e!325582))))

(declare-fun arrayContainsKey!0 (array!35498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565571 (= res!356687 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!356692 () Bool)

(assert (=> start!51736 (=> (not res!356692) (not e!325582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51736 (= res!356692 (validMask!0 mask!3119))))

(assert (=> start!51736 e!325582))

(assert (=> start!51736 true))

(declare-fun array_inv!12818 (array!35498) Bool)

(assert (=> start!51736 (array_inv!12818 a!3118)))

(declare-fun b!565572 () Bool)

(declare-fun res!356696 () Bool)

(assert (=> b!565572 (=> (not res!356696) (not e!325582))))

(assert (=> b!565572 (= res!356696 (validKeyInArray!0 (select (arr!17044 a!3118) j!142)))))

(declare-fun b!565573 () Bool)

(declare-fun res!356695 () Bool)

(assert (=> b!565573 (=> (not res!356695) (not e!325584))))

(declare-datatypes ((List!11177 0))(
  ( (Nil!11174) (Cons!11173 (h!12179 (_ BitVec 64)) (t!17413 List!11177)) )
))
(declare-fun arrayNoDuplicates!0 (array!35498 (_ BitVec 32) List!11177) Bool)

(assert (=> b!565573 (= res!356695 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11174))))

(declare-fun b!565574 () Bool)

(declare-fun res!356690 () Bool)

(assert (=> b!565574 (=> (not res!356690) (not e!325582))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565574 (= res!356690 (and (= (size!17408 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17408 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17408 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565575 () Bool)

(declare-fun res!356691 () Bool)

(assert (=> b!565575 (=> (not res!356691) (not e!325584))))

(declare-datatypes ((SeekEntryResult!5500 0))(
  ( (MissingZero!5500 (index!24227 (_ BitVec 32))) (Found!5500 (index!24228 (_ BitVec 32))) (Intermediate!5500 (undefined!6312 Bool) (index!24229 (_ BitVec 32)) (x!53124 (_ BitVec 32))) (Undefined!5500) (MissingVacant!5500 (index!24230 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35498 (_ BitVec 32)) SeekEntryResult!5500)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565575 (= res!356691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17044 a!3118) j!142) mask!3119) (select (arr!17044 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17044 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17044 a!3118) i!1132 k0!1914) j!142) (array!35499 (store (arr!17044 a!3118) i!1132 k0!1914) (size!17408 a!3118)) mask!3119)))))

(declare-fun b!565576 () Bool)

(assert (=> b!565576 (= e!325582 e!325584)))

(declare-fun res!356689 () Bool)

(assert (=> b!565576 (=> (not res!356689) (not e!325584))))

(declare-fun lt!257914 () SeekEntryResult!5500)

(assert (=> b!565576 (= res!356689 (or (= lt!257914 (MissingZero!5500 i!1132)) (= lt!257914 (MissingVacant!5500 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35498 (_ BitVec 32)) SeekEntryResult!5500)

(assert (=> b!565576 (= lt!257914 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565577 () Bool)

(assert (=> b!565577 (= e!325583 (= (seekEntryOrOpen!0 (select (arr!17044 a!3118) j!142) a!3118 mask!3119) (Found!5500 j!142)))))

(assert (= (and start!51736 res!356692) b!565574))

(assert (= (and b!565574 res!356690) b!565572))

(assert (= (and b!565572 res!356696) b!565568))

(assert (= (and b!565568 res!356693) b!565571))

(assert (= (and b!565571 res!356687) b!565576))

(assert (= (and b!565576 res!356689) b!565570))

(assert (= (and b!565570 res!356694) b!565573))

(assert (= (and b!565573 res!356695) b!565575))

(assert (= (and b!565575 res!356691) b!565569))

(assert (= (and b!565569 res!356688) b!565577))

(declare-fun m!544129 () Bool)

(assert (=> b!565570 m!544129))

(declare-fun m!544131 () Bool)

(assert (=> b!565573 m!544131))

(declare-fun m!544133 () Bool)

(assert (=> b!565575 m!544133))

(declare-fun m!544135 () Bool)

(assert (=> b!565575 m!544135))

(assert (=> b!565575 m!544133))

(declare-fun m!544137 () Bool)

(assert (=> b!565575 m!544137))

(declare-fun m!544139 () Bool)

(assert (=> b!565575 m!544139))

(assert (=> b!565575 m!544137))

(declare-fun m!544141 () Bool)

(assert (=> b!565575 m!544141))

(assert (=> b!565575 m!544135))

(assert (=> b!565575 m!544133))

(declare-fun m!544143 () Bool)

(assert (=> b!565575 m!544143))

(declare-fun m!544145 () Bool)

(assert (=> b!565575 m!544145))

(assert (=> b!565575 m!544137))

(assert (=> b!565575 m!544139))

(declare-fun m!544147 () Bool)

(assert (=> b!565568 m!544147))

(declare-fun m!544149 () Bool)

(assert (=> b!565576 m!544149))

(assert (=> b!565577 m!544133))

(assert (=> b!565577 m!544133))

(declare-fun m!544151 () Bool)

(assert (=> b!565577 m!544151))

(assert (=> b!565572 m!544133))

(assert (=> b!565572 m!544133))

(declare-fun m!544153 () Bool)

(assert (=> b!565572 m!544153))

(declare-fun m!544155 () Bool)

(assert (=> b!565569 m!544155))

(declare-fun m!544157 () Bool)

(assert (=> b!565569 m!544157))

(declare-fun m!544159 () Bool)

(assert (=> start!51736 m!544159))

(declare-fun m!544161 () Bool)

(assert (=> start!51736 m!544161))

(declare-fun m!544163 () Bool)

(assert (=> b!565571 m!544163))

(check-sat (not b!565575) (not start!51736) (not b!565568) (not b!565570) (not b!565569) (not b!565572) (not b!565573) (not b!565577) (not b!565576) (not b!565571))
(check-sat)
