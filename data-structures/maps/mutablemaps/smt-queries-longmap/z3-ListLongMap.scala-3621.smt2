; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49942 () Bool)

(assert start!49942)

(declare-fun b!547489 () Bool)

(declare-fun res!341140 () Bool)

(declare-fun e!316369 () Bool)

(assert (=> b!547489 (=> (not res!341140) (not e!316369))))

(declare-datatypes ((array!34517 0))(
  ( (array!34518 (arr!16576 (Array (_ BitVec 32) (_ BitVec 64))) (size!16940 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34517)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547489 (= res!341140 (validKeyInArray!0 (select (arr!16576 a!3118) j!142)))))

(declare-fun b!547490 () Bool)

(declare-fun res!341144 () Bool)

(declare-fun e!316368 () Bool)

(assert (=> b!547490 (=> (not res!341144) (not e!316368))))

(declare-datatypes ((List!10709 0))(
  ( (Nil!10706) (Cons!10705 (h!11672 (_ BitVec 64)) (t!16945 List!10709)) )
))
(declare-fun arrayNoDuplicates!0 (array!34517 (_ BitVec 32) List!10709) Bool)

(assert (=> b!547490 (= res!341144 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10706))))

(declare-fun b!547491 () Bool)

(assert (=> b!547491 (= e!316369 e!316368)))

(declare-fun res!341137 () Bool)

(assert (=> b!547491 (=> (not res!341137) (not e!316368))))

(declare-datatypes ((SeekEntryResult!5032 0))(
  ( (MissingZero!5032 (index!22355 (_ BitVec 32))) (Found!5032 (index!22356 (_ BitVec 32))) (Intermediate!5032 (undefined!5844 Bool) (index!22357 (_ BitVec 32)) (x!51327 (_ BitVec 32))) (Undefined!5032) (MissingVacant!5032 (index!22358 (_ BitVec 32))) )
))
(declare-fun lt!249578 () SeekEntryResult!5032)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547491 (= res!341137 (or (= lt!249578 (MissingZero!5032 i!1132)) (= lt!249578 (MissingVacant!5032 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34517 (_ BitVec 32)) SeekEntryResult!5032)

(assert (=> b!547491 (= lt!249578 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!547492 () Bool)

(assert (=> b!547492 (= e!316368 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!547493 () Bool)

(declare-fun res!341139 () Bool)

(assert (=> b!547493 (=> (not res!341139) (not e!316369))))

(assert (=> b!547493 (= res!341139 (validKeyInArray!0 k0!1914))))

(declare-fun b!547495 () Bool)

(declare-fun res!341142 () Bool)

(assert (=> b!547495 (=> (not res!341142) (not e!316369))))

(declare-fun arrayContainsKey!0 (array!34517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547495 (= res!341142 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547496 () Bool)

(declare-fun res!341143 () Bool)

(assert (=> b!547496 (=> (not res!341143) (not e!316369))))

(assert (=> b!547496 (= res!341143 (and (= (size!16940 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16940 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16940 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341141 () Bool)

(assert (=> start!49942 (=> (not res!341141) (not e!316369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49942 (= res!341141 (validMask!0 mask!3119))))

(assert (=> start!49942 e!316369))

(assert (=> start!49942 true))

(declare-fun array_inv!12350 (array!34517) Bool)

(assert (=> start!49942 (array_inv!12350 a!3118)))

(declare-fun b!547494 () Bool)

(declare-fun res!341138 () Bool)

(assert (=> b!547494 (=> (not res!341138) (not e!316368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34517 (_ BitVec 32)) Bool)

(assert (=> b!547494 (= res!341138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!49942 res!341141) b!547496))

(assert (= (and b!547496 res!341143) b!547489))

(assert (= (and b!547489 res!341140) b!547493))

(assert (= (and b!547493 res!341139) b!547495))

(assert (= (and b!547495 res!341142) b!547491))

(assert (= (and b!547491 res!341137) b!547494))

(assert (= (and b!547494 res!341138) b!547490))

(assert (= (and b!547490 res!341144) b!547492))

(declare-fun m!524743 () Bool)

(assert (=> b!547491 m!524743))

(declare-fun m!524745 () Bool)

(assert (=> b!547495 m!524745))

(declare-fun m!524747 () Bool)

(assert (=> b!547493 m!524747))

(declare-fun m!524749 () Bool)

(assert (=> b!547494 m!524749))

(declare-fun m!524751 () Bool)

(assert (=> b!547490 m!524751))

(declare-fun m!524753 () Bool)

(assert (=> b!547489 m!524753))

(assert (=> b!547489 m!524753))

(declare-fun m!524755 () Bool)

(assert (=> b!547489 m!524755))

(declare-fun m!524757 () Bool)

(assert (=> start!49942 m!524757))

(declare-fun m!524759 () Bool)

(assert (=> start!49942 m!524759))

(check-sat (not b!547493) (not b!547489) (not b!547491) (not b!547490) (not start!49942) (not b!547495) (not b!547494))
(check-sat)
