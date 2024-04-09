; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32400 () Bool)

(assert start!32400)

(declare-fun b!322809 () Bool)

(assert (=> b!322809 false))

(declare-datatypes ((Unit!9934 0))(
  ( (Unit!9935) )
))
(declare-fun e!199663 () Unit!9934)

(declare-fun Unit!9936 () Unit!9934)

(assert (=> b!322809 (= e!199663 Unit!9936)))

(declare-fun b!322810 () Bool)

(declare-fun e!199664 () Unit!9934)

(assert (=> b!322810 (= e!199664 e!199663)))

(declare-fun c!50701 () Bool)

(declare-datatypes ((array!16535 0))(
  ( (array!16536 (arr!7822 (Array (_ BitVec 32) (_ BitVec 64))) (size!8174 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16535)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!322810 (= c!50701 (or (= (select (arr!7822 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7822 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322811 () Bool)

(declare-fun res!176673 () Bool)

(declare-fun e!199665 () Bool)

(assert (=> b!322811 (=> (not res!176673) (not e!199665))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322811 (= res!176673 (validKeyInArray!0 k!2497))))

(declare-fun b!322812 () Bool)

(declare-fun res!176664 () Bool)

(assert (=> b!322812 (=> (not res!176664) (not e!199665))))

(declare-fun arrayContainsKey!0 (array!16535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322812 (= res!176664 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322813 () Bool)

(declare-fun Unit!9937 () Unit!9934)

(assert (=> b!322813 (= e!199664 Unit!9937)))

(declare-fun b!322814 () Bool)

(declare-fun res!176669 () Bool)

(declare-fun e!199666 () Bool)

(assert (=> b!322814 (=> (not res!176669) (not e!199666))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322814 (= res!176669 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7822 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322815 () Bool)

(declare-fun res!176667 () Bool)

(assert (=> b!322815 (=> (not res!176667) (not e!199665))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322815 (= res!176667 (and (= (size!8174 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8174 a!3305))))))

(declare-fun b!322816 () Bool)

(assert (=> b!322816 false))

(declare-fun lt!156517 () Unit!9934)

(declare-fun e!199661 () Unit!9934)

(assert (=> b!322816 (= lt!156517 e!199661)))

(declare-fun c!50702 () Bool)

(declare-datatypes ((SeekEntryResult!2964 0))(
  ( (MissingZero!2964 (index!14032 (_ BitVec 32))) (Found!2964 (index!14033 (_ BitVec 32))) (Intermediate!2964 (undefined!3776 Bool) (index!14034 (_ BitVec 32)) (x!32259 (_ BitVec 32))) (Undefined!2964) (MissingVacant!2964 (index!14035 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16535 (_ BitVec 32)) SeekEntryResult!2964)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322816 (= c!50702 (is-Intermediate!2964 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9938 () Unit!9934)

(assert (=> b!322816 (= e!199663 Unit!9938)))

(declare-fun b!322817 () Bool)

(declare-fun Unit!9939 () Unit!9934)

(assert (=> b!322817 (= e!199661 Unit!9939)))

(declare-fun b!322818 () Bool)

(declare-fun res!176672 () Bool)

(assert (=> b!322818 (=> (not res!176672) (not e!199666))))

(declare-fun lt!156518 () SeekEntryResult!2964)

(assert (=> b!322818 (= res!176672 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156518))))

(declare-fun b!322819 () Bool)

(declare-fun res!176665 () Bool)

(assert (=> b!322819 (=> (not res!176665) (not e!199666))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322819 (= res!176665 (and (= (select (arr!7822 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8174 a!3305))))))

(declare-fun res!176671 () Bool)

(assert (=> start!32400 (=> (not res!176671) (not e!199665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32400 (= res!176671 (validMask!0 mask!3777))))

(assert (=> start!32400 e!199665))

(declare-fun array_inv!5776 (array!16535) Bool)

(assert (=> start!32400 (array_inv!5776 a!3305)))

(assert (=> start!32400 true))

(declare-fun b!322820 () Bool)

(assert (=> b!322820 (= e!199665 e!199666)))

(declare-fun res!176666 () Bool)

(assert (=> b!322820 (=> (not res!176666) (not e!199666))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322820 (= res!176666 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156518))))

(assert (=> b!322820 (= lt!156518 (Intermediate!2964 false resIndex!58 resX!58))))

(declare-fun b!322821 () Bool)

(declare-fun res!176670 () Bool)

(assert (=> b!322821 (=> (not res!176670) (not e!199665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16535 (_ BitVec 32)) Bool)

(assert (=> b!322821 (= res!176670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322822 () Bool)

(declare-fun res!176668 () Bool)

(assert (=> b!322822 (=> (not res!176668) (not e!199665))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16535 (_ BitVec 32)) SeekEntryResult!2964)

(assert (=> b!322822 (= res!176668 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2964 i!1250)))))

(declare-fun b!322823 () Bool)

(declare-fun Unit!9940 () Unit!9934)

(assert (=> b!322823 (= e!199661 Unit!9940)))

(assert (=> b!322823 false))

(declare-fun b!322824 () Bool)

(assert (=> b!322824 (= e!199666 (not true))))

(assert (=> b!322824 (= index!1840 resIndex!58)))

(declare-fun lt!156516 () Unit!9934)

(assert (=> b!322824 (= lt!156516 e!199664)))

(declare-fun c!50700 () Bool)

(assert (=> b!322824 (= c!50700 (not (= resIndex!58 index!1840)))))

(assert (= (and start!32400 res!176671) b!322815))

(assert (= (and b!322815 res!176667) b!322811))

(assert (= (and b!322811 res!176673) b!322812))

(assert (= (and b!322812 res!176664) b!322822))

(assert (= (and b!322822 res!176668) b!322821))

(assert (= (and b!322821 res!176670) b!322820))

(assert (= (and b!322820 res!176666) b!322819))

(assert (= (and b!322819 res!176665) b!322818))

(assert (= (and b!322818 res!176672) b!322814))

(assert (= (and b!322814 res!176669) b!322824))

(assert (= (and b!322824 c!50700) b!322810))

(assert (= (and b!322824 (not c!50700)) b!322813))

(assert (= (and b!322810 c!50701) b!322809))

(assert (= (and b!322810 (not c!50701)) b!322816))

(assert (= (and b!322816 c!50702) b!322817))

(assert (= (and b!322816 (not c!50702)) b!322823))

(declare-fun m!330427 () Bool)

(assert (=> start!32400 m!330427))

(declare-fun m!330429 () Bool)

(assert (=> start!32400 m!330429))

(declare-fun m!330431 () Bool)

(assert (=> b!322820 m!330431))

(assert (=> b!322820 m!330431))

(declare-fun m!330433 () Bool)

(assert (=> b!322820 m!330433))

(declare-fun m!330435 () Bool)

(assert (=> b!322818 m!330435))

(declare-fun m!330437 () Bool)

(assert (=> b!322811 m!330437))

(declare-fun m!330439 () Bool)

(assert (=> b!322810 m!330439))

(declare-fun m!330441 () Bool)

(assert (=> b!322821 m!330441))

(declare-fun m!330443 () Bool)

(assert (=> b!322816 m!330443))

(assert (=> b!322816 m!330443))

(declare-fun m!330445 () Bool)

(assert (=> b!322816 m!330445))

(declare-fun m!330447 () Bool)

(assert (=> b!322819 m!330447))

(declare-fun m!330449 () Bool)

(assert (=> b!322822 m!330449))

(declare-fun m!330451 () Bool)

(assert (=> b!322812 m!330451))

(assert (=> b!322814 m!330439))

(push 1)

