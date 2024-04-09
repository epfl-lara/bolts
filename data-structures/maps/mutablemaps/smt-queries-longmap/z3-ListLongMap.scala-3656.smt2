; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50512 () Bool)

(assert start!50512)

(declare-fun res!344483 () Bool)

(declare-fun e!318416 () Bool)

(assert (=> start!50512 (=> (not res!344483) (not e!318416))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50512 (= res!344483 (validMask!0 mask!3119))))

(assert (=> start!50512 e!318416))

(assert (=> start!50512 true))

(declare-datatypes ((array!34748 0))(
  ( (array!34749 (arr!16681 (Array (_ BitVec 32) (_ BitVec 64))) (size!17045 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34748)

(declare-fun array_inv!12455 (array!34748) Bool)

(assert (=> start!50512 (array_inv!12455 a!3118)))

(declare-fun b!551729 () Bool)

(declare-fun res!344482 () Bool)

(declare-fun e!318417 () Bool)

(assert (=> b!551729 (=> (not res!344482) (not e!318417))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5137 0))(
  ( (MissingZero!5137 (index!22775 (_ BitVec 32))) (Found!5137 (index!22776 (_ BitVec 32))) (Intermediate!5137 (undefined!5949 Bool) (index!22777 (_ BitVec 32)) (x!51736 (_ BitVec 32))) (Undefined!5137) (MissingVacant!5137 (index!22778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34748 (_ BitVec 32)) SeekEntryResult!5137)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551729 (= res!344482 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16681 a!3118) j!142) mask!3119) (select (arr!16681 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16681 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16681 a!3118) i!1132 k0!1914) j!142) (array!34749 (store (arr!16681 a!3118) i!1132 k0!1914) (size!17045 a!3118)) mask!3119)))))

(declare-fun b!551730 () Bool)

(declare-fun res!344475 () Bool)

(assert (=> b!551730 (=> (not res!344475) (not e!318416))))

(declare-fun arrayContainsKey!0 (array!34748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551730 (= res!344475 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551731 () Bool)

(declare-fun res!344476 () Bool)

(assert (=> b!551731 (=> (not res!344476) (not e!318417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34748 (_ BitVec 32)) Bool)

(assert (=> b!551731 (= res!344476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551732 () Bool)

(assert (=> b!551732 (= e!318417 (not true))))

(declare-fun e!318418 () Bool)

(assert (=> b!551732 e!318418))

(declare-fun res!344480 () Bool)

(assert (=> b!551732 (=> (not res!344480) (not e!318418))))

(assert (=> b!551732 (= res!344480 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17048 0))(
  ( (Unit!17049) )
))
(declare-fun lt!250961 () Unit!17048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34748 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17048)

(assert (=> b!551732 (= lt!250961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551733 () Bool)

(declare-fun res!344478 () Bool)

(assert (=> b!551733 (=> (not res!344478) (not e!318417))))

(declare-datatypes ((List!10814 0))(
  ( (Nil!10811) (Cons!10810 (h!11792 (_ BitVec 64)) (t!17050 List!10814)) )
))
(declare-fun arrayNoDuplicates!0 (array!34748 (_ BitVec 32) List!10814) Bool)

(assert (=> b!551733 (= res!344478 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10811))))

(declare-fun b!551734 () Bool)

(assert (=> b!551734 (= e!318416 e!318417)))

(declare-fun res!344479 () Bool)

(assert (=> b!551734 (=> (not res!344479) (not e!318417))))

(declare-fun lt!250960 () SeekEntryResult!5137)

(assert (=> b!551734 (= res!344479 (or (= lt!250960 (MissingZero!5137 i!1132)) (= lt!250960 (MissingVacant!5137 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34748 (_ BitVec 32)) SeekEntryResult!5137)

(assert (=> b!551734 (= lt!250960 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!551735 () Bool)

(declare-fun res!344477 () Bool)

(assert (=> b!551735 (=> (not res!344477) (not e!318416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551735 (= res!344477 (validKeyInArray!0 k0!1914))))

(declare-fun b!551736 () Bool)

(assert (=> b!551736 (= e!318418 (= (seekEntryOrOpen!0 (select (arr!16681 a!3118) j!142) a!3118 mask!3119) (Found!5137 j!142)))))

(declare-fun b!551737 () Bool)

(declare-fun res!344481 () Bool)

(assert (=> b!551737 (=> (not res!344481) (not e!318416))))

(assert (=> b!551737 (= res!344481 (and (= (size!17045 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17045 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17045 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551738 () Bool)

(declare-fun res!344474 () Bool)

(assert (=> b!551738 (=> (not res!344474) (not e!318416))))

(assert (=> b!551738 (= res!344474 (validKeyInArray!0 (select (arr!16681 a!3118) j!142)))))

(assert (= (and start!50512 res!344483) b!551737))

(assert (= (and b!551737 res!344481) b!551738))

(assert (= (and b!551738 res!344474) b!551735))

(assert (= (and b!551735 res!344477) b!551730))

(assert (= (and b!551730 res!344475) b!551734))

(assert (= (and b!551734 res!344479) b!551731))

(assert (= (and b!551731 res!344476) b!551733))

(assert (= (and b!551733 res!344478) b!551729))

(assert (= (and b!551729 res!344482) b!551732))

(assert (= (and b!551732 res!344480) b!551736))

(declare-fun m!528697 () Bool)

(assert (=> b!551735 m!528697))

(declare-fun m!528699 () Bool)

(assert (=> b!551734 m!528699))

(declare-fun m!528701 () Bool)

(assert (=> b!551731 m!528701))

(declare-fun m!528703 () Bool)

(assert (=> b!551738 m!528703))

(assert (=> b!551738 m!528703))

(declare-fun m!528705 () Bool)

(assert (=> b!551738 m!528705))

(declare-fun m!528707 () Bool)

(assert (=> b!551733 m!528707))

(declare-fun m!528709 () Bool)

(assert (=> start!50512 m!528709))

(declare-fun m!528711 () Bool)

(assert (=> start!50512 m!528711))

(declare-fun m!528713 () Bool)

(assert (=> b!551730 m!528713))

(assert (=> b!551729 m!528703))

(declare-fun m!528715 () Bool)

(assert (=> b!551729 m!528715))

(assert (=> b!551729 m!528703))

(declare-fun m!528717 () Bool)

(assert (=> b!551729 m!528717))

(declare-fun m!528719 () Bool)

(assert (=> b!551729 m!528719))

(assert (=> b!551729 m!528717))

(declare-fun m!528721 () Bool)

(assert (=> b!551729 m!528721))

(assert (=> b!551729 m!528715))

(assert (=> b!551729 m!528703))

(declare-fun m!528723 () Bool)

(assert (=> b!551729 m!528723))

(declare-fun m!528725 () Bool)

(assert (=> b!551729 m!528725))

(assert (=> b!551729 m!528717))

(assert (=> b!551729 m!528719))

(assert (=> b!551736 m!528703))

(assert (=> b!551736 m!528703))

(declare-fun m!528727 () Bool)

(assert (=> b!551736 m!528727))

(declare-fun m!528729 () Bool)

(assert (=> b!551732 m!528729))

(declare-fun m!528731 () Bool)

(assert (=> b!551732 m!528731))

(check-sat (not b!551735) (not b!551736) (not b!551734) (not start!50512) (not b!551731) (not b!551730) (not b!551738) (not b!551732) (not b!551729) (not b!551733))
(check-sat)
