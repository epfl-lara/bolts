; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33304 () Bool)

(assert start!33304)

(declare-fun b!330903 () Bool)

(declare-fun e!203036 () Bool)

(assert (=> b!330903 (= e!203036 false)))

(declare-datatypes ((array!16908 0))(
  ( (array!16909 (arr!7992 (Array (_ BitVec 32) (_ BitVec 64))) (size!8344 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16908)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((Unit!10326 0))(
  ( (Unit!10327) )
))
(declare-fun lt!158675 () Unit!10326)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16908 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10326)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330903 (= lt!158675 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!330904 () Bool)

(declare-fun res!182467 () Bool)

(assert (=> b!330904 (=> (not res!182467) (not e!203036))))

(assert (=> b!330904 (= res!182467 (and (= (select (arr!7992 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8344 a!3305))))))

(declare-fun b!330905 () Bool)

(declare-fun res!182465 () Bool)

(declare-fun e!203038 () Bool)

(assert (=> b!330905 (=> (not res!182465) (not e!203038))))

(declare-datatypes ((SeekEntryResult!3134 0))(
  ( (MissingZero!3134 (index!14712 (_ BitVec 32))) (Found!3134 (index!14713 (_ BitVec 32))) (Intermediate!3134 (undefined!3946 Bool) (index!14714 (_ BitVec 32)) (x!32961 (_ BitVec 32))) (Undefined!3134) (MissingVacant!3134 (index!14715 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16908 (_ BitVec 32)) SeekEntryResult!3134)

(assert (=> b!330905 (= res!182465 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3134 i!1250)))))

(declare-fun b!330906 () Bool)

(declare-fun res!182471 () Bool)

(assert (=> b!330906 (=> (not res!182471) (not e!203038))))

(assert (=> b!330906 (= res!182471 (and (= (size!8344 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8344 a!3305))))))

(declare-fun b!330907 () Bool)

(declare-fun res!182470 () Bool)

(assert (=> b!330907 (=> (not res!182470) (not e!203036))))

(declare-fun lt!158674 () SeekEntryResult!3134)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16908 (_ BitVec 32)) SeekEntryResult!3134)

(assert (=> b!330907 (= res!182470 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158674))))

(declare-fun b!330908 () Bool)

(assert (=> b!330908 (= e!203038 e!203036)))

(declare-fun res!182472 () Bool)

(assert (=> b!330908 (=> (not res!182472) (not e!203036))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330908 (= res!182472 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158674))))

(assert (=> b!330908 (= lt!158674 (Intermediate!3134 false resIndex!58 resX!58))))

(declare-fun res!182464 () Bool)

(assert (=> start!33304 (=> (not res!182464) (not e!203038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33304 (= res!182464 (validMask!0 mask!3777))))

(assert (=> start!33304 e!203038))

(declare-fun array_inv!5946 (array!16908) Bool)

(assert (=> start!33304 (array_inv!5946 a!3305)))

(assert (=> start!33304 true))

(declare-fun b!330909 () Bool)

(declare-fun res!182469 () Bool)

(assert (=> b!330909 (=> (not res!182469) (not e!203038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330909 (= res!182469 (validKeyInArray!0 k!2497))))

(declare-fun b!330910 () Bool)

(declare-fun res!182463 () Bool)

(assert (=> b!330910 (=> (not res!182463) (not e!203038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16908 (_ BitVec 32)) Bool)

(assert (=> b!330910 (= res!182463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330911 () Bool)

(declare-fun res!182468 () Bool)

(assert (=> b!330911 (=> (not res!182468) (not e!203036))))

(assert (=> b!330911 (= res!182468 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7992 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330912 () Bool)

(declare-fun res!182466 () Bool)

(assert (=> b!330912 (=> (not res!182466) (not e!203038))))

(declare-fun arrayContainsKey!0 (array!16908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330912 (= res!182466 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!33304 res!182464) b!330906))

(assert (= (and b!330906 res!182471) b!330909))

(assert (= (and b!330909 res!182469) b!330912))

(assert (= (and b!330912 res!182466) b!330905))

(assert (= (and b!330905 res!182465) b!330910))

(assert (= (and b!330910 res!182463) b!330908))

(assert (= (and b!330908 res!182472) b!330904))

(assert (= (and b!330904 res!182467) b!330907))

(assert (= (and b!330907 res!182470) b!330911))

(assert (= (and b!330911 res!182468) b!330903))

(declare-fun m!335945 () Bool)

(assert (=> start!33304 m!335945))

(declare-fun m!335947 () Bool)

(assert (=> start!33304 m!335947))

(declare-fun m!335949 () Bool)

(assert (=> b!330909 m!335949))

(declare-fun m!335951 () Bool)

(assert (=> b!330910 m!335951))

(declare-fun m!335953 () Bool)

(assert (=> b!330912 m!335953))

(declare-fun m!335955 () Bool)

(assert (=> b!330907 m!335955))

(declare-fun m!335957 () Bool)

(assert (=> b!330904 m!335957))

(declare-fun m!335959 () Bool)

(assert (=> b!330905 m!335959))

(declare-fun m!335961 () Bool)

(assert (=> b!330911 m!335961))

(declare-fun m!335963 () Bool)

(assert (=> b!330903 m!335963))

(assert (=> b!330903 m!335963))

(declare-fun m!335965 () Bool)

(assert (=> b!330903 m!335965))

(declare-fun m!335967 () Bool)

(assert (=> b!330908 m!335967))

(assert (=> b!330908 m!335967))

(declare-fun m!335969 () Bool)

(assert (=> b!330908 m!335969))

(push 1)

(assert (not b!330909))

(assert (not b!330905))

(assert (not b!330908))

(assert (not b!330910))

(assert (not b!330903))

(assert (not start!33304))

(assert (not b!330912))

