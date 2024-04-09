; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32486 () Bool)

(assert start!32486)

(declare-fun b!324420 () Bool)

(declare-fun res!177917 () Bool)

(declare-fun e!200224 () Bool)

(assert (=> b!324420 (=> (not res!177917) (not e!200224))))

(declare-datatypes ((array!16621 0))(
  ( (array!16622 (arr!7865 (Array (_ BitVec 32) (_ BitVec 64))) (size!8217 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16621)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(assert (=> b!324420 (= res!177917 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7865 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324421 () Bool)

(declare-fun res!177911 () Bool)

(declare-fun e!200223 () Bool)

(assert (=> b!324421 (=> (not res!177911) (not e!200223))))

(declare-fun arrayContainsKey!0 (array!16621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324421 (= res!177911 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324422 () Bool)

(declare-fun res!177912 () Bool)

(assert (=> b!324422 (=> (not res!177912) (not e!200223))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16621 (_ BitVec 32)) Bool)

(assert (=> b!324422 (= res!177912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!177918 () Bool)

(assert (=> start!32486 (=> (not res!177918) (not e!200223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32486 (= res!177918 (validMask!0 mask!3777))))

(assert (=> start!32486 e!200223))

(declare-fun array_inv!5819 (array!16621) Bool)

(assert (=> start!32486 (array_inv!5819 a!3305)))

(assert (=> start!32486 true))

(declare-fun b!324423 () Bool)

(declare-fun res!177909 () Bool)

(assert (=> b!324423 (=> (not res!177909) (not e!200224))))

(declare-datatypes ((SeekEntryResult!3007 0))(
  ( (MissingZero!3007 (index!14204 (_ BitVec 32))) (Found!3007 (index!14205 (_ BitVec 32))) (Intermediate!3007 (undefined!3819 Bool) (index!14206 (_ BitVec 32)) (x!32414 (_ BitVec 32))) (Undefined!3007) (MissingVacant!3007 (index!14207 (_ BitVec 32))) )
))
(declare-fun lt!156799 () SeekEntryResult!3007)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16621 (_ BitVec 32)) SeekEntryResult!3007)

(assert (=> b!324423 (= res!177909 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156799))))

(declare-fun b!324424 () Bool)

(assert (=> b!324424 (= e!200223 e!200224)))

(declare-fun res!177910 () Bool)

(assert (=> b!324424 (=> (not res!177910) (not e!200224))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324424 (= res!177910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156799))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324424 (= lt!156799 (Intermediate!3007 false resIndex!58 resX!58))))

(declare-fun b!324425 () Bool)

(declare-fun res!177916 () Bool)

(assert (=> b!324425 (=> (not res!177916) (not e!200223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324425 (= res!177916 (validKeyInArray!0 k0!2497))))

(declare-fun b!324426 () Bool)

(declare-fun res!177915 () Bool)

(assert (=> b!324426 (=> (not res!177915) (not e!200224))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324426 (= res!177915 (and (= (select (arr!7865 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8217 a!3305))))))

(declare-fun b!324427 () Bool)

(assert (=> b!324427 (= e!200224 false)))

(declare-fun lt!156800 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324427 (= lt!156800 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324428 () Bool)

(declare-fun res!177913 () Bool)

(assert (=> b!324428 (=> (not res!177913) (not e!200223))))

(assert (=> b!324428 (= res!177913 (and (= (size!8217 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8217 a!3305))))))

(declare-fun b!324429 () Bool)

(declare-fun res!177914 () Bool)

(assert (=> b!324429 (=> (not res!177914) (not e!200223))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16621 (_ BitVec 32)) SeekEntryResult!3007)

(assert (=> b!324429 (= res!177914 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3007 i!1250)))))

(assert (= (and start!32486 res!177918) b!324428))

(assert (= (and b!324428 res!177913) b!324425))

(assert (= (and b!324425 res!177916) b!324421))

(assert (= (and b!324421 res!177911) b!324429))

(assert (= (and b!324429 res!177914) b!324422))

(assert (= (and b!324422 res!177912) b!324424))

(assert (= (and b!324424 res!177910) b!324426))

(assert (= (and b!324426 res!177915) b!324423))

(assert (= (and b!324423 res!177909) b!324420))

(assert (= (and b!324420 res!177917) b!324427))

(declare-fun m!331471 () Bool)

(assert (=> b!324425 m!331471))

(declare-fun m!331473 () Bool)

(assert (=> b!324424 m!331473))

(assert (=> b!324424 m!331473))

(declare-fun m!331475 () Bool)

(assert (=> b!324424 m!331475))

(declare-fun m!331477 () Bool)

(assert (=> b!324429 m!331477))

(declare-fun m!331479 () Bool)

(assert (=> b!324421 m!331479))

(declare-fun m!331481 () Bool)

(assert (=> b!324420 m!331481))

(declare-fun m!331483 () Bool)

(assert (=> b!324426 m!331483))

(declare-fun m!331485 () Bool)

(assert (=> b!324423 m!331485))

(declare-fun m!331487 () Bool)

(assert (=> start!32486 m!331487))

(declare-fun m!331489 () Bool)

(assert (=> start!32486 m!331489))

(declare-fun m!331491 () Bool)

(assert (=> b!324427 m!331491))

(declare-fun m!331493 () Bool)

(assert (=> b!324422 m!331493))

(check-sat (not b!324429) (not b!324427) (not b!324422) (not start!32486) (not b!324425) (not b!324423) (not b!324424) (not b!324421))
(check-sat)
