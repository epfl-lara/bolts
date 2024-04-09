; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32510 () Bool)

(assert start!32510)

(declare-fun b!324780 () Bool)

(declare-fun res!178274 () Bool)

(declare-fun e!200331 () Bool)

(assert (=> b!324780 (=> (not res!178274) (not e!200331))))

(declare-datatypes ((array!16645 0))(
  ( (array!16646 (arr!7877 (Array (_ BitVec 32) (_ BitVec 64))) (size!8229 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16645)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324780 (= res!178274 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324781 () Bool)

(declare-fun e!200332 () Bool)

(assert (=> b!324781 (= e!200332 false)))

(declare-fun lt!156872 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324781 (= lt!156872 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324782 () Bool)

(declare-fun res!178269 () Bool)

(assert (=> b!324782 (=> (not res!178269) (not e!200331))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324782 (= res!178269 (and (= (size!8229 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8229 a!3305))))))

(declare-fun b!324783 () Bool)

(declare-fun res!178271 () Bool)

(assert (=> b!324783 (=> (not res!178271) (not e!200332))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324783 (= res!178271 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7877 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324784 () Bool)

(declare-fun res!178275 () Bool)

(assert (=> b!324784 (=> (not res!178275) (not e!200332))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324784 (= res!178275 (and (= (select (arr!7877 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8229 a!3305))))))

(declare-fun b!324786 () Bool)

(declare-fun res!178272 () Bool)

(assert (=> b!324786 (=> (not res!178272) (not e!200331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324786 (= res!178272 (validKeyInArray!0 k0!2497))))

(declare-fun b!324787 () Bool)

(declare-fun res!178278 () Bool)

(assert (=> b!324787 (=> (not res!178278) (not e!200332))))

(declare-datatypes ((SeekEntryResult!3019 0))(
  ( (MissingZero!3019 (index!14252 (_ BitVec 32))) (Found!3019 (index!14253 (_ BitVec 32))) (Intermediate!3019 (undefined!3831 Bool) (index!14254 (_ BitVec 32)) (x!32458 (_ BitVec 32))) (Undefined!3019) (MissingVacant!3019 (index!14255 (_ BitVec 32))) )
))
(declare-fun lt!156871 () SeekEntryResult!3019)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16645 (_ BitVec 32)) SeekEntryResult!3019)

(assert (=> b!324787 (= res!178278 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156871))))

(declare-fun b!324788 () Bool)

(declare-fun res!178276 () Bool)

(assert (=> b!324788 (=> (not res!178276) (not e!200331))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16645 (_ BitVec 32)) SeekEntryResult!3019)

(assert (=> b!324788 (= res!178276 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3019 i!1250)))))

(declare-fun b!324789 () Bool)

(declare-fun res!178270 () Bool)

(assert (=> b!324789 (=> (not res!178270) (not e!200331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16645 (_ BitVec 32)) Bool)

(assert (=> b!324789 (= res!178270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!178277 () Bool)

(assert (=> start!32510 (=> (not res!178277) (not e!200331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32510 (= res!178277 (validMask!0 mask!3777))))

(assert (=> start!32510 e!200331))

(declare-fun array_inv!5831 (array!16645) Bool)

(assert (=> start!32510 (array_inv!5831 a!3305)))

(assert (=> start!32510 true))

(declare-fun b!324785 () Bool)

(assert (=> b!324785 (= e!200331 e!200332)))

(declare-fun res!178273 () Bool)

(assert (=> b!324785 (=> (not res!178273) (not e!200332))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324785 (= res!178273 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156871))))

(assert (=> b!324785 (= lt!156871 (Intermediate!3019 false resIndex!58 resX!58))))

(assert (= (and start!32510 res!178277) b!324782))

(assert (= (and b!324782 res!178269) b!324786))

(assert (= (and b!324786 res!178272) b!324780))

(assert (= (and b!324780 res!178274) b!324788))

(assert (= (and b!324788 res!178276) b!324789))

(assert (= (and b!324789 res!178270) b!324785))

(assert (= (and b!324785 res!178273) b!324784))

(assert (= (and b!324784 res!178275) b!324787))

(assert (= (and b!324787 res!178278) b!324783))

(assert (= (and b!324783 res!178271) b!324781))

(declare-fun m!331759 () Bool)

(assert (=> b!324786 m!331759))

(declare-fun m!331761 () Bool)

(assert (=> b!324787 m!331761))

(declare-fun m!331763 () Bool)

(assert (=> b!324783 m!331763))

(declare-fun m!331765 () Bool)

(assert (=> start!32510 m!331765))

(declare-fun m!331767 () Bool)

(assert (=> start!32510 m!331767))

(declare-fun m!331769 () Bool)

(assert (=> b!324789 m!331769))

(declare-fun m!331771 () Bool)

(assert (=> b!324780 m!331771))

(declare-fun m!331773 () Bool)

(assert (=> b!324785 m!331773))

(assert (=> b!324785 m!331773))

(declare-fun m!331775 () Bool)

(assert (=> b!324785 m!331775))

(declare-fun m!331777 () Bool)

(assert (=> b!324781 m!331777))

(declare-fun m!331779 () Bool)

(assert (=> b!324788 m!331779))

(declare-fun m!331781 () Bool)

(assert (=> b!324784 m!331781))

(check-sat (not b!324788) (not b!324787) (not b!324789) (not b!324780) (not b!324781) (not b!324785) (not start!32510) (not b!324786))
(check-sat)
