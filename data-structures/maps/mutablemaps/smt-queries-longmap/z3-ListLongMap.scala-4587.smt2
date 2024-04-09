; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64056 () Bool)

(assert start!64056)

(declare-fun b!719015 () Bool)

(declare-fun res!481554 () Bool)

(declare-fun e!403558 () Bool)

(assert (=> b!719015 (=> (not res!481554) (not e!403558))))

(declare-datatypes ((array!40704 0))(
  ( (array!40705 (arr!19474 (Array (_ BitVec 32) (_ BitVec 64))) (size!19895 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40704)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40704 (_ BitVec 32)) Bool)

(assert (=> b!719015 (= res!481554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719016 () Bool)

(declare-fun res!481552 () Bool)

(assert (=> b!719016 (=> (not res!481552) (not e!403558))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7081 0))(
  ( (MissingZero!7081 (index!30691 (_ BitVec 32))) (Found!7081 (index!30692 (_ BitVec 32))) (Intermediate!7081 (undefined!7893 Bool) (index!30693 (_ BitVec 32)) (x!61729 (_ BitVec 32))) (Undefined!7081) (MissingVacant!7081 (index!30694 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40704 (_ BitVec 32)) SeekEntryResult!7081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719016 (= res!481552 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19474 a!3186) j!159) mask!3328) (select (arr!19474 a!3186) j!159) a!3186 mask!3328) (Intermediate!7081 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719017 () Bool)

(declare-fun res!481553 () Bool)

(assert (=> b!719017 (=> (not res!481553) (not e!403558))))

(declare-datatypes ((List!13529 0))(
  ( (Nil!13526) (Cons!13525 (h!14573 (_ BitVec 64)) (t!19852 List!13529)) )
))
(declare-fun arrayNoDuplicates!0 (array!40704 (_ BitVec 32) List!13529) Bool)

(assert (=> b!719017 (= res!481553 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13526))))

(declare-fun b!719018 () Bool)

(declare-fun res!481557 () Bool)

(declare-fun e!403560 () Bool)

(assert (=> b!719018 (=> (not res!481557) (not e!403560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719018 (= res!481557 (validKeyInArray!0 (select (arr!19474 a!3186) j!159)))))

(declare-fun b!719019 () Bool)

(assert (=> b!719019 (= e!403560 e!403558)))

(declare-fun res!481550 () Bool)

(assert (=> b!719019 (=> (not res!481550) (not e!403558))))

(declare-fun lt!319502 () SeekEntryResult!7081)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719019 (= res!481550 (or (= lt!319502 (MissingZero!7081 i!1173)) (= lt!319502 (MissingVacant!7081 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40704 (_ BitVec 32)) SeekEntryResult!7081)

(assert (=> b!719019 (= lt!319502 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719020 () Bool)

(declare-fun res!481548 () Bool)

(assert (=> b!719020 (=> (not res!481548) (not e!403558))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!719020 (= res!481548 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19895 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19895 a!3186))))))

(declare-fun res!481551 () Bool)

(assert (=> start!64056 (=> (not res!481551) (not e!403560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64056 (= res!481551 (validMask!0 mask!3328))))

(assert (=> start!64056 e!403560))

(assert (=> start!64056 true))

(declare-fun array_inv!15248 (array!40704) Bool)

(assert (=> start!64056 (array_inv!15248 a!3186)))

(declare-fun b!719021 () Bool)

(declare-fun res!481549 () Bool)

(assert (=> b!719021 (=> (not res!481549) (not e!403560))))

(assert (=> b!719021 (= res!481549 (and (= (size!19895 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19895 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19895 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719022 () Bool)

(declare-fun res!481556 () Bool)

(assert (=> b!719022 (=> (not res!481556) (not e!403560))))

(assert (=> b!719022 (= res!481556 (validKeyInArray!0 k0!2102))))

(declare-fun b!719023 () Bool)

(declare-fun res!481555 () Bool)

(assert (=> b!719023 (=> (not res!481555) (not e!403560))))

(declare-fun arrayContainsKey!0 (array!40704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719023 (= res!481555 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719024 () Bool)

(assert (=> b!719024 (= e!403558 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19474 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (= (and start!64056 res!481551) b!719021))

(assert (= (and b!719021 res!481549) b!719018))

(assert (= (and b!719018 res!481557) b!719022))

(assert (= (and b!719022 res!481556) b!719023))

(assert (= (and b!719023 res!481555) b!719019))

(assert (= (and b!719019 res!481550) b!719015))

(assert (= (and b!719015 res!481554) b!719017))

(assert (= (and b!719017 res!481553) b!719020))

(assert (= (and b!719020 res!481548) b!719016))

(assert (= (and b!719016 res!481552) b!719024))

(declare-fun m!674575 () Bool)

(assert (=> b!719022 m!674575))

(declare-fun m!674577 () Bool)

(assert (=> start!64056 m!674577))

(declare-fun m!674579 () Bool)

(assert (=> start!64056 m!674579))

(declare-fun m!674581 () Bool)

(assert (=> b!719016 m!674581))

(assert (=> b!719016 m!674581))

(declare-fun m!674583 () Bool)

(assert (=> b!719016 m!674583))

(assert (=> b!719016 m!674583))

(assert (=> b!719016 m!674581))

(declare-fun m!674585 () Bool)

(assert (=> b!719016 m!674585))

(declare-fun m!674587 () Bool)

(assert (=> b!719015 m!674587))

(declare-fun m!674589 () Bool)

(assert (=> b!719019 m!674589))

(assert (=> b!719018 m!674581))

(assert (=> b!719018 m!674581))

(declare-fun m!674591 () Bool)

(assert (=> b!719018 m!674591))

(declare-fun m!674593 () Bool)

(assert (=> b!719024 m!674593))

(declare-fun m!674595 () Bool)

(assert (=> b!719017 m!674595))

(declare-fun m!674597 () Bool)

(assert (=> b!719023 m!674597))

(check-sat (not b!719016) (not start!64056) (not b!719023) (not b!719015) (not b!719018) (not b!719019) (not b!719017) (not b!719022))
(check-sat)
