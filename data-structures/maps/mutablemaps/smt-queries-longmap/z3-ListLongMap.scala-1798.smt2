; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32498 () Bool)

(assert start!32498)

(declare-fun b!324600 () Bool)

(declare-fun res!178094 () Bool)

(declare-fun e!200278 () Bool)

(assert (=> b!324600 (=> (not res!178094) (not e!200278))))

(declare-datatypes ((array!16633 0))(
  ( (array!16634 (arr!7871 (Array (_ BitVec 32) (_ BitVec 64))) (size!8223 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16633)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324600 (= res!178094 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324601 () Bool)

(declare-fun res!178090 () Bool)

(assert (=> b!324601 (=> (not res!178090) (not e!200278))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16633 (_ BitVec 32)) Bool)

(assert (=> b!324601 (= res!178090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324602 () Bool)

(declare-fun res!178093 () Bool)

(assert (=> b!324602 (=> (not res!178093) (not e!200278))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3013 0))(
  ( (MissingZero!3013 (index!14228 (_ BitVec 32))) (Found!3013 (index!14229 (_ BitVec 32))) (Intermediate!3013 (undefined!3825 Bool) (index!14230 (_ BitVec 32)) (x!32436 (_ BitVec 32))) (Undefined!3013) (MissingVacant!3013 (index!14231 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16633 (_ BitVec 32)) SeekEntryResult!3013)

(assert (=> b!324602 (= res!178093 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3013 i!1250)))))

(declare-fun b!324603 () Bool)

(declare-fun res!178096 () Bool)

(assert (=> b!324603 (=> (not res!178096) (not e!200278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324603 (= res!178096 (validKeyInArray!0 k0!2497))))

(declare-fun b!324604 () Bool)

(declare-fun e!200277 () Bool)

(assert (=> b!324604 (= e!200278 e!200277)))

(declare-fun res!178092 () Bool)

(assert (=> b!324604 (=> (not res!178092) (not e!200277))))

(declare-fun lt!156835 () SeekEntryResult!3013)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16633 (_ BitVec 32)) SeekEntryResult!3013)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324604 (= res!178092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156835))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324604 (= lt!156835 (Intermediate!3013 false resIndex!58 resX!58))))

(declare-fun b!324605 () Bool)

(declare-fun res!178089 () Bool)

(assert (=> b!324605 (=> (not res!178089) (not e!200277))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324605 (= res!178089 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7871 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324606 () Bool)

(declare-fun res!178098 () Bool)

(assert (=> b!324606 (=> (not res!178098) (not e!200277))))

(assert (=> b!324606 (= res!178098 (and (= (select (arr!7871 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8223 a!3305))))))

(declare-fun b!324607 () Bool)

(assert (=> b!324607 (= e!200277 false)))

(declare-fun lt!156836 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324607 (= lt!156836 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!178095 () Bool)

(assert (=> start!32498 (=> (not res!178095) (not e!200278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32498 (= res!178095 (validMask!0 mask!3777))))

(assert (=> start!32498 e!200278))

(declare-fun array_inv!5825 (array!16633) Bool)

(assert (=> start!32498 (array_inv!5825 a!3305)))

(assert (=> start!32498 true))

(declare-fun b!324608 () Bool)

(declare-fun res!178097 () Bool)

(assert (=> b!324608 (=> (not res!178097) (not e!200278))))

(assert (=> b!324608 (= res!178097 (and (= (size!8223 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8223 a!3305))))))

(declare-fun b!324609 () Bool)

(declare-fun res!178091 () Bool)

(assert (=> b!324609 (=> (not res!178091) (not e!200277))))

(assert (=> b!324609 (= res!178091 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156835))))

(assert (= (and start!32498 res!178095) b!324608))

(assert (= (and b!324608 res!178097) b!324603))

(assert (= (and b!324603 res!178096) b!324600))

(assert (= (and b!324600 res!178094) b!324602))

(assert (= (and b!324602 res!178093) b!324601))

(assert (= (and b!324601 res!178090) b!324604))

(assert (= (and b!324604 res!178092) b!324606))

(assert (= (and b!324606 res!178098) b!324609))

(assert (= (and b!324609 res!178091) b!324605))

(assert (= (and b!324605 res!178089) b!324607))

(declare-fun m!331615 () Bool)

(assert (=> b!324600 m!331615))

(declare-fun m!331617 () Bool)

(assert (=> start!32498 m!331617))

(declare-fun m!331619 () Bool)

(assert (=> start!32498 m!331619))

(declare-fun m!331621 () Bool)

(assert (=> b!324607 m!331621))

(declare-fun m!331623 () Bool)

(assert (=> b!324602 m!331623))

(declare-fun m!331625 () Bool)

(assert (=> b!324601 m!331625))

(declare-fun m!331627 () Bool)

(assert (=> b!324606 m!331627))

(declare-fun m!331629 () Bool)

(assert (=> b!324609 m!331629))

(declare-fun m!331631 () Bool)

(assert (=> b!324604 m!331631))

(assert (=> b!324604 m!331631))

(declare-fun m!331633 () Bool)

(assert (=> b!324604 m!331633))

(declare-fun m!331635 () Bool)

(assert (=> b!324603 m!331635))

(declare-fun m!331637 () Bool)

(assert (=> b!324605 m!331637))

(check-sat (not b!324602) (not b!324600) (not b!324603) (not start!32498) (not b!324609) (not b!324604) (not b!324601) (not b!324607))
(check-sat)
