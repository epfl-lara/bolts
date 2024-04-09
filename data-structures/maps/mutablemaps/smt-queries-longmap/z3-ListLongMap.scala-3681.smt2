; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50722 () Bool)

(assert start!50722)

(declare-fun b!554297 () Bool)

(declare-fun res!346868 () Bool)

(declare-fun e!319612 () Bool)

(assert (=> b!554297 (=> (not res!346868) (not e!319612))))

(declare-datatypes ((array!34901 0))(
  ( (array!34902 (arr!16756 (Array (_ BitVec 32) (_ BitVec 64))) (size!17120 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34901)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554297 (= res!346868 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554298 () Bool)

(declare-fun res!346862 () Bool)

(declare-fun e!319609 () Bool)

(assert (=> b!554298 (=> (not res!346862) (not e!319609))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34901 (_ BitVec 32)) Bool)

(assert (=> b!554298 (= res!346862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554299 () Bool)

(declare-fun res!346866 () Bool)

(assert (=> b!554299 (=> (not res!346866) (not e!319612))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554299 (= res!346866 (and (= (size!17120 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17120 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17120 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554300 () Bool)

(assert (=> b!554300 (= e!319609 (not true))))

(declare-fun e!319611 () Bool)

(assert (=> b!554300 e!319611))

(declare-fun res!346863 () Bool)

(assert (=> b!554300 (=> (not res!346863) (not e!319611))))

(assert (=> b!554300 (= res!346863 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17198 0))(
  ( (Unit!17199) )
))
(declare-fun lt!251764 () Unit!17198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34901 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17198)

(assert (=> b!554300 (= lt!251764 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554301 () Bool)

(assert (=> b!554301 (= e!319612 e!319609)))

(declare-fun res!346865 () Bool)

(assert (=> b!554301 (=> (not res!346865) (not e!319609))))

(declare-datatypes ((SeekEntryResult!5212 0))(
  ( (MissingZero!5212 (index!23075 (_ BitVec 32))) (Found!5212 (index!23076 (_ BitVec 32))) (Intermediate!5212 (undefined!6024 Bool) (index!23077 (_ BitVec 32)) (x!52017 (_ BitVec 32))) (Undefined!5212) (MissingVacant!5212 (index!23078 (_ BitVec 32))) )
))
(declare-fun lt!251765 () SeekEntryResult!5212)

(assert (=> b!554301 (= res!346865 (or (= lt!251765 (MissingZero!5212 i!1132)) (= lt!251765 (MissingVacant!5212 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34901 (_ BitVec 32)) SeekEntryResult!5212)

(assert (=> b!554301 (= lt!251765 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554302 () Bool)

(declare-fun res!346859 () Bool)

(assert (=> b!554302 (=> (not res!346859) (not e!319612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554302 (= res!346859 (validKeyInArray!0 (select (arr!16756 a!3118) j!142)))))

(declare-fun b!554303 () Bool)

(assert (=> b!554303 (= e!319611 (= (seekEntryOrOpen!0 (select (arr!16756 a!3118) j!142) a!3118 mask!3119) (Found!5212 j!142)))))

(declare-fun res!346860 () Bool)

(assert (=> start!50722 (=> (not res!346860) (not e!319612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50722 (= res!346860 (validMask!0 mask!3119))))

(assert (=> start!50722 e!319612))

(assert (=> start!50722 true))

(declare-fun array_inv!12530 (array!34901) Bool)

(assert (=> start!50722 (array_inv!12530 a!3118)))

(declare-fun b!554304 () Bool)

(declare-fun res!346867 () Bool)

(assert (=> b!554304 (=> (not res!346867) (not e!319612))))

(assert (=> b!554304 (= res!346867 (validKeyInArray!0 k0!1914))))

(declare-fun b!554305 () Bool)

(declare-fun res!346861 () Bool)

(assert (=> b!554305 (=> (not res!346861) (not e!319609))))

(declare-datatypes ((List!10889 0))(
  ( (Nil!10886) (Cons!10885 (h!11870 (_ BitVec 64)) (t!17125 List!10889)) )
))
(declare-fun arrayNoDuplicates!0 (array!34901 (_ BitVec 32) List!10889) Bool)

(assert (=> b!554305 (= res!346861 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10886))))

(declare-fun b!554306 () Bool)

(declare-fun res!346864 () Bool)

(assert (=> b!554306 (=> (not res!346864) (not e!319609))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34901 (_ BitVec 32)) SeekEntryResult!5212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554306 (= res!346864 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16756 a!3118) j!142) mask!3119) (select (arr!16756 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16756 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16756 a!3118) i!1132 k0!1914) j!142) (array!34902 (store (arr!16756 a!3118) i!1132 k0!1914) (size!17120 a!3118)) mask!3119)))))

(assert (= (and start!50722 res!346860) b!554299))

(assert (= (and b!554299 res!346866) b!554302))

(assert (= (and b!554302 res!346859) b!554304))

(assert (= (and b!554304 res!346867) b!554297))

(assert (= (and b!554297 res!346868) b!554301))

(assert (= (and b!554301 res!346865) b!554298))

(assert (= (and b!554298 res!346862) b!554305))

(assert (= (and b!554305 res!346861) b!554306))

(assert (= (and b!554306 res!346864) b!554300))

(assert (= (and b!554300 res!346863) b!554303))

(declare-fun m!531643 () Bool)

(assert (=> b!554300 m!531643))

(declare-fun m!531645 () Bool)

(assert (=> b!554300 m!531645))

(declare-fun m!531647 () Bool)

(assert (=> b!554302 m!531647))

(assert (=> b!554302 m!531647))

(declare-fun m!531649 () Bool)

(assert (=> b!554302 m!531649))

(assert (=> b!554303 m!531647))

(assert (=> b!554303 m!531647))

(declare-fun m!531651 () Bool)

(assert (=> b!554303 m!531651))

(declare-fun m!531653 () Bool)

(assert (=> b!554305 m!531653))

(assert (=> b!554306 m!531647))

(declare-fun m!531655 () Bool)

(assert (=> b!554306 m!531655))

(assert (=> b!554306 m!531647))

(declare-fun m!531657 () Bool)

(assert (=> b!554306 m!531657))

(declare-fun m!531659 () Bool)

(assert (=> b!554306 m!531659))

(assert (=> b!554306 m!531657))

(declare-fun m!531661 () Bool)

(assert (=> b!554306 m!531661))

(assert (=> b!554306 m!531655))

(assert (=> b!554306 m!531647))

(declare-fun m!531663 () Bool)

(assert (=> b!554306 m!531663))

(declare-fun m!531665 () Bool)

(assert (=> b!554306 m!531665))

(assert (=> b!554306 m!531657))

(assert (=> b!554306 m!531659))

(declare-fun m!531667 () Bool)

(assert (=> b!554297 m!531667))

(declare-fun m!531669 () Bool)

(assert (=> start!50722 m!531669))

(declare-fun m!531671 () Bool)

(assert (=> start!50722 m!531671))

(declare-fun m!531673 () Bool)

(assert (=> b!554301 m!531673))

(declare-fun m!531675 () Bool)

(assert (=> b!554298 m!531675))

(declare-fun m!531677 () Bool)

(assert (=> b!554304 m!531677))

(check-sat (not b!554297) (not start!50722) (not b!554303) (not b!554302) (not b!554300) (not b!554305) (not b!554298) (not b!554304) (not b!554306) (not b!554301))
(check-sat)
