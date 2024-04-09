; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32294 () Bool)

(assert start!32294)

(declare-fun b!321532 () Bool)

(declare-fun res!175812 () Bool)

(declare-fun e!199155 () Bool)

(assert (=> b!321532 (=> (not res!175812) (not e!199155))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321532 (= res!175812 (validKeyInArray!0 k0!2497))))

(declare-fun b!321533 () Bool)

(declare-fun res!175811 () Bool)

(declare-fun e!199156 () Bool)

(assert (=> b!321533 (=> (not res!175811) (not e!199156))))

(declare-datatypes ((array!16480 0))(
  ( (array!16481 (arr!7796 (Array (_ BitVec 32) (_ BitVec 64))) (size!8148 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16480)

(declare-datatypes ((SeekEntryResult!2938 0))(
  ( (MissingZero!2938 (index!13928 (_ BitVec 32))) (Found!2938 (index!13929 (_ BitVec 32))) (Intermediate!2938 (undefined!3750 Bool) (index!13930 (_ BitVec 32)) (x!32152 (_ BitVec 32))) (Undefined!2938) (MissingVacant!2938 (index!13931 (_ BitVec 32))) )
))
(declare-fun lt!156208 () SeekEntryResult!2938)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16480 (_ BitVec 32)) SeekEntryResult!2938)

(assert (=> b!321533 (= res!175811 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156208))))

(declare-fun b!321534 () Bool)

(declare-fun res!175809 () Bool)

(assert (=> b!321534 (=> (not res!175809) (not e!199156))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321534 (= res!175809 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7796 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7796 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7796 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321535 () Bool)

(declare-fun res!175818 () Bool)

(assert (=> b!321535 (=> (not res!175818) (not e!199155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16480 (_ BitVec 32)) Bool)

(assert (=> b!321535 (= res!175818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321536 () Bool)

(declare-fun res!175813 () Bool)

(assert (=> b!321536 (=> (not res!175813) (not e!199155))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16480 (_ BitVec 32)) SeekEntryResult!2938)

(assert (=> b!321536 (= res!175813 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2938 i!1250)))))

(declare-fun b!321537 () Bool)

(declare-fun res!175815 () Bool)

(assert (=> b!321537 (=> (not res!175815) (not e!199156))))

(assert (=> b!321537 (= res!175815 (and (= (select (arr!7796 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8148 a!3305))))))

(declare-fun b!321538 () Bool)

(assert (=> b!321538 (= e!199155 e!199156)))

(declare-fun res!175814 () Bool)

(assert (=> b!321538 (=> (not res!175814) (not e!199156))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321538 (= res!175814 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156208))))

(assert (=> b!321538 (= lt!156208 (Intermediate!2938 false resIndex!58 resX!58))))

(declare-fun b!321539 () Bool)

(assert (=> b!321539 (= e!199156 false)))

(declare-fun lt!156209 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321539 (= lt!156209 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321540 () Bool)

(declare-fun res!175810 () Bool)

(assert (=> b!321540 (=> (not res!175810) (not e!199155))))

(assert (=> b!321540 (= res!175810 (and (= (size!8148 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8148 a!3305))))))

(declare-fun res!175817 () Bool)

(assert (=> start!32294 (=> (not res!175817) (not e!199155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32294 (= res!175817 (validMask!0 mask!3777))))

(assert (=> start!32294 e!199155))

(declare-fun array_inv!5750 (array!16480) Bool)

(assert (=> start!32294 (array_inv!5750 a!3305)))

(assert (=> start!32294 true))

(declare-fun b!321531 () Bool)

(declare-fun res!175816 () Bool)

(assert (=> b!321531 (=> (not res!175816) (not e!199155))))

(declare-fun arrayContainsKey!0 (array!16480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321531 (= res!175816 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32294 res!175817) b!321540))

(assert (= (and b!321540 res!175810) b!321532))

(assert (= (and b!321532 res!175812) b!321531))

(assert (= (and b!321531 res!175816) b!321536))

(assert (= (and b!321536 res!175813) b!321535))

(assert (= (and b!321535 res!175818) b!321538))

(assert (= (and b!321538 res!175814) b!321537))

(assert (= (and b!321537 res!175815) b!321533))

(assert (= (and b!321533 res!175811) b!321534))

(assert (= (and b!321534 res!175809) b!321539))

(declare-fun m!329659 () Bool)

(assert (=> b!321538 m!329659))

(assert (=> b!321538 m!329659))

(declare-fun m!329661 () Bool)

(assert (=> b!321538 m!329661))

(declare-fun m!329663 () Bool)

(assert (=> b!321534 m!329663))

(declare-fun m!329665 () Bool)

(assert (=> b!321537 m!329665))

(declare-fun m!329667 () Bool)

(assert (=> b!321539 m!329667))

(declare-fun m!329669 () Bool)

(assert (=> b!321535 m!329669))

(declare-fun m!329671 () Bool)

(assert (=> b!321536 m!329671))

(declare-fun m!329673 () Bool)

(assert (=> b!321532 m!329673))

(declare-fun m!329675 () Bool)

(assert (=> b!321531 m!329675))

(declare-fun m!329677 () Bool)

(assert (=> start!32294 m!329677))

(declare-fun m!329679 () Bool)

(assert (=> start!32294 m!329679))

(declare-fun m!329681 () Bool)

(assert (=> b!321533 m!329681))

(check-sat (not b!321536) (not start!32294) (not b!321531) (not b!321532) (not b!321538) (not b!321539) (not b!321535) (not b!321533))
(check-sat)
