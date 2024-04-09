; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31064 () Bool)

(assert start!31064)

(declare-fun b!312234 () Bool)

(declare-fun e!194707 () Bool)

(declare-fun e!194706 () Bool)

(assert (=> b!312234 (= e!194707 e!194706)))

(declare-fun res!168855 () Bool)

(assert (=> b!312234 (=> (not res!168855) (not e!194706))))

(declare-datatypes ((array!15964 0))(
  ( (array!15965 (arr!7562 (Array (_ BitVec 32) (_ BitVec 64))) (size!7914 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15964)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2713 0))(
  ( (MissingZero!2713 (index!13028 (_ BitVec 32))) (Found!2713 (index!13029 (_ BitVec 32))) (Intermediate!2713 (undefined!3525 Bool) (index!13030 (_ BitVec 32)) (x!31201 (_ BitVec 32))) (Undefined!2713) (MissingVacant!2713 (index!13031 (_ BitVec 32))) )
))
(declare-fun lt!152992 () SeekEntryResult!2713)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15964 (_ BitVec 32)) SeekEntryResult!2713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312234 (= res!168855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152992))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312234 (= lt!152992 (Intermediate!2713 false resIndex!52 resX!52))))

(declare-fun b!312235 () Bool)

(declare-fun res!168850 () Bool)

(assert (=> b!312235 (=> (not res!168850) (not e!194707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15964 (_ BitVec 32)) Bool)

(assert (=> b!312235 (= res!168850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312236 () Bool)

(declare-fun res!168848 () Bool)

(assert (=> b!312236 (=> (not res!168848) (not e!194706))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312236 (= res!168848 (and (= (select (arr!7562 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7914 a!3293))))))

(declare-fun b!312237 () Bool)

(declare-fun e!194709 () Bool)

(declare-fun e!194710 () Bool)

(assert (=> b!312237 (= e!194709 (not e!194710))))

(declare-fun res!168853 () Bool)

(assert (=> b!312237 (=> res!168853 e!194710)))

(declare-fun lt!152991 () SeekEntryResult!2713)

(declare-fun lt!152987 () (_ BitVec 32))

(assert (=> b!312237 (= res!168853 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152987 #b00000000000000000000000000000000) (bvsge lt!152987 (size!7914 a!3293)) (not (= lt!152991 lt!152992))))))

(declare-fun lt!152989 () SeekEntryResult!2713)

(declare-fun lt!152990 () SeekEntryResult!2713)

(assert (=> b!312237 (= lt!152989 lt!152990)))

(declare-fun lt!152988 () array!15964)

(assert (=> b!312237 (= lt!152990 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152987 k0!2441 lt!152988 mask!3709))))

(assert (=> b!312237 (= lt!152989 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152988 mask!3709))))

(assert (=> b!312237 (= lt!152988 (array!15965 (store (arr!7562 a!3293) i!1240 k0!2441) (size!7914 a!3293)))))

(declare-fun lt!152993 () SeekEntryResult!2713)

(assert (=> b!312237 (= lt!152993 lt!152991)))

(assert (=> b!312237 (= lt!152991 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152987 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312237 (= lt!152987 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312238 () Bool)

(declare-fun res!168847 () Bool)

(assert (=> b!312238 (=> (not res!168847) (not e!194707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312238 (= res!168847 (validKeyInArray!0 k0!2441))))

(declare-fun b!312239 () Bool)

(declare-fun res!168846 () Bool)

(assert (=> b!312239 (=> (not res!168846) (not e!194707))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15964 (_ BitVec 32)) SeekEntryResult!2713)

(assert (=> b!312239 (= res!168846 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2713 i!1240)))))

(declare-fun res!168852 () Bool)

(assert (=> start!31064 (=> (not res!168852) (not e!194707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31064 (= res!168852 (validMask!0 mask!3709))))

(assert (=> start!31064 e!194707))

(declare-fun array_inv!5516 (array!15964) Bool)

(assert (=> start!31064 (array_inv!5516 a!3293)))

(assert (=> start!31064 true))

(declare-fun b!312240 () Bool)

(assert (=> b!312240 (= e!194706 e!194709)))

(declare-fun res!168851 () Bool)

(assert (=> b!312240 (=> (not res!168851) (not e!194709))))

(assert (=> b!312240 (= res!168851 (and (= lt!152993 lt!152992) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7562 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312240 (= lt!152993 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312241 () Bool)

(declare-fun res!168849 () Bool)

(assert (=> b!312241 (=> (not res!168849) (not e!194707))))

(assert (=> b!312241 (= res!168849 (and (= (size!7914 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7914 a!3293))))))

(declare-fun b!312242 () Bool)

(declare-fun res!168854 () Bool)

(assert (=> b!312242 (=> (not res!168854) (not e!194707))))

(declare-fun arrayContainsKey!0 (array!15964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312242 (= res!168854 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312243 () Bool)

(assert (=> b!312243 (= e!194710 (bvsge mask!3709 #b00000000000000000000000000000000))))

(assert (=> b!312243 (= lt!152990 lt!152991)))

(declare-datatypes ((Unit!9624 0))(
  ( (Unit!9625) )
))
(declare-fun lt!152986 () Unit!9624)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15964 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9624)

(assert (=> b!312243 (= lt!152986 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152987 resIndex!52 resX!52 mask!3709))))

(assert (= (and start!31064 res!168852) b!312241))

(assert (= (and b!312241 res!168849) b!312238))

(assert (= (and b!312238 res!168847) b!312242))

(assert (= (and b!312242 res!168854) b!312239))

(assert (= (and b!312239 res!168846) b!312235))

(assert (= (and b!312235 res!168850) b!312234))

(assert (= (and b!312234 res!168855) b!312236))

(assert (= (and b!312236 res!168848) b!312240))

(assert (= (and b!312240 res!168851) b!312237))

(assert (= (and b!312237 (not res!168853)) b!312243))

(declare-fun m!322361 () Bool)

(assert (=> b!312238 m!322361))

(declare-fun m!322363 () Bool)

(assert (=> b!312234 m!322363))

(assert (=> b!312234 m!322363))

(declare-fun m!322365 () Bool)

(assert (=> b!312234 m!322365))

(declare-fun m!322367 () Bool)

(assert (=> b!312240 m!322367))

(declare-fun m!322369 () Bool)

(assert (=> b!312240 m!322369))

(declare-fun m!322371 () Bool)

(assert (=> b!312237 m!322371))

(declare-fun m!322373 () Bool)

(assert (=> b!312237 m!322373))

(declare-fun m!322375 () Bool)

(assert (=> b!312237 m!322375))

(declare-fun m!322377 () Bool)

(assert (=> b!312237 m!322377))

(declare-fun m!322379 () Bool)

(assert (=> b!312237 m!322379))

(declare-fun m!322381 () Bool)

(assert (=> b!312236 m!322381))

(declare-fun m!322383 () Bool)

(assert (=> b!312243 m!322383))

(declare-fun m!322385 () Bool)

(assert (=> b!312239 m!322385))

(declare-fun m!322387 () Bool)

(assert (=> b!312235 m!322387))

(declare-fun m!322389 () Bool)

(assert (=> b!312242 m!322389))

(declare-fun m!322391 () Bool)

(assert (=> start!31064 m!322391))

(declare-fun m!322393 () Bool)

(assert (=> start!31064 m!322393))

(check-sat (not start!31064) (not b!312237) (not b!312238) (not b!312243) (not b!312234) (not b!312240) (not b!312235) (not b!312239) (not b!312242))
(check-sat)
