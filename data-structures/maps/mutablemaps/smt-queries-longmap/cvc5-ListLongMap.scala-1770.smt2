; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32274 () Bool)

(assert start!32274)

(declare-fun res!175516 () Bool)

(declare-fun e!199064 () Bool)

(assert (=> start!32274 (=> (not res!175516) (not e!199064))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32274 (= res!175516 (validMask!0 mask!3777))))

(assert (=> start!32274 e!199064))

(declare-datatypes ((array!16460 0))(
  ( (array!16461 (arr!7786 (Array (_ BitVec 32) (_ BitVec 64))) (size!8138 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16460)

(declare-fun array_inv!5740 (array!16460) Bool)

(assert (=> start!32274 (array_inv!5740 a!3305)))

(assert (=> start!32274 true))

(declare-fun b!321238 () Bool)

(declare-fun res!175524 () Bool)

(assert (=> b!321238 (=> (not res!175524) (not e!199064))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321238 (= res!175524 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321239 () Bool)

(declare-fun res!175521 () Bool)

(assert (=> b!321239 (=> (not res!175521) (not e!199064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321239 (= res!175521 (validKeyInArray!0 k!2497))))

(declare-fun b!321240 () Bool)

(declare-fun e!199066 () Bool)

(assert (=> b!321240 (= e!199064 e!199066)))

(declare-fun res!175518 () Bool)

(assert (=> b!321240 (=> (not res!175518) (not e!199066))))

(declare-datatypes ((SeekEntryResult!2928 0))(
  ( (MissingZero!2928 (index!13888 (_ BitVec 32))) (Found!2928 (index!13889 (_ BitVec 32))) (Intermediate!2928 (undefined!3740 Bool) (index!13890 (_ BitVec 32)) (x!32118 (_ BitVec 32))) (Undefined!2928) (MissingVacant!2928 (index!13891 (_ BitVec 32))) )
))
(declare-fun lt!156155 () SeekEntryResult!2928)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16460 (_ BitVec 32)) SeekEntryResult!2928)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321240 (= res!175518 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156155))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321240 (= lt!156155 (Intermediate!2928 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun b!321241 () Bool)

(assert (=> b!321241 (= e!199066 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7786 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7786 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7786 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!321242 () Bool)

(declare-fun res!175522 () Bool)

(assert (=> b!321242 (=> (not res!175522) (not e!199064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16460 (_ BitVec 32)) Bool)

(assert (=> b!321242 (= res!175522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321243 () Bool)

(declare-fun res!175517 () Bool)

(assert (=> b!321243 (=> (not res!175517) (not e!199066))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321243 (= res!175517 (and (= (select (arr!7786 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8138 a!3305))))))

(declare-fun b!321244 () Bool)

(declare-fun res!175523 () Bool)

(assert (=> b!321244 (=> (not res!175523) (not e!199064))))

(assert (=> b!321244 (= res!175523 (and (= (size!8138 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8138 a!3305))))))

(declare-fun b!321245 () Bool)

(declare-fun res!175519 () Bool)

(assert (=> b!321245 (=> (not res!175519) (not e!199064))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16460 (_ BitVec 32)) SeekEntryResult!2928)

(assert (=> b!321245 (= res!175519 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2928 i!1250)))))

(declare-fun b!321246 () Bool)

(declare-fun res!175520 () Bool)

(assert (=> b!321246 (=> (not res!175520) (not e!199066))))

(assert (=> b!321246 (= res!175520 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156155))))

(assert (= (and start!32274 res!175516) b!321244))

(assert (= (and b!321244 res!175523) b!321239))

(assert (= (and b!321239 res!175521) b!321238))

(assert (= (and b!321238 res!175524) b!321245))

(assert (= (and b!321245 res!175519) b!321242))

(assert (= (and b!321242 res!175522) b!321240))

(assert (= (and b!321240 res!175518) b!321243))

(assert (= (and b!321243 res!175517) b!321246))

(assert (= (and b!321246 res!175520) b!321241))

(declare-fun m!329425 () Bool)

(assert (=> start!32274 m!329425))

(declare-fun m!329427 () Bool)

(assert (=> start!32274 m!329427))

(declare-fun m!329429 () Bool)

(assert (=> b!321246 m!329429))

(declare-fun m!329431 () Bool)

(assert (=> b!321243 m!329431))

(declare-fun m!329433 () Bool)

(assert (=> b!321240 m!329433))

(assert (=> b!321240 m!329433))

(declare-fun m!329435 () Bool)

(assert (=> b!321240 m!329435))

(declare-fun m!329437 () Bool)

(assert (=> b!321238 m!329437))

(declare-fun m!329439 () Bool)

(assert (=> b!321241 m!329439))

(declare-fun m!329441 () Bool)

(assert (=> b!321239 m!329441))

(declare-fun m!329443 () Bool)

(assert (=> b!321245 m!329443))

(declare-fun m!329445 () Bool)

(assert (=> b!321242 m!329445))

(push 1)

