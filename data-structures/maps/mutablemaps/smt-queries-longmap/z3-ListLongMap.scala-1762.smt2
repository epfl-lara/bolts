; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32228 () Bool)

(assert start!32228)

(declare-fun b!320644 () Bool)

(declare-fun res!174928 () Bool)

(declare-fun e!198884 () Bool)

(assert (=> b!320644 (=> (not res!174928) (not e!198884))))

(declare-datatypes ((array!16414 0))(
  ( (array!16415 (arr!7763 (Array (_ BitVec 32) (_ BitVec 64))) (size!8115 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16414)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320644 (= res!174928 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320645 () Bool)

(declare-fun res!174930 () Bool)

(assert (=> b!320645 (=> (not res!174930) (not e!198884))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320645 (= res!174930 (and (= (size!8115 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8115 a!3305))))))

(declare-fun b!320646 () Bool)

(declare-fun e!198885 () Bool)

(assert (=> b!320646 (= e!198884 e!198885)))

(declare-fun res!174929 () Bool)

(assert (=> b!320646 (=> (not res!174929) (not e!198885))))

(declare-datatypes ((SeekEntryResult!2905 0))(
  ( (MissingZero!2905 (index!13796 (_ BitVec 32))) (Found!2905 (index!13797 (_ BitVec 32))) (Intermediate!2905 (undefined!3717 Bool) (index!13798 (_ BitVec 32)) (x!32031 (_ BitVec 32))) (Undefined!2905) (MissingVacant!2905 (index!13799 (_ BitVec 32))) )
))
(declare-fun lt!156086 () SeekEntryResult!2905)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16414 (_ BitVec 32)) SeekEntryResult!2905)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320646 (= res!174929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156086))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320646 (= lt!156086 (Intermediate!2905 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320647 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320647 (= e!198885 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7763 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7763 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7763 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!320648 () Bool)

(declare-fun res!174924 () Bool)

(assert (=> b!320648 (=> (not res!174924) (not e!198884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16414 (_ BitVec 32)) Bool)

(assert (=> b!320648 (= res!174924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320649 () Bool)

(declare-fun res!174925 () Bool)

(assert (=> b!320649 (=> (not res!174925) (not e!198885))))

(assert (=> b!320649 (= res!174925 (and (= (select (arr!7763 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8115 a!3305))))))

(declare-fun b!320650 () Bool)

(declare-fun res!174927 () Bool)

(assert (=> b!320650 (=> (not res!174927) (not e!198884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320650 (= res!174927 (validKeyInArray!0 k0!2497))))

(declare-fun b!320651 () Bool)

(declare-fun res!174926 () Bool)

(assert (=> b!320651 (=> (not res!174926) (not e!198884))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16414 (_ BitVec 32)) SeekEntryResult!2905)

(assert (=> b!320651 (= res!174926 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2905 i!1250)))))

(declare-fun res!174922 () Bool)

(assert (=> start!32228 (=> (not res!174922) (not e!198884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32228 (= res!174922 (validMask!0 mask!3777))))

(assert (=> start!32228 e!198884))

(declare-fun array_inv!5717 (array!16414) Bool)

(assert (=> start!32228 (array_inv!5717 a!3305)))

(assert (=> start!32228 true))

(declare-fun b!320652 () Bool)

(declare-fun res!174923 () Bool)

(assert (=> b!320652 (=> (not res!174923) (not e!198885))))

(assert (=> b!320652 (= res!174923 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156086))))

(assert (= (and start!32228 res!174922) b!320645))

(assert (= (and b!320645 res!174930) b!320650))

(assert (= (and b!320650 res!174927) b!320644))

(assert (= (and b!320644 res!174928) b!320651))

(assert (= (and b!320651 res!174926) b!320648))

(assert (= (and b!320648 res!174924) b!320646))

(assert (= (and b!320646 res!174929) b!320649))

(assert (= (and b!320649 res!174925) b!320652))

(assert (= (and b!320652 res!174923) b!320647))

(declare-fun m!328937 () Bool)

(assert (=> b!320652 m!328937))

(declare-fun m!328939 () Bool)

(assert (=> b!320649 m!328939))

(declare-fun m!328941 () Bool)

(assert (=> b!320648 m!328941))

(declare-fun m!328943 () Bool)

(assert (=> b!320651 m!328943))

(declare-fun m!328945 () Bool)

(assert (=> start!32228 m!328945))

(declare-fun m!328947 () Bool)

(assert (=> start!32228 m!328947))

(declare-fun m!328949 () Bool)

(assert (=> b!320644 m!328949))

(declare-fun m!328951 () Bool)

(assert (=> b!320646 m!328951))

(assert (=> b!320646 m!328951))

(declare-fun m!328953 () Bool)

(assert (=> b!320646 m!328953))

(declare-fun m!328955 () Bool)

(assert (=> b!320650 m!328955))

(declare-fun m!328957 () Bool)

(assert (=> b!320647 m!328957))

(check-sat (not start!32228) (not b!320650) (not b!320652) (not b!320648) (not b!320646) (not b!320644) (not b!320651))
(check-sat)
