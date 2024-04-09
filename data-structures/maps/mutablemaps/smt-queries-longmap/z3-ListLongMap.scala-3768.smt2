; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51622 () Bool)

(assert start!51622)

(declare-fun res!355824 () Bool)

(declare-fun e!325112 () Bool)

(assert (=> start!51622 (=> (not res!355824) (not e!325112))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51622 (= res!355824 (validMask!0 mask!3119))))

(assert (=> start!51622 e!325112))

(assert (=> start!51622 true))

(declare-datatypes ((array!35441 0))(
  ( (array!35442 (arr!17017 (Array (_ BitVec 32) (_ BitVec 64))) (size!17381 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35441)

(declare-fun array_inv!12791 (array!35441) Bool)

(assert (=> start!51622 (array_inv!12791 a!3118)))

(declare-fun b!564516 () Bool)

(declare-fun res!355820 () Bool)

(assert (=> b!564516 (=> (not res!355820) (not e!325112))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564516 (= res!355820 (and (= (size!17381 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17381 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17381 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564517 () Bool)

(declare-fun res!355822 () Bool)

(declare-fun e!325113 () Bool)

(assert (=> b!564517 (=> (not res!355822) (not e!325113))))

(declare-datatypes ((List!11150 0))(
  ( (Nil!11147) (Cons!11146 (h!12149 (_ BitVec 64)) (t!17386 List!11150)) )
))
(declare-fun arrayNoDuplicates!0 (array!35441 (_ BitVec 32) List!11150) Bool)

(assert (=> b!564517 (= res!355822 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11147))))

(declare-fun b!564518 () Bool)

(declare-fun res!355818 () Bool)

(assert (=> b!564518 (=> (not res!355818) (not e!325113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35441 (_ BitVec 32)) Bool)

(assert (=> b!564518 (= res!355818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564519 () Bool)

(assert (=> b!564519 (= e!325113 (bvsgt #b00000000000000000000000000000000 (size!17381 a!3118)))))

(declare-fun b!564520 () Bool)

(assert (=> b!564520 (= e!325112 e!325113)))

(declare-fun res!355819 () Bool)

(assert (=> b!564520 (=> (not res!355819) (not e!325113))))

(declare-datatypes ((SeekEntryResult!5473 0))(
  ( (MissingZero!5473 (index!24119 (_ BitVec 32))) (Found!5473 (index!24120 (_ BitVec 32))) (Intermediate!5473 (undefined!6285 Bool) (index!24121 (_ BitVec 32)) (x!53019 (_ BitVec 32))) (Undefined!5473) (MissingVacant!5473 (index!24122 (_ BitVec 32))) )
))
(declare-fun lt!257609 () SeekEntryResult!5473)

(assert (=> b!564520 (= res!355819 (or (= lt!257609 (MissingZero!5473 i!1132)) (= lt!257609 (MissingVacant!5473 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35441 (_ BitVec 32)) SeekEntryResult!5473)

(assert (=> b!564520 (= lt!257609 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564521 () Bool)

(declare-fun res!355825 () Bool)

(assert (=> b!564521 (=> (not res!355825) (not e!325112))))

(declare-fun arrayContainsKey!0 (array!35441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564521 (= res!355825 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564522 () Bool)

(declare-fun res!355826 () Bool)

(assert (=> b!564522 (=> (not res!355826) (not e!325112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564522 (= res!355826 (validKeyInArray!0 (select (arr!17017 a!3118) j!142)))))

(declare-fun b!564523 () Bool)

(declare-fun res!355821 () Bool)

(assert (=> b!564523 (=> (not res!355821) (not e!325112))))

(assert (=> b!564523 (= res!355821 (validKeyInArray!0 k0!1914))))

(declare-fun b!564524 () Bool)

(declare-fun res!355823 () Bool)

(assert (=> b!564524 (=> (not res!355823) (not e!325113))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35441 (_ BitVec 32)) SeekEntryResult!5473)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564524 (= res!355823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17017 a!3118) j!142) mask!3119) (select (arr!17017 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17017 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17017 a!3118) i!1132 k0!1914) j!142) (array!35442 (store (arr!17017 a!3118) i!1132 k0!1914) (size!17381 a!3118)) mask!3119)))))

(assert (= (and start!51622 res!355824) b!564516))

(assert (= (and b!564516 res!355820) b!564522))

(assert (= (and b!564522 res!355826) b!564523))

(assert (= (and b!564523 res!355821) b!564521))

(assert (= (and b!564521 res!355825) b!564520))

(assert (= (and b!564520 res!355819) b!564518))

(assert (= (and b!564518 res!355818) b!564517))

(assert (= (and b!564517 res!355822) b!564524))

(assert (= (and b!564524 res!355823) b!564519))

(declare-fun m!543013 () Bool)

(assert (=> b!564521 m!543013))

(declare-fun m!543015 () Bool)

(assert (=> b!564523 m!543015))

(declare-fun m!543017 () Bool)

(assert (=> b!564517 m!543017))

(declare-fun m!543019 () Bool)

(assert (=> b!564522 m!543019))

(assert (=> b!564522 m!543019))

(declare-fun m!543021 () Bool)

(assert (=> b!564522 m!543021))

(declare-fun m!543023 () Bool)

(assert (=> start!51622 m!543023))

(declare-fun m!543025 () Bool)

(assert (=> start!51622 m!543025))

(declare-fun m!543027 () Bool)

(assert (=> b!564520 m!543027))

(declare-fun m!543029 () Bool)

(assert (=> b!564518 m!543029))

(assert (=> b!564524 m!543019))

(declare-fun m!543031 () Bool)

(assert (=> b!564524 m!543031))

(assert (=> b!564524 m!543019))

(declare-fun m!543033 () Bool)

(assert (=> b!564524 m!543033))

(declare-fun m!543035 () Bool)

(assert (=> b!564524 m!543035))

(assert (=> b!564524 m!543033))

(declare-fun m!543037 () Bool)

(assert (=> b!564524 m!543037))

(assert (=> b!564524 m!543031))

(assert (=> b!564524 m!543019))

(declare-fun m!543039 () Bool)

(assert (=> b!564524 m!543039))

(declare-fun m!543041 () Bool)

(assert (=> b!564524 m!543041))

(assert (=> b!564524 m!543033))

(assert (=> b!564524 m!543035))

(check-sat (not start!51622) (not b!564521) (not b!564524) (not b!564523) (not b!564517) (not b!564518) (not b!564522) (not b!564520))
(check-sat)
