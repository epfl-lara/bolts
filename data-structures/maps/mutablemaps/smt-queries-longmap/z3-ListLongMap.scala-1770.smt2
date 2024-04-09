; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32276 () Bool)

(assert start!32276)

(declare-fun b!321265 () Bool)

(declare-fun res!175551 () Bool)

(declare-fun e!199075 () Bool)

(assert (=> b!321265 (=> (not res!175551) (not e!199075))))

(declare-datatypes ((array!16462 0))(
  ( (array!16463 (arr!7787 (Array (_ BitVec 32) (_ BitVec 64))) (size!8139 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16462)

(declare-datatypes ((SeekEntryResult!2929 0))(
  ( (MissingZero!2929 (index!13892 (_ BitVec 32))) (Found!2929 (index!13893 (_ BitVec 32))) (Intermediate!2929 (undefined!3741 Bool) (index!13894 (_ BitVec 32)) (x!32119 (_ BitVec 32))) (Undefined!2929) (MissingVacant!2929 (index!13895 (_ BitVec 32))) )
))
(declare-fun lt!156158 () SeekEntryResult!2929)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16462 (_ BitVec 32)) SeekEntryResult!2929)

(assert (=> b!321265 (= res!175551 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156158))))

(declare-fun res!175549 () Bool)

(declare-fun e!199073 () Bool)

(assert (=> start!32276 (=> (not res!175549) (not e!199073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32276 (= res!175549 (validMask!0 mask!3777))))

(assert (=> start!32276 e!199073))

(declare-fun array_inv!5741 (array!16462) Bool)

(assert (=> start!32276 (array_inv!5741 a!3305)))

(assert (=> start!32276 true))

(declare-fun b!321266 () Bool)

(declare-fun res!175543 () Bool)

(assert (=> b!321266 (=> (not res!175543) (not e!199073))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321266 (= res!175543 (and (= (size!8139 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8139 a!3305))))))

(declare-fun b!321267 () Bool)

(declare-fun res!175545 () Bool)

(assert (=> b!321267 (=> (not res!175545) (not e!199073))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16462 (_ BitVec 32)) SeekEntryResult!2929)

(assert (=> b!321267 (= res!175545 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2929 i!1250)))))

(declare-fun b!321268 () Bool)

(declare-fun res!175547 () Bool)

(assert (=> b!321268 (=> (not res!175547) (not e!199073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321268 (= res!175547 (validKeyInArray!0 k0!2497))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun b!321269 () Bool)

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321269 (= e!199075 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7787 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7787 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7787 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!321270 () Bool)

(declare-fun res!175544 () Bool)

(assert (=> b!321270 (=> (not res!175544) (not e!199073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16462 (_ BitVec 32)) Bool)

(assert (=> b!321270 (= res!175544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321271 () Bool)

(declare-fun res!175548 () Bool)

(assert (=> b!321271 (=> (not res!175548) (not e!199075))))

(assert (=> b!321271 (= res!175548 (and (= (select (arr!7787 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8139 a!3305))))))

(declare-fun b!321272 () Bool)

(declare-fun res!175550 () Bool)

(assert (=> b!321272 (=> (not res!175550) (not e!199073))))

(declare-fun arrayContainsKey!0 (array!16462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321272 (= res!175550 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321273 () Bool)

(assert (=> b!321273 (= e!199073 e!199075)))

(declare-fun res!175546 () Bool)

(assert (=> b!321273 (=> (not res!175546) (not e!199075))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321273 (= res!175546 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156158))))

(assert (=> b!321273 (= lt!156158 (Intermediate!2929 false resIndex!58 resX!58))))

(assert (= (and start!32276 res!175549) b!321266))

(assert (= (and b!321266 res!175543) b!321268))

(assert (= (and b!321268 res!175547) b!321272))

(assert (= (and b!321272 res!175550) b!321267))

(assert (= (and b!321267 res!175545) b!321270))

(assert (= (and b!321270 res!175544) b!321273))

(assert (= (and b!321273 res!175546) b!321271))

(assert (= (and b!321271 res!175548) b!321265))

(assert (= (and b!321265 res!175551) b!321269))

(declare-fun m!329447 () Bool)

(assert (=> b!321265 m!329447))

(declare-fun m!329449 () Bool)

(assert (=> b!321271 m!329449))

(declare-fun m!329451 () Bool)

(assert (=> b!321267 m!329451))

(declare-fun m!329453 () Bool)

(assert (=> b!321268 m!329453))

(declare-fun m!329455 () Bool)

(assert (=> b!321270 m!329455))

(declare-fun m!329457 () Bool)

(assert (=> start!32276 m!329457))

(declare-fun m!329459 () Bool)

(assert (=> start!32276 m!329459))

(declare-fun m!329461 () Bool)

(assert (=> b!321269 m!329461))

(declare-fun m!329463 () Bool)

(assert (=> b!321272 m!329463))

(declare-fun m!329465 () Bool)

(assert (=> b!321273 m!329465))

(assert (=> b!321273 m!329465))

(declare-fun m!329467 () Bool)

(assert (=> b!321273 m!329467))

(check-sat (not b!321268) (not b!321273) (not b!321267) (not b!321265) (not b!321272) (not b!321270) (not start!32276))
(check-sat)
