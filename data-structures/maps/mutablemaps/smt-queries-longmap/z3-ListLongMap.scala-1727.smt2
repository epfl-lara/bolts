; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31820 () Bool)

(assert start!31820)

(declare-fun b!317679 () Bool)

(declare-fun res!172421 () Bool)

(declare-fun e!197477 () Bool)

(assert (=> b!317679 (=> (not res!172421) (not e!197477))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317679 (= res!172421 (validKeyInArray!0 k0!2441))))

(declare-fun b!317680 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((array!16189 0))(
  ( (array!16190 (arr!7658 (Array (_ BitVec 32) (_ BitVec 64))) (size!8010 (_ BitVec 32))) )
))
(declare-fun lt!155089 () array!16189)

(declare-fun lt!155090 () (_ BitVec 32))

(declare-fun e!197475 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2809 0))(
  ( (MissingZero!2809 (index!13412 (_ BitVec 32))) (Found!2809 (index!13413 (_ BitVec 32))) (Intermediate!2809 (undefined!3621 Bool) (index!13414 (_ BitVec 32)) (x!31637 (_ BitVec 32))) (Undefined!2809) (MissingVacant!2809 (index!13415 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16189 (_ BitVec 32)) SeekEntryResult!2809)

(assert (=> b!317680 (= e!197475 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155089 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155090 k0!2441 lt!155089 mask!3709)))))

(declare-fun a!3293 () array!16189)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317680 (= lt!155089 (array!16190 (store (arr!7658 a!3293) i!1240 k0!2441) (size!8010 a!3293)))))

(declare-fun b!317681 () Bool)

(declare-fun e!197479 () Bool)

(assert (=> b!317681 (= e!197477 e!197479)))

(declare-fun res!172417 () Bool)

(assert (=> b!317681 (=> (not res!172417) (not e!197479))))

(declare-fun lt!155087 () SeekEntryResult!2809)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317681 (= res!172417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155087))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317681 (= lt!155087 (Intermediate!2809 false resIndex!52 resX!52))))

(declare-fun res!172416 () Bool)

(assert (=> start!31820 (=> (not res!172416) (not e!197477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31820 (= res!172416 (validMask!0 mask!3709))))

(assert (=> start!31820 e!197477))

(declare-fun array_inv!5612 (array!16189) Bool)

(assert (=> start!31820 (array_inv!5612 a!3293)))

(assert (=> start!31820 true))

(declare-fun b!317682 () Bool)

(declare-fun e!197476 () Bool)

(assert (=> b!317682 (= e!197479 e!197476)))

(declare-fun res!172423 () Bool)

(assert (=> b!317682 (=> (not res!172423) (not e!197476))))

(declare-fun lt!155088 () SeekEntryResult!2809)

(assert (=> b!317682 (= res!172423 (and (= lt!155088 lt!155087) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7658 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317682 (= lt!155088 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317683 () Bool)

(declare-fun res!172422 () Bool)

(assert (=> b!317683 (=> (not res!172422) (not e!197479))))

(assert (=> b!317683 (= res!172422 (and (= (select (arr!7658 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8010 a!3293))))))

(declare-fun b!317684 () Bool)

(assert (=> b!317684 (= e!197476 (not true))))

(assert (=> b!317684 e!197475))

(declare-fun res!172424 () Bool)

(assert (=> b!317684 (=> (not res!172424) (not e!197475))))

(assert (=> b!317684 (= res!172424 (= lt!155088 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155090 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317684 (= lt!155090 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317685 () Bool)

(declare-fun res!172425 () Bool)

(assert (=> b!317685 (=> (not res!172425) (not e!197477))))

(assert (=> b!317685 (= res!172425 (and (= (size!8010 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8010 a!3293))))))

(declare-fun b!317686 () Bool)

(declare-fun res!172420 () Bool)

(assert (=> b!317686 (=> (not res!172420) (not e!197477))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16189 (_ BitVec 32)) SeekEntryResult!2809)

(assert (=> b!317686 (= res!172420 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2809 i!1240)))))

(declare-fun b!317687 () Bool)

(declare-fun res!172419 () Bool)

(assert (=> b!317687 (=> (not res!172419) (not e!197477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16189 (_ BitVec 32)) Bool)

(assert (=> b!317687 (= res!172419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317688 () Bool)

(declare-fun res!172418 () Bool)

(assert (=> b!317688 (=> (not res!172418) (not e!197477))))

(declare-fun arrayContainsKey!0 (array!16189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317688 (= res!172418 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31820 res!172416) b!317685))

(assert (= (and b!317685 res!172425) b!317679))

(assert (= (and b!317679 res!172421) b!317688))

(assert (= (and b!317688 res!172418) b!317686))

(assert (= (and b!317686 res!172420) b!317687))

(assert (= (and b!317687 res!172419) b!317681))

(assert (= (and b!317681 res!172417) b!317683))

(assert (= (and b!317683 res!172422) b!317682))

(assert (= (and b!317682 res!172423) b!317684))

(assert (= (and b!317684 res!172424) b!317680))

(declare-fun m!326385 () Bool)

(assert (=> b!317682 m!326385))

(declare-fun m!326387 () Bool)

(assert (=> b!317682 m!326387))

(declare-fun m!326389 () Bool)

(assert (=> b!317688 m!326389))

(declare-fun m!326391 () Bool)

(assert (=> b!317687 m!326391))

(declare-fun m!326393 () Bool)

(assert (=> b!317686 m!326393))

(declare-fun m!326395 () Bool)

(assert (=> b!317683 m!326395))

(declare-fun m!326397 () Bool)

(assert (=> b!317681 m!326397))

(assert (=> b!317681 m!326397))

(declare-fun m!326399 () Bool)

(assert (=> b!317681 m!326399))

(declare-fun m!326401 () Bool)

(assert (=> b!317679 m!326401))

(declare-fun m!326403 () Bool)

(assert (=> b!317684 m!326403))

(declare-fun m!326405 () Bool)

(assert (=> b!317684 m!326405))

(declare-fun m!326407 () Bool)

(assert (=> start!31820 m!326407))

(declare-fun m!326409 () Bool)

(assert (=> start!31820 m!326409))

(declare-fun m!326411 () Bool)

(assert (=> b!317680 m!326411))

(declare-fun m!326413 () Bool)

(assert (=> b!317680 m!326413))

(declare-fun m!326415 () Bool)

(assert (=> b!317680 m!326415))

(check-sat (not b!317682) (not b!317679) (not b!317680) (not b!317688) (not b!317681) (not start!31820) (not b!317684) (not b!317686) (not b!317687))
(check-sat)
