; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32288 () Bool)

(assert start!32288)

(declare-fun b!321441 () Bool)

(declare-fun res!175720 () Bool)

(declare-fun e!199128 () Bool)

(assert (=> b!321441 (=> (not res!175720) (not e!199128))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16474 0))(
  ( (array!16475 (arr!7793 (Array (_ BitVec 32) (_ BitVec 64))) (size!8145 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16474)

(declare-datatypes ((SeekEntryResult!2935 0))(
  ( (MissingZero!2935 (index!13916 (_ BitVec 32))) (Found!2935 (index!13917 (_ BitVec 32))) (Intermediate!2935 (undefined!3747 Bool) (index!13918 (_ BitVec 32)) (x!32141 (_ BitVec 32))) (Undefined!2935) (MissingVacant!2935 (index!13919 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16474 (_ BitVec 32)) SeekEntryResult!2935)

(assert (=> b!321441 (= res!175720 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2935 i!1250)))))

(declare-fun b!321442 () Bool)

(declare-fun e!199129 () Bool)

(assert (=> b!321442 (= e!199129 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!156191 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321442 (= lt!156191 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321443 () Bool)

(declare-fun res!175725 () Bool)

(assert (=> b!321443 (=> (not res!175725) (not e!199129))))

(declare-fun lt!156190 () SeekEntryResult!2935)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16474 (_ BitVec 32)) SeekEntryResult!2935)

(assert (=> b!321443 (= res!175725 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156190))))

(declare-fun b!321444 () Bool)

(declare-fun res!175728 () Bool)

(assert (=> b!321444 (=> (not res!175728) (not e!199128))))

(declare-fun arrayContainsKey!0 (array!16474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321444 (= res!175728 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321445 () Bool)

(declare-fun res!175722 () Bool)

(assert (=> b!321445 (=> (not res!175722) (not e!199129))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321445 (= res!175722 (and (= (select (arr!7793 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8145 a!3305))))))

(declare-fun b!321446 () Bool)

(assert (=> b!321446 (= e!199128 e!199129)))

(declare-fun res!175719 () Bool)

(assert (=> b!321446 (=> (not res!175719) (not e!199129))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321446 (= res!175719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156190))))

(assert (=> b!321446 (= lt!156190 (Intermediate!2935 false resIndex!58 resX!58))))

(declare-fun b!321447 () Bool)

(declare-fun res!175721 () Bool)

(assert (=> b!321447 (=> (not res!175721) (not e!199129))))

(assert (=> b!321447 (= res!175721 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7793 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7793 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7793 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321448 () Bool)

(declare-fun res!175723 () Bool)

(assert (=> b!321448 (=> (not res!175723) (not e!199128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16474 (_ BitVec 32)) Bool)

(assert (=> b!321448 (= res!175723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!175727 () Bool)

(assert (=> start!32288 (=> (not res!175727) (not e!199128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32288 (= res!175727 (validMask!0 mask!3777))))

(assert (=> start!32288 e!199128))

(declare-fun array_inv!5747 (array!16474) Bool)

(assert (=> start!32288 (array_inv!5747 a!3305)))

(assert (=> start!32288 true))

(declare-fun b!321449 () Bool)

(declare-fun res!175726 () Bool)

(assert (=> b!321449 (=> (not res!175726) (not e!199128))))

(assert (=> b!321449 (= res!175726 (and (= (size!8145 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8145 a!3305))))))

(declare-fun b!321450 () Bool)

(declare-fun res!175724 () Bool)

(assert (=> b!321450 (=> (not res!175724) (not e!199128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321450 (= res!175724 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32288 res!175727) b!321449))

(assert (= (and b!321449 res!175726) b!321450))

(assert (= (and b!321450 res!175724) b!321444))

(assert (= (and b!321444 res!175728) b!321441))

(assert (= (and b!321441 res!175720) b!321448))

(assert (= (and b!321448 res!175723) b!321446))

(assert (= (and b!321446 res!175719) b!321445))

(assert (= (and b!321445 res!175722) b!321443))

(assert (= (and b!321443 res!175725) b!321447))

(assert (= (and b!321447 res!175721) b!321442))

(declare-fun m!329587 () Bool)

(assert (=> b!321443 m!329587))

(declare-fun m!329589 () Bool)

(assert (=> b!321448 m!329589))

(declare-fun m!329591 () Bool)

(assert (=> b!321441 m!329591))

(declare-fun m!329593 () Bool)

(assert (=> start!32288 m!329593))

(declare-fun m!329595 () Bool)

(assert (=> start!32288 m!329595))

(declare-fun m!329597 () Bool)

(assert (=> b!321444 m!329597))

(declare-fun m!329599 () Bool)

(assert (=> b!321442 m!329599))

(declare-fun m!329601 () Bool)

(assert (=> b!321450 m!329601))

(declare-fun m!329603 () Bool)

(assert (=> b!321447 m!329603))

(declare-fun m!329605 () Bool)

(assert (=> b!321446 m!329605))

(assert (=> b!321446 m!329605))

(declare-fun m!329607 () Bool)

(assert (=> b!321446 m!329607))

(declare-fun m!329609 () Bool)

(assert (=> b!321445 m!329609))

(check-sat (not b!321446) (not start!32288) (not b!321450) (not b!321441) (not b!321448) (not b!321442) (not b!321443) (not b!321444))
(check-sat)
