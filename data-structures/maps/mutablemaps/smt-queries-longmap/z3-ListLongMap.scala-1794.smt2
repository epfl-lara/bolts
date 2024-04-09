; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32474 () Bool)

(assert start!32474)

(declare-fun b!324240 () Bool)

(declare-fun res!177729 () Bool)

(declare-fun e!200168 () Bool)

(assert (=> b!324240 (=> (not res!177729) (not e!200168))))

(declare-datatypes ((array!16609 0))(
  ( (array!16610 (arr!7859 (Array (_ BitVec 32) (_ BitVec 64))) (size!8211 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16609)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(assert (=> b!324240 (= res!177729 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7859 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324241 () Bool)

(assert (=> b!324241 (= e!200168 false)))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lt!156763 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324241 (= lt!156763 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324242 () Bool)

(declare-fun res!177730 () Bool)

(declare-fun e!200170 () Bool)

(assert (=> b!324242 (=> (not res!177730) (not e!200170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324242 (= res!177730 (validKeyInArray!0 k0!2497))))

(declare-fun b!324243 () Bool)

(declare-fun res!177738 () Bool)

(assert (=> b!324243 (=> (not res!177738) (not e!200170))))

(declare-fun arrayContainsKey!0 (array!16609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324243 (= res!177738 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324244 () Bool)

(declare-fun res!177735 () Bool)

(assert (=> b!324244 (=> (not res!177735) (not e!200168))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324244 (= res!177735 (and (= (select (arr!7859 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8211 a!3305))))))

(declare-fun b!324245 () Bool)

(assert (=> b!324245 (= e!200170 e!200168)))

(declare-fun res!177733 () Bool)

(assert (=> b!324245 (=> (not res!177733) (not e!200168))))

(declare-datatypes ((SeekEntryResult!3001 0))(
  ( (MissingZero!3001 (index!14180 (_ BitVec 32))) (Found!3001 (index!14181 (_ BitVec 32))) (Intermediate!3001 (undefined!3813 Bool) (index!14182 (_ BitVec 32)) (x!32392 (_ BitVec 32))) (Undefined!3001) (MissingVacant!3001 (index!14183 (_ BitVec 32))) )
))
(declare-fun lt!156764 () SeekEntryResult!3001)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16609 (_ BitVec 32)) SeekEntryResult!3001)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324245 (= res!177733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156764))))

(assert (=> b!324245 (= lt!156764 (Intermediate!3001 false resIndex!58 resX!58))))

(declare-fun res!177737 () Bool)

(assert (=> start!32474 (=> (not res!177737) (not e!200170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32474 (= res!177737 (validMask!0 mask!3777))))

(assert (=> start!32474 e!200170))

(declare-fun array_inv!5813 (array!16609) Bool)

(assert (=> start!32474 (array_inv!5813 a!3305)))

(assert (=> start!32474 true))

(declare-fun b!324246 () Bool)

(declare-fun res!177734 () Bool)

(assert (=> b!324246 (=> (not res!177734) (not e!200168))))

(assert (=> b!324246 (= res!177734 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156764))))

(declare-fun b!324247 () Bool)

(declare-fun res!177736 () Bool)

(assert (=> b!324247 (=> (not res!177736) (not e!200170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16609 (_ BitVec 32)) Bool)

(assert (=> b!324247 (= res!177736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324248 () Bool)

(declare-fun res!177731 () Bool)

(assert (=> b!324248 (=> (not res!177731) (not e!200170))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16609 (_ BitVec 32)) SeekEntryResult!3001)

(assert (=> b!324248 (= res!177731 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3001 i!1250)))))

(declare-fun b!324249 () Bool)

(declare-fun res!177732 () Bool)

(assert (=> b!324249 (=> (not res!177732) (not e!200170))))

(assert (=> b!324249 (= res!177732 (and (= (size!8211 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8211 a!3305))))))

(assert (= (and start!32474 res!177737) b!324249))

(assert (= (and b!324249 res!177732) b!324242))

(assert (= (and b!324242 res!177730) b!324243))

(assert (= (and b!324243 res!177738) b!324248))

(assert (= (and b!324248 res!177731) b!324247))

(assert (= (and b!324247 res!177736) b!324245))

(assert (= (and b!324245 res!177733) b!324244))

(assert (= (and b!324244 res!177735) b!324246))

(assert (= (and b!324246 res!177734) b!324240))

(assert (= (and b!324240 res!177729) b!324241))

(declare-fun m!331327 () Bool)

(assert (=> b!324246 m!331327))

(declare-fun m!331329 () Bool)

(assert (=> b!324243 m!331329))

(declare-fun m!331331 () Bool)

(assert (=> b!324242 m!331331))

(declare-fun m!331333 () Bool)

(assert (=> b!324244 m!331333))

(declare-fun m!331335 () Bool)

(assert (=> b!324245 m!331335))

(assert (=> b!324245 m!331335))

(declare-fun m!331337 () Bool)

(assert (=> b!324245 m!331337))

(declare-fun m!331339 () Bool)

(assert (=> b!324240 m!331339))

(declare-fun m!331341 () Bool)

(assert (=> start!32474 m!331341))

(declare-fun m!331343 () Bool)

(assert (=> start!32474 m!331343))

(declare-fun m!331345 () Bool)

(assert (=> b!324247 m!331345))

(declare-fun m!331347 () Bool)

(assert (=> b!324241 m!331347))

(declare-fun m!331349 () Bool)

(assert (=> b!324248 m!331349))

(check-sat (not b!324246) (not start!32474) (not b!324242) (not b!324248) (not b!324241) (not b!324245) (not b!324247) (not b!324243))
(check-sat)
