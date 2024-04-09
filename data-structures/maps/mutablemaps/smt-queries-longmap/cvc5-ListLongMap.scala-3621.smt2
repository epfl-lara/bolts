; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49940 () Bool)

(assert start!49940)

(declare-fun b!547465 () Bool)

(declare-fun res!341114 () Bool)

(declare-fun e!316358 () Bool)

(assert (=> b!547465 (=> (not res!341114) (not e!316358))))

(declare-datatypes ((array!34515 0))(
  ( (array!34516 (arr!16575 (Array (_ BitVec 32) (_ BitVec 64))) (size!16939 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34515)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547465 (= res!341114 (validKeyInArray!0 (select (arr!16575 a!3118) j!142)))))

(declare-fun b!547466 () Bool)

(declare-fun e!316359 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!547466 (= e!316359 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!547467 () Bool)

(declare-fun res!341119 () Bool)

(assert (=> b!547467 (=> (not res!341119) (not e!316358))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547467 (= res!341119 (and (= (size!16939 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16939 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16939 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547468 () Bool)

(declare-fun res!341120 () Bool)

(assert (=> b!547468 (=> (not res!341120) (not e!316359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34515 (_ BitVec 32)) Bool)

(assert (=> b!547468 (= res!341120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547469 () Bool)

(declare-fun res!341116 () Bool)

(assert (=> b!547469 (=> (not res!341116) (not e!316358))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!547469 (= res!341116 (validKeyInArray!0 k!1914))))

(declare-fun b!547470 () Bool)

(declare-fun res!341115 () Bool)

(assert (=> b!547470 (=> (not res!341115) (not e!316358))))

(declare-fun arrayContainsKey!0 (array!34515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547470 (= res!341115 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!341113 () Bool)

(assert (=> start!49940 (=> (not res!341113) (not e!316358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49940 (= res!341113 (validMask!0 mask!3119))))

(assert (=> start!49940 e!316358))

(assert (=> start!49940 true))

(declare-fun array_inv!12349 (array!34515) Bool)

(assert (=> start!49940 (array_inv!12349 a!3118)))

(declare-fun b!547471 () Bool)

(declare-fun res!341117 () Bool)

(assert (=> b!547471 (=> (not res!341117) (not e!316359))))

(declare-datatypes ((List!10708 0))(
  ( (Nil!10705) (Cons!10704 (h!11671 (_ BitVec 64)) (t!16944 List!10708)) )
))
(declare-fun arrayNoDuplicates!0 (array!34515 (_ BitVec 32) List!10708) Bool)

(assert (=> b!547471 (= res!341117 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10705))))

(declare-fun b!547472 () Bool)

(assert (=> b!547472 (= e!316358 e!316359)))

(declare-fun res!341118 () Bool)

(assert (=> b!547472 (=> (not res!341118) (not e!316359))))

(declare-datatypes ((SeekEntryResult!5031 0))(
  ( (MissingZero!5031 (index!22351 (_ BitVec 32))) (Found!5031 (index!22352 (_ BitVec 32))) (Intermediate!5031 (undefined!5843 Bool) (index!22353 (_ BitVec 32)) (x!51326 (_ BitVec 32))) (Undefined!5031) (MissingVacant!5031 (index!22354 (_ BitVec 32))) )
))
(declare-fun lt!249575 () SeekEntryResult!5031)

(assert (=> b!547472 (= res!341118 (or (= lt!249575 (MissingZero!5031 i!1132)) (= lt!249575 (MissingVacant!5031 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34515 (_ BitVec 32)) SeekEntryResult!5031)

(assert (=> b!547472 (= lt!249575 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!49940 res!341113) b!547467))

(assert (= (and b!547467 res!341119) b!547465))

(assert (= (and b!547465 res!341114) b!547469))

(assert (= (and b!547469 res!341116) b!547470))

(assert (= (and b!547470 res!341115) b!547472))

(assert (= (and b!547472 res!341118) b!547468))

(assert (= (and b!547468 res!341120) b!547471))

(assert (= (and b!547471 res!341117) b!547466))

(declare-fun m!524725 () Bool)

(assert (=> b!547470 m!524725))

(declare-fun m!524727 () Bool)

(assert (=> start!49940 m!524727))

(declare-fun m!524729 () Bool)

(assert (=> start!49940 m!524729))

(declare-fun m!524731 () Bool)

(assert (=> b!547465 m!524731))

(assert (=> b!547465 m!524731))

(declare-fun m!524733 () Bool)

(assert (=> b!547465 m!524733))

(declare-fun m!524735 () Bool)

(assert (=> b!547472 m!524735))

(declare-fun m!524737 () Bool)

(assert (=> b!547471 m!524737))

(declare-fun m!524739 () Bool)

(assert (=> b!547469 m!524739))

(declare-fun m!524741 () Bool)

(assert (=> b!547468 m!524741))

(push 1)

