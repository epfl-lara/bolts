; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32292 () Bool)

(assert start!32292)

(declare-fun b!321501 () Bool)

(declare-fun res!175780 () Bool)

(declare-fun e!199146 () Bool)

(assert (=> b!321501 (=> (not res!175780) (not e!199146))))

(declare-datatypes ((array!16478 0))(
  ( (array!16479 (arr!7795 (Array (_ BitVec 32) (_ BitVec 64))) (size!8147 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16478)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16478 (_ BitVec 32)) Bool)

(assert (=> b!321501 (= res!175780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321502 () Bool)

(declare-fun res!175786 () Bool)

(assert (=> b!321502 (=> (not res!175786) (not e!199146))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321502 (= res!175786 (validKeyInArray!0 k!2497))))

(declare-fun b!321503 () Bool)

(declare-fun res!175779 () Bool)

(assert (=> b!321503 (=> (not res!175779) (not e!199146))))

(declare-fun arrayContainsKey!0 (array!16478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321503 (= res!175779 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321504 () Bool)

(declare-fun res!175783 () Bool)

(assert (=> b!321504 (=> (not res!175783) (not e!199146))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2937 0))(
  ( (MissingZero!2937 (index!13924 (_ BitVec 32))) (Found!2937 (index!13925 (_ BitVec 32))) (Intermediate!2937 (undefined!3749 Bool) (index!13926 (_ BitVec 32)) (x!32151 (_ BitVec 32))) (Undefined!2937) (MissingVacant!2937 (index!13927 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16478 (_ BitVec 32)) SeekEntryResult!2937)

(assert (=> b!321504 (= res!175783 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2937 i!1250)))))

(declare-fun res!175788 () Bool)

(assert (=> start!32292 (=> (not res!175788) (not e!199146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32292 (= res!175788 (validMask!0 mask!3777))))

(assert (=> start!32292 e!199146))

(declare-fun array_inv!5749 (array!16478) Bool)

(assert (=> start!32292 (array_inv!5749 a!3305)))

(assert (=> start!32292 true))

(declare-fun b!321505 () Bool)

(declare-fun res!175781 () Bool)

(declare-fun e!199145 () Bool)

(assert (=> b!321505 (=> (not res!175781) (not e!199145))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321505 (= res!175781 (and (= (select (arr!7795 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8147 a!3305))))))

(declare-fun b!321506 () Bool)

(assert (=> b!321506 (= e!199146 e!199145)))

(declare-fun res!175787 () Bool)

(assert (=> b!321506 (=> (not res!175787) (not e!199145))))

(declare-fun lt!156202 () SeekEntryResult!2937)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16478 (_ BitVec 32)) SeekEntryResult!2937)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321506 (= res!175787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156202))))

(assert (=> b!321506 (= lt!156202 (Intermediate!2937 false resIndex!58 resX!58))))

(declare-fun b!321507 () Bool)

(assert (=> b!321507 (= e!199145 false)))

(declare-fun lt!156203 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321507 (= lt!156203 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321508 () Bool)

(declare-fun res!175785 () Bool)

(assert (=> b!321508 (=> (not res!175785) (not e!199145))))

(assert (=> b!321508 (= res!175785 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7795 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7795 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7795 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321509 () Bool)

(declare-fun res!175784 () Bool)

(assert (=> b!321509 (=> (not res!175784) (not e!199146))))

(assert (=> b!321509 (= res!175784 (and (= (size!8147 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8147 a!3305))))))

(declare-fun b!321510 () Bool)

(declare-fun res!175782 () Bool)

(assert (=> b!321510 (=> (not res!175782) (not e!199145))))

(assert (=> b!321510 (= res!175782 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156202))))

(assert (= (and start!32292 res!175788) b!321509))

(assert (= (and b!321509 res!175784) b!321502))

(assert (= (and b!321502 res!175786) b!321503))

(assert (= (and b!321503 res!175779) b!321504))

(assert (= (and b!321504 res!175783) b!321501))

(assert (= (and b!321501 res!175780) b!321506))

(assert (= (and b!321506 res!175787) b!321505))

(assert (= (and b!321505 res!175781) b!321510))

(assert (= (and b!321510 res!175782) b!321508))

(assert (= (and b!321508 res!175785) b!321507))

(declare-fun m!329635 () Bool)

(assert (=> b!321505 m!329635))

(declare-fun m!329637 () Bool)

(assert (=> b!321507 m!329637))

(declare-fun m!329639 () Bool)

(assert (=> b!321501 m!329639))

(declare-fun m!329641 () Bool)

(assert (=> start!32292 m!329641))

(declare-fun m!329643 () Bool)

(assert (=> start!32292 m!329643))

(declare-fun m!329645 () Bool)

(assert (=> b!321508 m!329645))

(declare-fun m!329647 () Bool)

(assert (=> b!321503 m!329647))

(declare-fun m!329649 () Bool)

(assert (=> b!321510 m!329649))

(declare-fun m!329651 () Bool)

(assert (=> b!321502 m!329651))

(declare-fun m!329653 () Bool)

(assert (=> b!321506 m!329653))

(assert (=> b!321506 m!329653))

(declare-fun m!329655 () Bool)

(assert (=> b!321506 m!329655))

(declare-fun m!329657 () Bool)

(assert (=> b!321504 m!329657))

(push 1)

