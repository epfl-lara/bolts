; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32234 () Bool)

(assert start!32234)

(declare-fun b!320720 () Bool)

(declare-fun res!175001 () Bool)

(declare-fun e!198907 () Bool)

(assert (=> b!320720 (=> (not res!175001) (not e!198907))))

(declare-datatypes ((array!16420 0))(
  ( (array!16421 (arr!7766 (Array (_ BitVec 32) (_ BitVec 64))) (size!8118 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16420)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16420 (_ BitVec 32)) Bool)

(assert (=> b!320720 (= res!175001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320721 () Bool)

(declare-fun res!175005 () Bool)

(assert (=> b!320721 (=> (not res!175005) (not e!198907))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320721 (= res!175005 (and (= (select (arr!7766 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8118 a!3305))))))

(declare-fun b!320722 () Bool)

(declare-fun res!175002 () Bool)

(assert (=> b!320722 (=> (not res!175002) (not e!198907))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2908 0))(
  ( (MissingZero!2908 (index!13808 (_ BitVec 32))) (Found!2908 (index!13809 (_ BitVec 32))) (Intermediate!2908 (undefined!3720 Bool) (index!13810 (_ BitVec 32)) (x!32042 (_ BitVec 32))) (Undefined!2908) (MissingVacant!2908 (index!13811 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16420 (_ BitVec 32)) SeekEntryResult!2908)

(assert (=> b!320722 (= res!175002 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2908 i!1250)))))

(declare-fun b!320723 () Bool)

(assert (=> b!320723 (= e!198907 false)))

(declare-fun lt!156095 () SeekEntryResult!2908)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16420 (_ BitVec 32)) SeekEntryResult!2908)

(assert (=> b!320723 (= lt!156095 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!320724 () Bool)

(declare-fun res!175004 () Bool)

(assert (=> b!320724 (=> (not res!175004) (not e!198907))))

(assert (=> b!320724 (= res!175004 (and (= (size!8118 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8118 a!3305))))))

(declare-fun b!320725 () Bool)

(declare-fun res!174999 () Bool)

(assert (=> b!320725 (=> (not res!174999) (not e!198907))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320725 (= res!174999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2908 false resIndex!58 resX!58)))))

(declare-fun b!320726 () Bool)

(declare-fun res!175000 () Bool)

(assert (=> b!320726 (=> (not res!175000) (not e!198907))))

(declare-fun arrayContainsKey!0 (array!16420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320726 (= res!175000 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174998 () Bool)

(assert (=> start!32234 (=> (not res!174998) (not e!198907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32234 (= res!174998 (validMask!0 mask!3777))))

(assert (=> start!32234 e!198907))

(declare-fun array_inv!5720 (array!16420) Bool)

(assert (=> start!32234 (array_inv!5720 a!3305)))

(assert (=> start!32234 true))

(declare-fun b!320727 () Bool)

(declare-fun res!175003 () Bool)

(assert (=> b!320727 (=> (not res!175003) (not e!198907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320727 (= res!175003 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32234 res!174998) b!320724))

(assert (= (and b!320724 res!175004) b!320727))

(assert (= (and b!320727 res!175003) b!320726))

(assert (= (and b!320726 res!175000) b!320722))

(assert (= (and b!320722 res!175002) b!320720))

(assert (= (and b!320720 res!175001) b!320725))

(assert (= (and b!320725 res!174999) b!320721))

(assert (= (and b!320721 res!175005) b!320723))

(declare-fun m!329001 () Bool)

(assert (=> b!320725 m!329001))

(assert (=> b!320725 m!329001))

(declare-fun m!329003 () Bool)

(assert (=> b!320725 m!329003))

(declare-fun m!329005 () Bool)

(assert (=> b!320720 m!329005))

(declare-fun m!329007 () Bool)

(assert (=> start!32234 m!329007))

(declare-fun m!329009 () Bool)

(assert (=> start!32234 m!329009))

(declare-fun m!329011 () Bool)

(assert (=> b!320722 m!329011))

(declare-fun m!329013 () Bool)

(assert (=> b!320723 m!329013))

(declare-fun m!329015 () Bool)

(assert (=> b!320726 m!329015))

(declare-fun m!329017 () Bool)

(assert (=> b!320727 m!329017))

(declare-fun m!329019 () Bool)

(assert (=> b!320721 m!329019))

(check-sat (not b!320725) (not b!320726) (not b!320727) (not b!320722) (not b!320720) (not start!32234) (not b!320723))
