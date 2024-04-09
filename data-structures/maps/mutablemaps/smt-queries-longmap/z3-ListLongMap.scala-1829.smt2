; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33086 () Bool)

(assert start!33086)

(declare-fun b!329023 () Bool)

(declare-fun res!181372 () Bool)

(declare-fun e!202163 () Bool)

(assert (=> b!329023 (=> (not res!181372) (not e!202163))))

(declare-datatypes ((array!16843 0))(
  ( (array!16844 (arr!7964 (Array (_ BitVec 32) (_ BitVec 64))) (size!8316 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16843)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329023 (= res!181372 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329024 () Bool)

(declare-fun res!181370 () Bool)

(assert (=> b!329024 (=> (not res!181370) (not e!202163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329024 (= res!181370 (validKeyInArray!0 k0!2497))))

(declare-fun b!329025 () Bool)

(declare-fun e!202164 () Bool)

(assert (=> b!329025 (= e!202163 e!202164)))

(declare-fun res!181367 () Bool)

(assert (=> b!329025 (=> (not res!181367) (not e!202164))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3106 0))(
  ( (MissingZero!3106 (index!14600 (_ BitVec 32))) (Found!3106 (index!14601 (_ BitVec 32))) (Intermediate!3106 (undefined!3918 Bool) (index!14602 (_ BitVec 32)) (x!32834 (_ BitVec 32))) (Undefined!3106) (MissingVacant!3106 (index!14603 (_ BitVec 32))) )
))
(declare-fun lt!158123 () SeekEntryResult!3106)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16843 (_ BitVec 32)) SeekEntryResult!3106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329025 (= res!181367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158123))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329025 (= lt!158123 (Intermediate!3106 false resIndex!58 resX!58))))

(declare-fun res!181369 () Bool)

(assert (=> start!33086 (=> (not res!181369) (not e!202163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33086 (= res!181369 (validMask!0 mask!3777))))

(assert (=> start!33086 e!202163))

(declare-fun array_inv!5918 (array!16843) Bool)

(assert (=> start!33086 (array_inv!5918 a!3305)))

(assert (=> start!33086 true))

(declare-fun b!329026 () Bool)

(declare-fun res!181366 () Bool)

(assert (=> b!329026 (=> (not res!181366) (not e!202163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16843 (_ BitVec 32)) Bool)

(assert (=> b!329026 (= res!181366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329027 () Bool)

(declare-fun res!181373 () Bool)

(assert (=> b!329027 (=> (not res!181373) (not e!202164))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329027 (= res!181373 (and (= (select (arr!7964 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8316 a!3305))))))

(declare-fun b!329028 () Bool)

(declare-fun e!202165 () Bool)

(assert (=> b!329028 (= e!202164 e!202165)))

(declare-fun res!181368 () Bool)

(assert (=> b!329028 (=> (not res!181368) (not e!202165))))

(declare-fun lt!158122 () SeekEntryResult!3106)

(assert (=> b!329028 (= res!181368 (and (= lt!158122 lt!158123) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7964 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7964 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7964 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329028 (= lt!158122 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!329029 () Bool)

(declare-fun res!181374 () Bool)

(assert (=> b!329029 (=> (not res!181374) (not e!202163))))

(assert (=> b!329029 (= res!181374 (and (= (size!8316 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8316 a!3305))))))

(declare-fun b!329030 () Bool)

(assert (=> b!329030 (= e!202165 (not false))))

(assert (=> b!329030 (= lt!158122 (Intermediate!3106 false index!1840 resX!58))))

(declare-fun b!329031 () Bool)

(declare-fun res!181371 () Bool)

(assert (=> b!329031 (=> (not res!181371) (not e!202163))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16843 (_ BitVec 32)) SeekEntryResult!3106)

(assert (=> b!329031 (= res!181371 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3106 i!1250)))))

(assert (= (and start!33086 res!181369) b!329029))

(assert (= (and b!329029 res!181374) b!329024))

(assert (= (and b!329024 res!181370) b!329023))

(assert (= (and b!329023 res!181372) b!329031))

(assert (= (and b!329031 res!181371) b!329026))

(assert (= (and b!329026 res!181366) b!329025))

(assert (= (and b!329025 res!181367) b!329027))

(assert (= (and b!329027 res!181373) b!329028))

(assert (= (and b!329028 res!181368) b!329030))

(declare-fun m!334787 () Bool)

(assert (=> b!329027 m!334787))

(declare-fun m!334789 () Bool)

(assert (=> b!329026 m!334789))

(declare-fun m!334791 () Bool)

(assert (=> b!329023 m!334791))

(declare-fun m!334793 () Bool)

(assert (=> b!329031 m!334793))

(declare-fun m!334795 () Bool)

(assert (=> b!329028 m!334795))

(declare-fun m!334797 () Bool)

(assert (=> b!329028 m!334797))

(declare-fun m!334799 () Bool)

(assert (=> b!329025 m!334799))

(assert (=> b!329025 m!334799))

(declare-fun m!334801 () Bool)

(assert (=> b!329025 m!334801))

(declare-fun m!334803 () Bool)

(assert (=> b!329024 m!334803))

(declare-fun m!334805 () Bool)

(assert (=> start!33086 m!334805))

(declare-fun m!334807 () Bool)

(assert (=> start!33086 m!334807))

(check-sat (not b!329031) (not b!329025) (not b!329024) (not b!329023) (not start!33086) (not b!329028) (not b!329026))
(check-sat)
