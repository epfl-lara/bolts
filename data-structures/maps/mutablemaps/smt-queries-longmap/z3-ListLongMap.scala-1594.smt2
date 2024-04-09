; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30242 () Bool)

(assert start!30242)

(declare-fun b!302338 () Bool)

(declare-fun res!159987 () Bool)

(declare-fun e!190583 () Bool)

(assert (=> b!302338 (=> (not res!159987) (not e!190583))))

(declare-datatypes ((array!15346 0))(
  ( (array!15347 (arr!7259 (Array (_ BitVec 32) (_ BitVec 64))) (size!7611 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15346)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302338 (= res!159987 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302339 () Bool)

(declare-fun res!159986 () Bool)

(assert (=> b!302339 (=> (not res!159986) (not e!190583))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2410 0))(
  ( (MissingZero!2410 (index!11816 (_ BitVec 32))) (Found!2410 (index!11817 (_ BitVec 32))) (Intermediate!2410 (undefined!3222 Bool) (index!11818 (_ BitVec 32)) (x!30054 (_ BitVec 32))) (Undefined!2410) (MissingVacant!2410 (index!11819 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15346 (_ BitVec 32)) SeekEntryResult!2410)

(assert (=> b!302339 (= res!159986 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2410 i!1240)))))

(declare-fun res!159990 () Bool)

(assert (=> start!30242 (=> (not res!159990) (not e!190583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30242 (= res!159990 (validMask!0 mask!3709))))

(assert (=> start!30242 e!190583))

(declare-fun array_inv!5213 (array!15346) Bool)

(assert (=> start!30242 (array_inv!5213 a!3293)))

(assert (=> start!30242 true))

(declare-fun b!302340 () Bool)

(declare-fun res!159985 () Bool)

(assert (=> b!302340 (=> (not res!159985) (not e!190583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15346 (_ BitVec 32)) Bool)

(assert (=> b!302340 (= res!159985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302341 () Bool)

(declare-fun e!190584 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302341 (= e!190584 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7259 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7259 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7259 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!302342 () Bool)

(assert (=> b!302342 (= e!190583 e!190584)))

(declare-fun res!159982 () Bool)

(assert (=> b!302342 (=> (not res!159982) (not e!190584))))

(declare-fun lt!150062 () SeekEntryResult!2410)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15346 (_ BitVec 32)) SeekEntryResult!2410)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302342 (= res!159982 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150062))))

(assert (=> b!302342 (= lt!150062 (Intermediate!2410 false resIndex!52 resX!52))))

(declare-fun b!302343 () Bool)

(declare-fun res!159983 () Bool)

(assert (=> b!302343 (=> (not res!159983) (not e!190584))))

(assert (=> b!302343 (= res!159983 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150062))))

(declare-fun b!302344 () Bool)

(declare-fun res!159984 () Bool)

(assert (=> b!302344 (=> (not res!159984) (not e!190583))))

(assert (=> b!302344 (= res!159984 (and (= (size!7611 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7611 a!3293))))))

(declare-fun b!302345 () Bool)

(declare-fun res!159989 () Bool)

(assert (=> b!302345 (=> (not res!159989) (not e!190583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302345 (= res!159989 (validKeyInArray!0 k0!2441))))

(declare-fun b!302346 () Bool)

(declare-fun res!159988 () Bool)

(assert (=> b!302346 (=> (not res!159988) (not e!190584))))

(assert (=> b!302346 (= res!159988 (and (= (select (arr!7259 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7611 a!3293))))))

(assert (= (and start!30242 res!159990) b!302344))

(assert (= (and b!302344 res!159984) b!302345))

(assert (= (and b!302345 res!159989) b!302338))

(assert (= (and b!302338 res!159987) b!302339))

(assert (= (and b!302339 res!159986) b!302340))

(assert (= (and b!302340 res!159985) b!302342))

(assert (= (and b!302342 res!159982) b!302346))

(assert (= (and b!302346 res!159988) b!302343))

(assert (= (and b!302343 res!159983) b!302341))

(declare-fun m!313889 () Bool)

(assert (=> b!302346 m!313889))

(declare-fun m!313891 () Bool)

(assert (=> b!302342 m!313891))

(assert (=> b!302342 m!313891))

(declare-fun m!313893 () Bool)

(assert (=> b!302342 m!313893))

(declare-fun m!313895 () Bool)

(assert (=> b!302345 m!313895))

(declare-fun m!313897 () Bool)

(assert (=> start!30242 m!313897))

(declare-fun m!313899 () Bool)

(assert (=> start!30242 m!313899))

(declare-fun m!313901 () Bool)

(assert (=> b!302341 m!313901))

(declare-fun m!313903 () Bool)

(assert (=> b!302338 m!313903))

(declare-fun m!313905 () Bool)

(assert (=> b!302340 m!313905))

(declare-fun m!313907 () Bool)

(assert (=> b!302343 m!313907))

(declare-fun m!313909 () Bool)

(assert (=> b!302339 m!313909))

(check-sat (not start!30242) (not b!302340) (not b!302345) (not b!302339) (not b!302343) (not b!302338) (not b!302342))
(check-sat)
