; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32384 () Bool)

(assert start!32384)

(declare-fun b!322425 () Bool)

(assert (=> b!322425 false))

(declare-datatypes ((Unit!9878 0))(
  ( (Unit!9879) )
))
(declare-fun lt!156444 () Unit!9878)

(declare-fun e!199518 () Unit!9878)

(assert (=> b!322425 (= lt!156444 e!199518)))

(declare-datatypes ((array!16519 0))(
  ( (array!16520 (arr!7814 (Array (_ BitVec 32) (_ BitVec 64))) (size!8166 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16519)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun c!50629 () Bool)

(declare-fun k0!2497 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!2956 0))(
  ( (MissingZero!2956 (index!14000 (_ BitVec 32))) (Found!2956 (index!14001 (_ BitVec 32))) (Intermediate!2956 (undefined!3768 Bool) (index!14002 (_ BitVec 32)) (x!32227 (_ BitVec 32))) (Undefined!2956) (MissingVacant!2956 (index!14003 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16519 (_ BitVec 32)) SeekEntryResult!2956)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322425 (= c!50629 ((_ is Intermediate!2956) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199519 () Unit!9878)

(declare-fun Unit!9880 () Unit!9878)

(assert (=> b!322425 (= e!199519 Unit!9880)))

(declare-fun b!322426 () Bool)

(assert (=> b!322426 false))

(declare-fun Unit!9881 () Unit!9878)

(assert (=> b!322426 (= e!199519 Unit!9881)))

(declare-fun b!322427 () Bool)

(declare-fun res!176433 () Bool)

(declare-fun e!199521 () Bool)

(assert (=> b!322427 (=> (not res!176433) (not e!199521))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322427 (= res!176433 (and (= (select (arr!7814 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8166 a!3305))))))

(declare-fun b!322428 () Bool)

(declare-fun e!199520 () Unit!9878)

(assert (=> b!322428 (= e!199520 e!199519)))

(declare-fun c!50628 () Bool)

(assert (=> b!322428 (= c!50628 (or (= (select (arr!7814 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7814 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322429 () Bool)

(declare-fun res!176429 () Bool)

(declare-fun e!199517 () Bool)

(assert (=> b!322429 (=> (not res!176429) (not e!199517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322429 (= res!176429 (validKeyInArray!0 k0!2497))))

(declare-fun b!322430 () Bool)

(assert (=> b!322430 (= e!199521 (not true))))

(assert (=> b!322430 (= index!1840 resIndex!58)))

(declare-fun lt!156446 () Unit!9878)

(assert (=> b!322430 (= lt!156446 e!199520)))

(declare-fun c!50630 () Bool)

(assert (=> b!322430 (= c!50630 (not (= resIndex!58 index!1840)))))

(declare-fun b!322431 () Bool)

(declare-fun res!176427 () Bool)

(assert (=> b!322431 (=> (not res!176427) (not e!199521))))

(assert (=> b!322431 (= res!176427 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7814 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322433 () Bool)

(declare-fun res!176425 () Bool)

(assert (=> b!322433 (=> (not res!176425) (not e!199517))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16519 (_ BitVec 32)) SeekEntryResult!2956)

(assert (=> b!322433 (= res!176425 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2956 i!1250)))))

(declare-fun b!322434 () Bool)

(declare-fun Unit!9882 () Unit!9878)

(assert (=> b!322434 (= e!199518 Unit!9882)))

(assert (=> b!322434 false))

(declare-fun b!322435 () Bool)

(declare-fun res!176431 () Bool)

(assert (=> b!322435 (=> (not res!176431) (not e!199521))))

(declare-fun lt!156445 () SeekEntryResult!2956)

(assert (=> b!322435 (= res!176431 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156445))))

(declare-fun b!322436 () Bool)

(declare-fun Unit!9883 () Unit!9878)

(assert (=> b!322436 (= e!199518 Unit!9883)))

(declare-fun b!322437 () Bool)

(declare-fun res!176424 () Bool)

(assert (=> b!322437 (=> (not res!176424) (not e!199517))))

(assert (=> b!322437 (= res!176424 (and (= (size!8166 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8166 a!3305))))))

(declare-fun b!322438 () Bool)

(assert (=> b!322438 (= e!199517 e!199521)))

(declare-fun res!176430 () Bool)

(assert (=> b!322438 (=> (not res!176430) (not e!199521))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322438 (= res!176430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156445))))

(assert (=> b!322438 (= lt!156445 (Intermediate!2956 false resIndex!58 resX!58))))

(declare-fun res!176432 () Bool)

(assert (=> start!32384 (=> (not res!176432) (not e!199517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32384 (= res!176432 (validMask!0 mask!3777))))

(assert (=> start!32384 e!199517))

(declare-fun array_inv!5768 (array!16519) Bool)

(assert (=> start!32384 (array_inv!5768 a!3305)))

(assert (=> start!32384 true))

(declare-fun b!322432 () Bool)

(declare-fun res!176428 () Bool)

(assert (=> b!322432 (=> (not res!176428) (not e!199517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16519 (_ BitVec 32)) Bool)

(assert (=> b!322432 (= res!176428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322439 () Bool)

(declare-fun Unit!9884 () Unit!9878)

(assert (=> b!322439 (= e!199520 Unit!9884)))

(declare-fun b!322440 () Bool)

(declare-fun res!176426 () Bool)

(assert (=> b!322440 (=> (not res!176426) (not e!199517))))

(declare-fun arrayContainsKey!0 (array!16519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322440 (= res!176426 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32384 res!176432) b!322437))

(assert (= (and b!322437 res!176424) b!322429))

(assert (= (and b!322429 res!176429) b!322440))

(assert (= (and b!322440 res!176426) b!322433))

(assert (= (and b!322433 res!176425) b!322432))

(assert (= (and b!322432 res!176428) b!322438))

(assert (= (and b!322438 res!176430) b!322427))

(assert (= (and b!322427 res!176433) b!322435))

(assert (= (and b!322435 res!176431) b!322431))

(assert (= (and b!322431 res!176427) b!322430))

(assert (= (and b!322430 c!50630) b!322428))

(assert (= (and b!322430 (not c!50630)) b!322439))

(assert (= (and b!322428 c!50628) b!322426))

(assert (= (and b!322428 (not c!50628)) b!322425))

(assert (= (and b!322425 c!50629) b!322436))

(assert (= (and b!322425 (not c!50629)) b!322434))

(declare-fun m!330219 () Bool)

(assert (=> b!322425 m!330219))

(assert (=> b!322425 m!330219))

(declare-fun m!330221 () Bool)

(assert (=> b!322425 m!330221))

(declare-fun m!330223 () Bool)

(assert (=> b!322438 m!330223))

(assert (=> b!322438 m!330223))

(declare-fun m!330225 () Bool)

(assert (=> b!322438 m!330225))

(declare-fun m!330227 () Bool)

(assert (=> b!322429 m!330227))

(declare-fun m!330229 () Bool)

(assert (=> b!322435 m!330229))

(declare-fun m!330231 () Bool)

(assert (=> b!322431 m!330231))

(declare-fun m!330233 () Bool)

(assert (=> b!322440 m!330233))

(declare-fun m!330235 () Bool)

(assert (=> b!322433 m!330235))

(declare-fun m!330237 () Bool)

(assert (=> start!32384 m!330237))

(declare-fun m!330239 () Bool)

(assert (=> start!32384 m!330239))

(declare-fun m!330241 () Bool)

(assert (=> b!322427 m!330241))

(declare-fun m!330243 () Bool)

(assert (=> b!322432 m!330243))

(assert (=> b!322428 m!330231))

(check-sat (not b!322429) (not b!322433) (not b!322425) (not b!322432) (not b!322435) (not b!322440) (not b!322438) (not start!32384))
(check-sat)
