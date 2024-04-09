; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47548 () Bool)

(assert start!47548)

(declare-fun b!523012 () Bool)

(declare-fun e!305043 () Bool)

(declare-fun e!305042 () Bool)

(assert (=> b!523012 (= e!305043 (not e!305042))))

(declare-fun res!320560 () Bool)

(assert (=> b!523012 (=> res!320560 e!305042)))

(declare-fun lt!239999 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4461 0))(
  ( (MissingZero!4461 (index!20050 (_ BitVec 32))) (Found!4461 (index!20051 (_ BitVec 32))) (Intermediate!4461 (undefined!5273 Bool) (index!20052 (_ BitVec 32)) (x!49059 (_ BitVec 32))) (Undefined!4461) (MissingVacant!4461 (index!20053 (_ BitVec 32))) )
))
(declare-fun lt!239995 () SeekEntryResult!4461)

(declare-datatypes ((array!33271 0))(
  ( (array!33272 (arr!15987 (Array (_ BitVec 32) (_ BitVec 64))) (size!16351 (_ BitVec 32))) )
))
(declare-fun lt!239997 () array!33271)

(declare-fun lt!239993 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33271 (_ BitVec 32)) SeekEntryResult!4461)

(assert (=> b!523012 (= res!320560 (= lt!239995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239999 lt!239993 lt!239997 mask!3524)))))

(declare-fun lt!239992 () (_ BitVec 32))

(declare-fun a!3235 () array!33271)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!523012 (= lt!239995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239992 (select (arr!15987 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523012 (= lt!239999 (toIndex!0 lt!239993 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!523012 (= lt!239993 (select (store (arr!15987 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523012 (= lt!239992 (toIndex!0 (select (arr!15987 a!3235) j!176) mask!3524))))

(assert (=> b!523012 (= lt!239997 (array!33272 (store (arr!15987 a!3235) i!1204 k!2280) (size!16351 a!3235)))))

(declare-fun e!305038 () Bool)

(assert (=> b!523012 e!305038))

(declare-fun res!320563 () Bool)

(assert (=> b!523012 (=> (not res!320563) (not e!305038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33271 (_ BitVec 32)) Bool)

(assert (=> b!523012 (= res!320563 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16310 0))(
  ( (Unit!16311) )
))
(declare-fun lt!239996 () Unit!16310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16310)

(assert (=> b!523012 (= lt!239996 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!320562 () Bool)

(declare-fun e!305044 () Bool)

(assert (=> start!47548 (=> (not res!320562) (not e!305044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47548 (= res!320562 (validMask!0 mask!3524))))

(assert (=> start!47548 e!305044))

(assert (=> start!47548 true))

(declare-fun array_inv!11761 (array!33271) Bool)

(assert (=> start!47548 (array_inv!11761 a!3235)))

(declare-fun b!523013 () Bool)

(declare-fun res!320554 () Bool)

(assert (=> b!523013 (=> res!320554 e!305042)))

(assert (=> b!523013 (= res!320554 (or (undefined!5273 lt!239995) (not (is-Intermediate!4461 lt!239995))))))

(declare-fun b!523014 () Bool)

(declare-fun res!320561 () Bool)

(assert (=> b!523014 (=> (not res!320561) (not e!305043))))

(declare-datatypes ((List!10198 0))(
  ( (Nil!10195) (Cons!10194 (h!11119 (_ BitVec 64)) (t!16434 List!10198)) )
))
(declare-fun arrayNoDuplicates!0 (array!33271 (_ BitVec 32) List!10198) Bool)

(assert (=> b!523014 (= res!320561 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10195))))

(declare-fun b!523015 () Bool)

(assert (=> b!523015 (= e!305042 (or (bvsgt #b00000000000000000000000000000000 (x!49059 lt!239995)) (bvsle (x!49059 lt!239995) #b01111111111111111111111111111110)))))

(assert (=> b!523015 (and (or (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239994 () Unit!16310)

(declare-fun e!305039 () Unit!16310)

(assert (=> b!523015 (= lt!239994 e!305039)))

(declare-fun c!61532 () Bool)

(assert (=> b!523015 (= c!61532 (= (select (arr!15987 a!3235) (index!20052 lt!239995)) (select (arr!15987 a!3235) j!176)))))

(assert (=> b!523015 (and (bvslt (x!49059 lt!239995) #b01111111111111111111111111111110) (or (= (select (arr!15987 a!3235) (index!20052 lt!239995)) (select (arr!15987 a!3235) j!176)) (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15987 a!3235) (index!20052 lt!239995)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523016 () Bool)

(declare-fun Unit!16312 () Unit!16310)

(assert (=> b!523016 (= e!305039 Unit!16312)))

(declare-fun lt!239998 () Unit!16310)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33271 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16310)

(assert (=> b!523016 (= lt!239998 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239992 #b00000000000000000000000000000000 (index!20052 lt!239995) (x!49059 lt!239995) mask!3524))))

(declare-fun res!320558 () Bool)

(assert (=> b!523016 (= res!320558 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239992 lt!239993 lt!239997 mask!3524) (Intermediate!4461 false (index!20052 lt!239995) (x!49059 lt!239995))))))

(declare-fun e!305041 () Bool)

(assert (=> b!523016 (=> (not res!320558) (not e!305041))))

(assert (=> b!523016 e!305041))

(declare-fun b!523017 () Bool)

(assert (=> b!523017 (= e!305044 e!305043)))

(declare-fun res!320553 () Bool)

(assert (=> b!523017 (=> (not res!320553) (not e!305043))))

(declare-fun lt!239991 () SeekEntryResult!4461)

(assert (=> b!523017 (= res!320553 (or (= lt!239991 (MissingZero!4461 i!1204)) (= lt!239991 (MissingVacant!4461 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33271 (_ BitVec 32)) SeekEntryResult!4461)

(assert (=> b!523017 (= lt!239991 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523018 () Bool)

(assert (=> b!523018 (= e!305041 false)))

(declare-fun b!523019 () Bool)

(declare-fun res!320556 () Bool)

(assert (=> b!523019 (=> (not res!320556) (not e!305044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523019 (= res!320556 (validKeyInArray!0 k!2280))))

(declare-fun b!523020 () Bool)

(declare-fun res!320564 () Bool)

(assert (=> b!523020 (=> (not res!320564) (not e!305044))))

(assert (=> b!523020 (= res!320564 (validKeyInArray!0 (select (arr!15987 a!3235) j!176)))))

(declare-fun b!523021 () Bool)

(assert (=> b!523021 (= e!305038 (= (seekEntryOrOpen!0 (select (arr!15987 a!3235) j!176) a!3235 mask!3524) (Found!4461 j!176)))))

(declare-fun b!523022 () Bool)

(declare-fun res!320555 () Bool)

(assert (=> b!523022 (=> (not res!320555) (not e!305044))))

(declare-fun arrayContainsKey!0 (array!33271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523022 (= res!320555 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523023 () Bool)

(declare-fun res!320559 () Bool)

(assert (=> b!523023 (=> (not res!320559) (not e!305044))))

(assert (=> b!523023 (= res!320559 (and (= (size!16351 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16351 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16351 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523024 () Bool)

(declare-fun Unit!16313 () Unit!16310)

(assert (=> b!523024 (= e!305039 Unit!16313)))

(declare-fun b!523025 () Bool)

(declare-fun res!320557 () Bool)

(assert (=> b!523025 (=> (not res!320557) (not e!305043))))

(assert (=> b!523025 (= res!320557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47548 res!320562) b!523023))

(assert (= (and b!523023 res!320559) b!523020))

(assert (= (and b!523020 res!320564) b!523019))

(assert (= (and b!523019 res!320556) b!523022))

(assert (= (and b!523022 res!320555) b!523017))

(assert (= (and b!523017 res!320553) b!523025))

(assert (= (and b!523025 res!320557) b!523014))

(assert (= (and b!523014 res!320561) b!523012))

(assert (= (and b!523012 res!320563) b!523021))

(assert (= (and b!523012 (not res!320560)) b!523013))

(assert (= (and b!523013 (not res!320554)) b!523015))

(assert (= (and b!523015 c!61532) b!523016))

(assert (= (and b!523015 (not c!61532)) b!523024))

(assert (= (and b!523016 res!320558) b!523018))

(declare-fun m!503869 () Bool)

(assert (=> b!523021 m!503869))

(assert (=> b!523021 m!503869))

(declare-fun m!503871 () Bool)

(assert (=> b!523021 m!503871))

(declare-fun m!503873 () Bool)

(assert (=> b!523017 m!503873))

(declare-fun m!503875 () Bool)

(assert (=> b!523019 m!503875))

(declare-fun m!503877 () Bool)

(assert (=> b!523016 m!503877))

(declare-fun m!503879 () Bool)

(assert (=> b!523016 m!503879))

(declare-fun m!503881 () Bool)

(assert (=> b!523022 m!503881))

(declare-fun m!503883 () Bool)

(assert (=> b!523014 m!503883))

(declare-fun m!503885 () Bool)

(assert (=> start!47548 m!503885))

(declare-fun m!503887 () Bool)

(assert (=> start!47548 m!503887))

(declare-fun m!503889 () Bool)

(assert (=> b!523012 m!503889))

(declare-fun m!503891 () Bool)

(assert (=> b!523012 m!503891))

(declare-fun m!503893 () Bool)

(assert (=> b!523012 m!503893))

(declare-fun m!503895 () Bool)

(assert (=> b!523012 m!503895))

(assert (=> b!523012 m!503869))

(declare-fun m!503897 () Bool)

(assert (=> b!523012 m!503897))

(assert (=> b!523012 m!503869))

(declare-fun m!503899 () Bool)

(assert (=> b!523012 m!503899))

(declare-fun m!503901 () Bool)

(assert (=> b!523012 m!503901))

(assert (=> b!523012 m!503869))

(declare-fun m!503903 () Bool)

(assert (=> b!523012 m!503903))

(declare-fun m!503905 () Bool)

(assert (=> b!523025 m!503905))

(assert (=> b!523020 m!503869))

(assert (=> b!523020 m!503869))

(declare-fun m!503907 () Bool)

(assert (=> b!523020 m!503907))

(declare-fun m!503909 () Bool)

(assert (=> b!523015 m!503909))

(assert (=> b!523015 m!503869))

(push 1)

