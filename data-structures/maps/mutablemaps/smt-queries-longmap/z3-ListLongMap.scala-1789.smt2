; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32444 () Bool)

(assert start!32444)

(declare-fun b!323825 () Bool)

(declare-fun res!177315 () Bool)

(declare-fun e!200037 () Bool)

(assert (=> b!323825 (=> (not res!177315) (not e!200037))))

(declare-datatypes ((array!16579 0))(
  ( (array!16580 (arr!7844 (Array (_ BitVec 32) (_ BitVec 64))) (size!8196 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16579)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323825 (= res!177315 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323827 () Bool)

(declare-fun res!177314 () Bool)

(assert (=> b!323827 (=> (not res!177314) (not e!200037))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323827 (= res!177314 (and (= (size!8196 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8196 a!3305))))))

(declare-fun b!323828 () Bool)

(declare-fun res!177319 () Bool)

(assert (=> b!323828 (=> (not res!177319) (not e!200037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16579 (_ BitVec 32)) Bool)

(assert (=> b!323828 (= res!177319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323829 () Bool)

(declare-fun res!177320 () Bool)

(assert (=> b!323829 (=> (not res!177320) (not e!200037))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323829 (= res!177320 (and (= (select (arr!7844 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8196 a!3305))))))

(declare-fun b!323830 () Bool)

(declare-fun res!177318 () Bool)

(assert (=> b!323830 (=> (not res!177318) (not e!200037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323830 (= res!177318 (validKeyInArray!0 k0!2497))))

(declare-fun b!323831 () Bool)

(declare-fun res!177317 () Bool)

(assert (=> b!323831 (=> (not res!177317) (not e!200037))))

(declare-datatypes ((SeekEntryResult!2986 0))(
  ( (MissingZero!2986 (index!14120 (_ BitVec 32))) (Found!2986 (index!14121 (_ BitVec 32))) (Intermediate!2986 (undefined!3798 Bool) (index!14122 (_ BitVec 32)) (x!32337 (_ BitVec 32))) (Undefined!2986) (MissingVacant!2986 (index!14123 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16579 (_ BitVec 32)) SeekEntryResult!2986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323831 (= res!177317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2986 false resIndex!58 resX!58)))))

(declare-fun b!323832 () Bool)

(declare-fun res!177321 () Bool)

(assert (=> b!323832 (=> (not res!177321) (not e!200037))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16579 (_ BitVec 32)) SeekEntryResult!2986)

(assert (=> b!323832 (= res!177321 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2986 i!1250)))))

(declare-fun res!177316 () Bool)

(assert (=> start!32444 (=> (not res!177316) (not e!200037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32444 (= res!177316 (validMask!0 mask!3777))))

(assert (=> start!32444 e!200037))

(declare-fun array_inv!5798 (array!16579) Bool)

(assert (=> start!32444 (array_inv!5798 a!3305)))

(assert (=> start!32444 true))

(declare-fun b!323826 () Bool)

(assert (=> b!323826 (= e!200037 false)))

(declare-fun lt!156704 () SeekEntryResult!2986)

(assert (=> b!323826 (= lt!156704 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(assert (= (and start!32444 res!177316) b!323827))

(assert (= (and b!323827 res!177314) b!323830))

(assert (= (and b!323830 res!177318) b!323825))

(assert (= (and b!323825 res!177315) b!323832))

(assert (= (and b!323832 res!177321) b!323828))

(assert (= (and b!323828 res!177319) b!323831))

(assert (= (and b!323831 res!177317) b!323829))

(assert (= (and b!323829 res!177320) b!323826))

(declare-fun m!330993 () Bool)

(assert (=> b!323832 m!330993))

(declare-fun m!330995 () Bool)

(assert (=> b!323826 m!330995))

(declare-fun m!330997 () Bool)

(assert (=> b!323831 m!330997))

(assert (=> b!323831 m!330997))

(declare-fun m!330999 () Bool)

(assert (=> b!323831 m!330999))

(declare-fun m!331001 () Bool)

(assert (=> b!323830 m!331001))

(declare-fun m!331003 () Bool)

(assert (=> b!323829 m!331003))

(declare-fun m!331005 () Bool)

(assert (=> b!323825 m!331005))

(declare-fun m!331007 () Bool)

(assert (=> b!323828 m!331007))

(declare-fun m!331009 () Bool)

(assert (=> start!32444 m!331009))

(declare-fun m!331011 () Bool)

(assert (=> start!32444 m!331011))

(check-sat (not b!323832) (not b!323831) (not b!323826) (not b!323830) (not b!323828) (not start!32444) (not b!323825))
