; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32456 () Bool)

(assert start!32456)

(declare-fun b!323983 () Bool)

(declare-fun res!177475 () Bool)

(declare-fun e!200089 () Bool)

(assert (=> b!323983 (=> (not res!177475) (not e!200089))))

(declare-datatypes ((array!16591 0))(
  ( (array!16592 (arr!7850 (Array (_ BitVec 32) (_ BitVec 64))) (size!8202 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16591)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323983 (= res!177475 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323984 () Bool)

(declare-fun e!200088 () Bool)

(assert (=> b!323984 (= e!200089 e!200088)))

(declare-fun res!177478 () Bool)

(assert (=> b!323984 (=> (not res!177478) (not e!200088))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2992 0))(
  ( (MissingZero!2992 (index!14144 (_ BitVec 32))) (Found!2992 (index!14145 (_ BitVec 32))) (Intermediate!2992 (undefined!3804 Bool) (index!14146 (_ BitVec 32)) (x!32359 (_ BitVec 32))) (Undefined!2992) (MissingVacant!2992 (index!14147 (_ BitVec 32))) )
))
(declare-fun lt!156722 () SeekEntryResult!2992)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16591 (_ BitVec 32)) SeekEntryResult!2992)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323984 (= res!177478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156722))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323984 (= lt!156722 (Intermediate!2992 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!323985 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323985 (= e!200088 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7850 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!323986 () Bool)

(declare-fun res!177473 () Bool)

(assert (=> b!323986 (=> (not res!177473) (not e!200089))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16591 (_ BitVec 32)) SeekEntryResult!2992)

(assert (=> b!323986 (= res!177473 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2992 i!1250)))))

(declare-fun res!177479 () Bool)

(assert (=> start!32456 (=> (not res!177479) (not e!200089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32456 (= res!177479 (validMask!0 mask!3777))))

(assert (=> start!32456 e!200089))

(declare-fun array_inv!5804 (array!16591) Bool)

(assert (=> start!32456 (array_inv!5804 a!3305)))

(assert (=> start!32456 true))

(declare-fun b!323987 () Bool)

(declare-fun res!177480 () Bool)

(assert (=> b!323987 (=> (not res!177480) (not e!200089))))

(assert (=> b!323987 (= res!177480 (and (= (size!8202 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8202 a!3305))))))

(declare-fun b!323988 () Bool)

(declare-fun res!177477 () Bool)

(assert (=> b!323988 (=> (not res!177477) (not e!200088))))

(assert (=> b!323988 (= res!177477 (and (= (select (arr!7850 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8202 a!3305))))))

(declare-fun b!323989 () Bool)

(declare-fun res!177472 () Bool)

(assert (=> b!323989 (=> (not res!177472) (not e!200088))))

(assert (=> b!323989 (= res!177472 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156722))))

(declare-fun b!323990 () Bool)

(declare-fun res!177474 () Bool)

(assert (=> b!323990 (=> (not res!177474) (not e!200089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323990 (= res!177474 (validKeyInArray!0 k0!2497))))

(declare-fun b!323991 () Bool)

(declare-fun res!177476 () Bool)

(assert (=> b!323991 (=> (not res!177476) (not e!200089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16591 (_ BitVec 32)) Bool)

(assert (=> b!323991 (= res!177476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32456 res!177479) b!323987))

(assert (= (and b!323987 res!177480) b!323990))

(assert (= (and b!323990 res!177474) b!323983))

(assert (= (and b!323983 res!177475) b!323986))

(assert (= (and b!323986 res!177473) b!323991))

(assert (= (and b!323991 res!177476) b!323984))

(assert (= (and b!323984 res!177478) b!323988))

(assert (= (and b!323988 res!177477) b!323989))

(assert (= (and b!323989 res!177472) b!323985))

(declare-fun m!331121 () Bool)

(assert (=> b!323984 m!331121))

(assert (=> b!323984 m!331121))

(declare-fun m!331123 () Bool)

(assert (=> b!323984 m!331123))

(declare-fun m!331125 () Bool)

(assert (=> b!323983 m!331125))

(declare-fun m!331127 () Bool)

(assert (=> b!323988 m!331127))

(declare-fun m!331129 () Bool)

(assert (=> b!323990 m!331129))

(declare-fun m!331131 () Bool)

(assert (=> b!323985 m!331131))

(declare-fun m!331133 () Bool)

(assert (=> b!323989 m!331133))

(declare-fun m!331135 () Bool)

(assert (=> b!323986 m!331135))

(declare-fun m!331137 () Bool)

(assert (=> start!32456 m!331137))

(declare-fun m!331139 () Bool)

(assert (=> start!32456 m!331139))

(declare-fun m!331141 () Bool)

(assert (=> b!323991 m!331141))

(check-sat (not b!323989) (not b!323984) (not b!323991) (not b!323983) (not b!323986) (not start!32456) (not b!323990))
(check-sat)
