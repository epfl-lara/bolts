; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50134 () Bool)

(assert start!50134)

(declare-fun b!548668 () Bool)

(declare-fun res!342049 () Bool)

(declare-fun e!316963 () Bool)

(assert (=> b!548668 (=> (not res!342049) (not e!316963))))

(declare-datatypes ((array!34586 0))(
  ( (array!34587 (arr!16606 (Array (_ BitVec 32) (_ BitVec 64))) (size!16970 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34586)

(declare-datatypes ((List!10739 0))(
  ( (Nil!10736) (Cons!10735 (h!11705 (_ BitVec 64)) (t!16975 List!10739)) )
))
(declare-fun arrayNoDuplicates!0 (array!34586 (_ BitVec 32) List!10739) Bool)

(assert (=> b!548668 (= res!342049 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10736))))

(declare-fun b!548669 () Bool)

(declare-fun res!342051 () Bool)

(declare-fun e!316961 () Bool)

(assert (=> b!548669 (=> (not res!342051) (not e!316961))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548669 (= res!342051 (validKeyInArray!0 (select (arr!16606 a!3118) j!142)))))

(declare-fun b!548670 () Bool)

(declare-fun res!342052 () Bool)

(assert (=> b!548670 (=> (not res!342052) (not e!316961))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!548670 (= res!342052 (validKeyInArray!0 k0!1914))))

(declare-fun b!548671 () Bool)

(declare-fun res!342055 () Bool)

(assert (=> b!548671 (=> (not res!342055) (not e!316961))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548671 (= res!342055 (and (= (size!16970 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16970 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16970 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548672 () Bool)

(assert (=> b!548672 (= e!316961 e!316963)))

(declare-fun res!342050 () Bool)

(assert (=> b!548672 (=> (not res!342050) (not e!316963))))

(declare-datatypes ((SeekEntryResult!5062 0))(
  ( (MissingZero!5062 (index!22475 (_ BitVec 32))) (Found!5062 (index!22476 (_ BitVec 32))) (Intermediate!5062 (undefined!5874 Bool) (index!22477 (_ BitVec 32)) (x!51440 (_ BitVec 32))) (Undefined!5062) (MissingVacant!5062 (index!22478 (_ BitVec 32))) )
))
(declare-fun lt!249907 () SeekEntryResult!5062)

(assert (=> b!548672 (= res!342050 (or (= lt!249907 (MissingZero!5062 i!1132)) (= lt!249907 (MissingVacant!5062 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34586 (_ BitVec 32)) SeekEntryResult!5062)

(assert (=> b!548672 (= lt!249907 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548673 () Bool)

(declare-fun res!342054 () Bool)

(assert (=> b!548673 (=> (not res!342054) (not e!316963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34586 (_ BitVec 32)) Bool)

(assert (=> b!548673 (= res!342054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548674 () Bool)

(declare-fun res!342053 () Bool)

(assert (=> b!548674 (=> (not res!342053) (not e!316961))))

(declare-fun arrayContainsKey!0 (array!34586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548674 (= res!342053 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548675 () Bool)

(assert (=> b!548675 (= e!316963 false)))

(declare-fun lt!249908 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548675 (= lt!249908 (toIndex!0 (select (store (arr!16606 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun res!342056 () Bool)

(assert (=> start!50134 (=> (not res!342056) (not e!316961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50134 (= res!342056 (validMask!0 mask!3119))))

(assert (=> start!50134 e!316961))

(assert (=> start!50134 true))

(declare-fun array_inv!12380 (array!34586) Bool)

(assert (=> start!50134 (array_inv!12380 a!3118)))

(assert (= (and start!50134 res!342056) b!548671))

(assert (= (and b!548671 res!342055) b!548669))

(assert (= (and b!548669 res!342051) b!548670))

(assert (= (and b!548670 res!342052) b!548674))

(assert (= (and b!548674 res!342053) b!548672))

(assert (= (and b!548672 res!342050) b!548673))

(assert (= (and b!548673 res!342054) b!548668))

(assert (= (and b!548668 res!342049) b!548675))

(declare-fun m!525613 () Bool)

(assert (=> b!548675 m!525613))

(declare-fun m!525615 () Bool)

(assert (=> b!548675 m!525615))

(assert (=> b!548675 m!525615))

(declare-fun m!525617 () Bool)

(assert (=> b!548675 m!525617))

(declare-fun m!525619 () Bool)

(assert (=> b!548670 m!525619))

(declare-fun m!525621 () Bool)

(assert (=> b!548668 m!525621))

(declare-fun m!525623 () Bool)

(assert (=> b!548674 m!525623))

(declare-fun m!525625 () Bool)

(assert (=> b!548669 m!525625))

(assert (=> b!548669 m!525625))

(declare-fun m!525627 () Bool)

(assert (=> b!548669 m!525627))

(declare-fun m!525629 () Bool)

(assert (=> start!50134 m!525629))

(declare-fun m!525631 () Bool)

(assert (=> start!50134 m!525631))

(declare-fun m!525633 () Bool)

(assert (=> b!548672 m!525633))

(declare-fun m!525635 () Bool)

(assert (=> b!548673 m!525635))

(check-sat (not b!548669) (not b!548670) (not b!548672) (not b!548673) (not b!548674) (not b!548668) (not b!548675) (not start!50134))
(check-sat)
