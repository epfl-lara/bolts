; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46778 () Bool)

(assert start!46778)

(declare-fun b!516340 () Bool)

(declare-fun res!316064 () Bool)

(declare-fun e!301342 () Bool)

(assert (=> b!516340 (=> (not res!316064) (not e!301342))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516340 (= res!316064 (validKeyInArray!0 k!2280))))

(declare-fun b!516341 () Bool)

(declare-fun res!316055 () Bool)

(assert (=> b!516341 (=> (not res!316055) (not e!301342))))

(declare-datatypes ((array!33050 0))(
  ( (array!33051 (arr!15890 (Array (_ BitVec 32) (_ BitVec 64))) (size!16254 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33050)

(declare-fun arrayContainsKey!0 (array!33050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516341 (= res!316055 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516342 () Bool)

(declare-fun e!301340 () Bool)

(assert (=> b!516342 (= e!301342 e!301340)))

(declare-fun res!316061 () Bool)

(assert (=> b!516342 (=> (not res!316061) (not e!301340))))

(declare-datatypes ((SeekEntryResult!4364 0))(
  ( (MissingZero!4364 (index!19644 (_ BitVec 32))) (Found!4364 (index!19645 (_ BitVec 32))) (Intermediate!4364 (undefined!5176 Bool) (index!19646 (_ BitVec 32)) (x!48626 (_ BitVec 32))) (Undefined!4364) (MissingVacant!4364 (index!19647 (_ BitVec 32))) )
))
(declare-fun lt!236422 () SeekEntryResult!4364)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516342 (= res!316061 (or (= lt!236422 (MissingZero!4364 i!1204)) (= lt!236422 (MissingVacant!4364 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33050 (_ BitVec 32)) SeekEntryResult!4364)

(assert (=> b!516342 (= lt!236422 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!301341 () Bool)

(declare-fun b!516343 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516343 (= e!301341 (= (seekEntryOrOpen!0 (select (arr!15890 a!3235) j!176) a!3235 mask!3524) (Found!4364 j!176)))))

(declare-fun b!516344 () Bool)

(declare-fun res!316056 () Bool)

(assert (=> b!516344 (=> (not res!316056) (not e!301342))))

(assert (=> b!516344 (= res!316056 (validKeyInArray!0 (select (arr!15890 a!3235) j!176)))))

(declare-fun b!516345 () Bool)

(declare-fun res!316054 () Bool)

(declare-fun e!301339 () Bool)

(assert (=> b!516345 (=> res!316054 e!301339)))

(declare-fun lt!236426 () SeekEntryResult!4364)

(assert (=> b!516345 (= res!316054 (or (undefined!5176 lt!236426) (not (is-Intermediate!4364 lt!236426))))))

(declare-fun b!516346 () Bool)

(assert (=> b!516346 (= e!301339 true)))

(assert (=> b!516346 (and (bvslt (x!48626 lt!236426) #b01111111111111111111111111111110) (or (= (select (arr!15890 a!3235) (index!19646 lt!236426)) (select (arr!15890 a!3235) j!176)) (= (select (arr!15890 a!3235) (index!19646 lt!236426)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15890 a!3235) (index!19646 lt!236426)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!316058 () Bool)

(assert (=> start!46778 (=> (not res!316058) (not e!301342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46778 (= res!316058 (validMask!0 mask!3524))))

(assert (=> start!46778 e!301342))

(assert (=> start!46778 true))

(declare-fun array_inv!11664 (array!33050) Bool)

(assert (=> start!46778 (array_inv!11664 a!3235)))

(declare-fun b!516347 () Bool)

(declare-fun res!316057 () Bool)

(assert (=> b!516347 (=> (not res!316057) (not e!301340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33050 (_ BitVec 32)) Bool)

(assert (=> b!516347 (= res!316057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516348 () Bool)

(declare-fun res!316060 () Bool)

(assert (=> b!516348 (=> (not res!316060) (not e!301340))))

(declare-datatypes ((List!10101 0))(
  ( (Nil!10098) (Cons!10097 (h!10995 (_ BitVec 64)) (t!16337 List!10101)) )
))
(declare-fun arrayNoDuplicates!0 (array!33050 (_ BitVec 32) List!10101) Bool)

(assert (=> b!516348 (= res!316060 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10098))))

(declare-fun b!516349 () Bool)

(declare-fun res!316059 () Bool)

(assert (=> b!516349 (=> (not res!316059) (not e!301342))))

(assert (=> b!516349 (= res!316059 (and (= (size!16254 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16254 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16254 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516350 () Bool)

(assert (=> b!516350 (= e!301340 (not e!301339))))

(declare-fun res!316062 () Bool)

(assert (=> b!516350 (=> res!316062 e!301339)))

(declare-fun lt!236423 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33050 (_ BitVec 32)) SeekEntryResult!4364)

(assert (=> b!516350 (= res!316062 (= lt!236426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236423 (select (store (arr!15890 a!3235) i!1204 k!2280) j!176) (array!33051 (store (arr!15890 a!3235) i!1204 k!2280) (size!16254 a!3235)) mask!3524)))))

(declare-fun lt!236424 () (_ BitVec 32))

(assert (=> b!516350 (= lt!236426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236424 (select (arr!15890 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516350 (= lt!236423 (toIndex!0 (select (store (arr!15890 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516350 (= lt!236424 (toIndex!0 (select (arr!15890 a!3235) j!176) mask!3524))))

(assert (=> b!516350 e!301341))

(declare-fun res!316063 () Bool)

(assert (=> b!516350 (=> (not res!316063) (not e!301341))))

(assert (=> b!516350 (= res!316063 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15978 0))(
  ( (Unit!15979) )
))
(declare-fun lt!236425 () Unit!15978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33050 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15978)

(assert (=> b!516350 (= lt!236425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46778 res!316058) b!516349))

(assert (= (and b!516349 res!316059) b!516344))

(assert (= (and b!516344 res!316056) b!516340))

(assert (= (and b!516340 res!316064) b!516341))

(assert (= (and b!516341 res!316055) b!516342))

(assert (= (and b!516342 res!316061) b!516347))

(assert (= (and b!516347 res!316057) b!516348))

(assert (= (and b!516348 res!316060) b!516350))

(assert (= (and b!516350 res!316063) b!516343))

(assert (= (and b!516350 (not res!316062)) b!516345))

(assert (= (and b!516345 (not res!316054)) b!516346))

(declare-fun m!497879 () Bool)

(assert (=> b!516346 m!497879))

(declare-fun m!497881 () Bool)

(assert (=> b!516346 m!497881))

(assert (=> b!516344 m!497881))

(assert (=> b!516344 m!497881))

(declare-fun m!497883 () Bool)

(assert (=> b!516344 m!497883))

(declare-fun m!497885 () Bool)

(assert (=> b!516340 m!497885))

(declare-fun m!497887 () Bool)

(assert (=> b!516348 m!497887))

(assert (=> b!516343 m!497881))

(assert (=> b!516343 m!497881))

(declare-fun m!497889 () Bool)

(assert (=> b!516343 m!497889))

(declare-fun m!497891 () Bool)

(assert (=> b!516342 m!497891))

(declare-fun m!497893 () Bool)

(assert (=> start!46778 m!497893))

(declare-fun m!497895 () Bool)

(assert (=> start!46778 m!497895))

(declare-fun m!497897 () Bool)

(assert (=> b!516347 m!497897))

(declare-fun m!497899 () Bool)

(assert (=> b!516350 m!497899))

(declare-fun m!497901 () Bool)

(assert (=> b!516350 m!497901))

(declare-fun m!497903 () Bool)

(assert (=> b!516350 m!497903))

(assert (=> b!516350 m!497903))

(declare-fun m!497905 () Bool)

(assert (=> b!516350 m!497905))

(assert (=> b!516350 m!497881))

(declare-fun m!497907 () Bool)

(assert (=> b!516350 m!497907))

(assert (=> b!516350 m!497903))

(declare-fun m!497909 () Bool)

(assert (=> b!516350 m!497909))

(assert (=> b!516350 m!497881))

(declare-fun m!497911 () Bool)

(assert (=> b!516350 m!497911))

(assert (=> b!516350 m!497881))

(declare-fun m!497913 () Bool)

(assert (=> b!516350 m!497913))

(declare-fun m!497915 () Bool)

(assert (=> b!516341 m!497915))

(push 1)

