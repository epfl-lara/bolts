; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50072 () Bool)

(assert start!50072)

(declare-fun b!548275 () Bool)

(declare-fun res!341753 () Bool)

(declare-fun e!316765 () Bool)

(assert (=> b!548275 (=> (not res!341753) (not e!316765))))

(declare-datatypes ((array!34563 0))(
  ( (array!34564 (arr!16596 (Array (_ BitVec 32) (_ BitVec 64))) (size!16960 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34563)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34563 (_ BitVec 32)) Bool)

(assert (=> b!548275 (= res!341753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548276 () Bool)

(assert (=> b!548276 (= e!316765 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!249811 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548276 (= lt!249811 (toIndex!0 (select (arr!16596 a!3118) j!142) mask!3119))))

(declare-fun res!341751 () Bool)

(declare-fun e!316764 () Bool)

(assert (=> start!50072 (=> (not res!341751) (not e!316764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50072 (= res!341751 (validMask!0 mask!3119))))

(assert (=> start!50072 e!316764))

(assert (=> start!50072 true))

(declare-fun array_inv!12370 (array!34563) Bool)

(assert (=> start!50072 (array_inv!12370 a!3118)))

(declare-fun b!548277 () Bool)

(declare-fun res!341747 () Bool)

(assert (=> b!548277 (=> (not res!341747) (not e!316764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548277 (= res!341747 (validKeyInArray!0 (select (arr!16596 a!3118) j!142)))))

(declare-fun b!548278 () Bool)

(declare-fun res!341750 () Bool)

(assert (=> b!548278 (=> (not res!341750) (not e!316765))))

(declare-datatypes ((List!10729 0))(
  ( (Nil!10726) (Cons!10725 (h!11695 (_ BitVec 64)) (t!16965 List!10729)) )
))
(declare-fun arrayNoDuplicates!0 (array!34563 (_ BitVec 32) List!10729) Bool)

(assert (=> b!548278 (= res!341750 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10726))))

(declare-fun b!548279 () Bool)

(declare-fun res!341746 () Bool)

(assert (=> b!548279 (=> (not res!341746) (not e!316764))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548279 (= res!341746 (and (= (size!16960 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16960 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16960 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548280 () Bool)

(assert (=> b!548280 (= e!316764 e!316765)))

(declare-fun res!341748 () Bool)

(assert (=> b!548280 (=> (not res!341748) (not e!316765))))

(declare-datatypes ((SeekEntryResult!5052 0))(
  ( (MissingZero!5052 (index!22435 (_ BitVec 32))) (Found!5052 (index!22436 (_ BitVec 32))) (Intermediate!5052 (undefined!5864 Bool) (index!22437 (_ BitVec 32)) (x!51406 (_ BitVec 32))) (Undefined!5052) (MissingVacant!5052 (index!22438 (_ BitVec 32))) )
))
(declare-fun lt!249812 () SeekEntryResult!5052)

(assert (=> b!548280 (= res!341748 (or (= lt!249812 (MissingZero!5052 i!1132)) (= lt!249812 (MissingVacant!5052 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34563 (_ BitVec 32)) SeekEntryResult!5052)

(assert (=> b!548280 (= lt!249812 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548281 () Bool)

(declare-fun res!341749 () Bool)

(assert (=> b!548281 (=> (not res!341749) (not e!316764))))

(declare-fun arrayContainsKey!0 (array!34563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548281 (= res!341749 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548282 () Bool)

(declare-fun res!341752 () Bool)

(assert (=> b!548282 (=> (not res!341752) (not e!316764))))

(assert (=> b!548282 (= res!341752 (validKeyInArray!0 k!1914))))

(assert (= (and start!50072 res!341751) b!548279))

(assert (= (and b!548279 res!341746) b!548277))

(assert (= (and b!548277 res!341747) b!548282))

(assert (= (and b!548282 res!341752) b!548281))

(assert (= (and b!548281 res!341749) b!548280))

(assert (= (and b!548280 res!341748) b!548275))

(assert (= (and b!548275 res!341753) b!548278))

(assert (= (and b!548278 res!341750) b!548276))

(declare-fun m!525325 () Bool)

(assert (=> b!548275 m!525325))

(declare-fun m!525327 () Bool)

(assert (=> b!548281 m!525327))

(declare-fun m!525329 () Bool)

(assert (=> b!548276 m!525329))

(assert (=> b!548276 m!525329))

(declare-fun m!525331 () Bool)

(assert (=> b!548276 m!525331))

(declare-fun m!525333 () Bool)

(assert (=> b!548282 m!525333))

(declare-fun m!525335 () Bool)

(assert (=> b!548278 m!525335))

(assert (=> b!548277 m!525329))

(assert (=> b!548277 m!525329))

(declare-fun m!525337 () Bool)

(assert (=> b!548277 m!525337))

(declare-fun m!525339 () Bool)

(assert (=> b!548280 m!525339))

(declare-fun m!525341 () Bool)

(assert (=> start!50072 m!525341))

(declare-fun m!525343 () Bool)

(assert (=> start!50072 m!525343))

(push 1)

