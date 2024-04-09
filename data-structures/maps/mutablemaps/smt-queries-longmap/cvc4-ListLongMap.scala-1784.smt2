; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32416 () Bool)

(assert start!32416)

(declare-fun b!323193 () Bool)

(declare-datatypes ((Unit!9990 0))(
  ( (Unit!9991) )
))
(declare-fun e!199806 () Unit!9990)

(declare-fun e!199805 () Unit!9990)

(assert (=> b!323193 (= e!199806 e!199805)))

(declare-fun c!50772 () Bool)

(declare-datatypes ((array!16551 0))(
  ( (array!16552 (arr!7830 (Array (_ BitVec 32) (_ BitVec 64))) (size!8182 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16551)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!323193 (= c!50772 (or (= (select (arr!7830 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7830 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323194 () Bool)

(declare-fun res!176905 () Bool)

(declare-fun e!199808 () Bool)

(assert (=> b!323194 (=> (not res!176905) (not e!199808))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323194 (= res!176905 (and (= (select (arr!7830 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8182 a!3305))))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun b!323195 () Bool)

(assert (=> b!323195 (= e!199808 (not (or (not (= (select (arr!7830 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(assert (=> b!323195 (= index!1840 resIndex!58)))

(declare-fun lt!156589 () Unit!9990)

(assert (=> b!323195 (= lt!156589 e!199806)))

(declare-fun c!50774 () Bool)

(assert (=> b!323195 (= c!50774 (not (= resIndex!58 index!1840)))))

(declare-fun b!323196 () Bool)

(declare-fun res!176910 () Bool)

(declare-fun e!199807 () Bool)

(assert (=> b!323196 (=> (not res!176910) (not e!199807))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323196 (= res!176910 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323197 () Bool)

(declare-fun res!176904 () Bool)

(assert (=> b!323197 (=> (not res!176904) (not e!199807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323197 (= res!176904 (validKeyInArray!0 k!2497))))

(declare-fun b!323198 () Bool)

(declare-fun res!176909 () Bool)

(assert (=> b!323198 (=> (not res!176909) (not e!199807))))

(assert (=> b!323198 (= res!176909 (and (= (size!8182 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8182 a!3305))))))

(declare-fun b!323199 () Bool)

(declare-fun res!176908 () Bool)

(assert (=> b!323199 (=> (not res!176908) (not e!199807))))

(declare-datatypes ((SeekEntryResult!2972 0))(
  ( (MissingZero!2972 (index!14064 (_ BitVec 32))) (Found!2972 (index!14065 (_ BitVec 32))) (Intermediate!2972 (undefined!3784 Bool) (index!14066 (_ BitVec 32)) (x!32283 (_ BitVec 32))) (Undefined!2972) (MissingVacant!2972 (index!14067 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16551 (_ BitVec 32)) SeekEntryResult!2972)

(assert (=> b!323199 (= res!176908 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2972 i!1250)))))

(declare-fun b!323200 () Bool)

(declare-fun res!176906 () Bool)

(assert (=> b!323200 (=> (not res!176906) (not e!199808))))

(declare-fun lt!156590 () SeekEntryResult!2972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16551 (_ BitVec 32)) SeekEntryResult!2972)

(assert (=> b!323200 (= res!176906 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156590))))

(declare-fun b!323201 () Bool)

(assert (=> b!323201 false))

(declare-fun lt!156588 () Unit!9990)

(declare-fun e!199809 () Unit!9990)

(assert (=> b!323201 (= lt!156588 e!199809)))

(declare-fun c!50773 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323201 (= c!50773 (is-Intermediate!2972 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9992 () Unit!9990)

(assert (=> b!323201 (= e!199805 Unit!9992)))

(declare-fun b!323202 () Bool)

(declare-fun res!176912 () Bool)

(assert (=> b!323202 (=> (not res!176912) (not e!199808))))

(assert (=> b!323202 (= res!176912 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7830 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323203 () Bool)

(declare-fun res!176911 () Bool)

(assert (=> b!323203 (=> (not res!176911) (not e!199807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16551 (_ BitVec 32)) Bool)

(assert (=> b!323203 (= res!176911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323204 () Bool)

(assert (=> b!323204 (= e!199807 e!199808)))

(declare-fun res!176907 () Bool)

(assert (=> b!323204 (=> (not res!176907) (not e!199808))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323204 (= res!176907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156590))))

(assert (=> b!323204 (= lt!156590 (Intermediate!2972 false resIndex!58 resX!58))))

(declare-fun b!323205 () Bool)

(assert (=> b!323205 false))

(declare-fun Unit!9993 () Unit!9990)

(assert (=> b!323205 (= e!199805 Unit!9993)))

(declare-fun b!323206 () Bool)

(declare-fun Unit!9994 () Unit!9990)

(assert (=> b!323206 (= e!199809 Unit!9994)))

(assert (=> b!323206 false))

(declare-fun b!323207 () Bool)

(declare-fun Unit!9995 () Unit!9990)

(assert (=> b!323207 (= e!199809 Unit!9995)))

(declare-fun b!323208 () Bool)

(declare-fun Unit!9996 () Unit!9990)

(assert (=> b!323208 (= e!199806 Unit!9996)))

(declare-fun res!176913 () Bool)

(assert (=> start!32416 (=> (not res!176913) (not e!199807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32416 (= res!176913 (validMask!0 mask!3777))))

(assert (=> start!32416 e!199807))

(declare-fun array_inv!5784 (array!16551) Bool)

(assert (=> start!32416 (array_inv!5784 a!3305)))

(assert (=> start!32416 true))

(assert (= (and start!32416 res!176913) b!323198))

(assert (= (and b!323198 res!176909) b!323197))

(assert (= (and b!323197 res!176904) b!323196))

(assert (= (and b!323196 res!176910) b!323199))

(assert (= (and b!323199 res!176908) b!323203))

(assert (= (and b!323203 res!176911) b!323204))

(assert (= (and b!323204 res!176907) b!323194))

(assert (= (and b!323194 res!176905) b!323200))

(assert (= (and b!323200 res!176906) b!323202))

(assert (= (and b!323202 res!176912) b!323195))

(assert (= (and b!323195 c!50774) b!323193))

(assert (= (and b!323195 (not c!50774)) b!323208))

(assert (= (and b!323193 c!50772) b!323205))

(assert (= (and b!323193 (not c!50772)) b!323201))

(assert (= (and b!323201 c!50773) b!323207))

(assert (= (and b!323201 (not c!50773)) b!323206))

(declare-fun m!330635 () Bool)

(assert (=> b!323196 m!330635))

(declare-fun m!330637 () Bool)

(assert (=> b!323193 m!330637))

(declare-fun m!330639 () Bool)

(assert (=> b!323199 m!330639))

(declare-fun m!330641 () Bool)

(assert (=> b!323204 m!330641))

(assert (=> b!323204 m!330641))

(declare-fun m!330643 () Bool)

(assert (=> b!323204 m!330643))

(declare-fun m!330645 () Bool)

(assert (=> start!32416 m!330645))

(declare-fun m!330647 () Bool)

(assert (=> start!32416 m!330647))

(declare-fun m!330649 () Bool)

(assert (=> b!323197 m!330649))

(declare-fun m!330651 () Bool)

(assert (=> b!323201 m!330651))

(assert (=> b!323201 m!330651))

(declare-fun m!330653 () Bool)

(assert (=> b!323201 m!330653))

(declare-fun m!330655 () Bool)

(assert (=> b!323194 m!330655))

(declare-fun m!330657 () Bool)

(assert (=> b!323203 m!330657))

(declare-fun m!330659 () Bool)

(assert (=> b!323200 m!330659))

(assert (=> b!323202 m!330637))

(assert (=> b!323195 m!330637))

(push 1)

(assert (not start!32416))

(assert (not b!323196))

(assert (not b!323200))

(assert (not b!323204))

(assert (not b!323197))

