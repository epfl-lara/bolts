; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64568 () Bool)

(assert start!64568)

(declare-datatypes ((array!41039 0))(
  ( (array!41040 (arr!19637 (Array (_ BitVec 32) (_ BitVec 64))) (size!20058 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41039)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7244 0))(
  ( (MissingZero!7244 (index!31343 (_ BitVec 32))) (Found!7244 (index!31344 (_ BitVec 32))) (Intermediate!7244 (undefined!8056 Bool) (index!31345 (_ BitVec 32)) (x!62351 (_ BitVec 32))) (Undefined!7244) (MissingVacant!7244 (index!31346 (_ BitVec 32))) )
))
(declare-fun lt!322012 () SeekEntryResult!7244)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!727005 () Bool)

(declare-fun e!407020 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41039 (_ BitVec 32)) SeekEntryResult!7244)

(assert (=> b!727005 (= e!407020 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19637 a!3186) j!159) a!3186 mask!3328) lt!322012))))

(declare-fun b!727006 () Bool)

(declare-fun res!488061 () Bool)

(declare-fun e!407021 () Bool)

(assert (=> b!727006 (=> (not res!488061) (not e!407021))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727006 (= res!488061 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20058 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20058 a!3186))))))

(declare-fun b!727007 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41039 (_ BitVec 32)) SeekEntryResult!7244)

(assert (=> b!727007 (= e!407020 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19637 a!3186) j!159) a!3186 mask!3328) (Found!7244 j!159)))))

(declare-fun b!727008 () Bool)

(declare-fun res!488059 () Bool)

(assert (=> b!727008 (=> (not res!488059) (not e!407021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41039 (_ BitVec 32)) Bool)

(assert (=> b!727008 (= res!488059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727009 () Bool)

(declare-fun res!488053 () Bool)

(declare-fun e!407025 () Bool)

(assert (=> b!727009 (=> (not res!488053) (not e!407025))))

(assert (=> b!727009 (= res!488053 e!407020)))

(declare-fun c!79851 () Bool)

(assert (=> b!727009 (= c!79851 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727010 () Bool)

(declare-fun res!488055 () Bool)

(declare-fun e!407027 () Bool)

(assert (=> b!727010 (=> (not res!488055) (not e!407027))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727010 (= res!488055 (validKeyInArray!0 k!2102))))

(declare-fun b!727011 () Bool)

(declare-fun e!407026 () Bool)

(declare-fun e!407024 () Bool)

(assert (=> b!727011 (= e!407026 e!407024)))

(declare-fun res!488063 () Bool)

(assert (=> b!727011 (=> (not res!488063) (not e!407024))))

(declare-fun lt!322007 () SeekEntryResult!7244)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41039 (_ BitVec 32)) SeekEntryResult!7244)

(assert (=> b!727011 (= res!488063 (= (seekEntryOrOpen!0 (select (arr!19637 a!3186) j!159) a!3186 mask!3328) lt!322007))))

(assert (=> b!727011 (= lt!322007 (Found!7244 j!159))))

(declare-fun res!488056 () Bool)

(assert (=> start!64568 (=> (not res!488056) (not e!407027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64568 (= res!488056 (validMask!0 mask!3328))))

(assert (=> start!64568 e!407027))

(assert (=> start!64568 true))

(declare-fun array_inv!15411 (array!41039) Bool)

(assert (=> start!64568 (array_inv!15411 a!3186)))

(declare-fun b!727012 () Bool)

(declare-fun res!488064 () Bool)

(assert (=> b!727012 (=> (not res!488064) (not e!407021))))

(declare-datatypes ((List!13692 0))(
  ( (Nil!13689) (Cons!13688 (h!14745 (_ BitVec 64)) (t!20015 List!13692)) )
))
(declare-fun arrayNoDuplicates!0 (array!41039 (_ BitVec 32) List!13692) Bool)

(assert (=> b!727012 (= res!488064 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13689))))

(declare-fun b!727013 () Bool)

(declare-fun e!407023 () Bool)

(assert (=> b!727013 (= e!407025 e!407023)))

(declare-fun res!488050 () Bool)

(assert (=> b!727013 (=> (not res!488050) (not e!407023))))

(declare-fun lt!322013 () SeekEntryResult!7244)

(declare-fun lt!322010 () SeekEntryResult!7244)

(assert (=> b!727013 (= res!488050 (= lt!322013 lt!322010))))

(declare-fun lt!322008 () (_ BitVec 64))

(declare-fun lt!322006 () array!41039)

(assert (=> b!727013 (= lt!322010 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322008 lt!322006 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727013 (= lt!322013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322008 mask!3328) lt!322008 lt!322006 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727013 (= lt!322008 (select (store (arr!19637 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727013 (= lt!322006 (array!41040 (store (arr!19637 a!3186) i!1173 k!2102) (size!20058 a!3186)))))

(declare-fun b!727014 () Bool)

(declare-fun res!488062 () Bool)

(assert (=> b!727014 (=> (not res!488062) (not e!407025))))

(assert (=> b!727014 (= res!488062 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19637 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727015 () Bool)

(declare-fun res!488049 () Bool)

(assert (=> b!727015 (=> (not res!488049) (not e!407027))))

(declare-fun arrayContainsKey!0 (array!41039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727015 (= res!488049 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727016 () Bool)

(declare-fun e!407028 () Bool)

(assert (=> b!727016 (= e!407028 true)))

(declare-fun lt!322009 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727016 (= lt!322009 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727017 () Bool)

(assert (=> b!727017 (= e!407021 e!407025)))

(declare-fun res!488052 () Bool)

(assert (=> b!727017 (=> (not res!488052) (not e!407025))))

(assert (=> b!727017 (= res!488052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19637 a!3186) j!159) mask!3328) (select (arr!19637 a!3186) j!159) a!3186 mask!3328) lt!322012))))

(assert (=> b!727017 (= lt!322012 (Intermediate!7244 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727018 () Bool)

(assert (=> b!727018 (= e!407023 (not e!407028))))

(declare-fun res!488054 () Bool)

(assert (=> b!727018 (=> res!488054 e!407028)))

(assert (=> b!727018 (= res!488054 (or (not (is-Intermediate!7244 lt!322010)) (bvsge x!1131 (x!62351 lt!322010))))))

(assert (=> b!727018 e!407026))

(declare-fun res!488051 () Bool)

(assert (=> b!727018 (=> (not res!488051) (not e!407026))))

(assert (=> b!727018 (= res!488051 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24806 0))(
  ( (Unit!24807) )
))
(declare-fun lt!322011 () Unit!24806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24806)

(assert (=> b!727018 (= lt!322011 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727019 () Bool)

(assert (=> b!727019 (= e!407027 e!407021)))

(declare-fun res!488057 () Bool)

(assert (=> b!727019 (=> (not res!488057) (not e!407021))))

(declare-fun lt!322005 () SeekEntryResult!7244)

(assert (=> b!727019 (= res!488057 (or (= lt!322005 (MissingZero!7244 i!1173)) (= lt!322005 (MissingVacant!7244 i!1173))))))

(assert (=> b!727019 (= lt!322005 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727020 () Bool)

(declare-fun res!488060 () Bool)

(assert (=> b!727020 (=> (not res!488060) (not e!407027))))

(assert (=> b!727020 (= res!488060 (and (= (size!20058 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20058 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20058 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727021 () Bool)

(declare-fun res!488058 () Bool)

(assert (=> b!727021 (=> (not res!488058) (not e!407027))))

(assert (=> b!727021 (= res!488058 (validKeyInArray!0 (select (arr!19637 a!3186) j!159)))))

(declare-fun b!727022 () Bool)

(assert (=> b!727022 (= e!407024 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19637 a!3186) j!159) a!3186 mask!3328) lt!322007))))

(assert (= (and start!64568 res!488056) b!727020))

(assert (= (and b!727020 res!488060) b!727021))

(assert (= (and b!727021 res!488058) b!727010))

(assert (= (and b!727010 res!488055) b!727015))

(assert (= (and b!727015 res!488049) b!727019))

(assert (= (and b!727019 res!488057) b!727008))

(assert (= (and b!727008 res!488059) b!727012))

(assert (= (and b!727012 res!488064) b!727006))

(assert (= (and b!727006 res!488061) b!727017))

(assert (= (and b!727017 res!488052) b!727014))

(assert (= (and b!727014 res!488062) b!727009))

(assert (= (and b!727009 c!79851) b!727005))

(assert (= (and b!727009 (not c!79851)) b!727007))

(assert (= (and b!727009 res!488053) b!727013))

(assert (= (and b!727013 res!488050) b!727018))

(assert (= (and b!727018 res!488051) b!727011))

(assert (= (and b!727011 res!488063) b!727022))

(assert (= (and b!727018 (not res!488054)) b!727016))

(declare-fun m!681091 () Bool)

(assert (=> b!727014 m!681091))

(declare-fun m!681093 () Bool)

(assert (=> b!727005 m!681093))

(assert (=> b!727005 m!681093))

(declare-fun m!681095 () Bool)

(assert (=> b!727005 m!681095))

(assert (=> b!727022 m!681093))

(assert (=> b!727022 m!681093))

(declare-fun m!681097 () Bool)

(assert (=> b!727022 m!681097))

(declare-fun m!681099 () Bool)

(assert (=> b!727013 m!681099))

(declare-fun m!681101 () Bool)

(assert (=> b!727013 m!681101))

(declare-fun m!681103 () Bool)

(assert (=> b!727013 m!681103))

(declare-fun m!681105 () Bool)

(assert (=> b!727013 m!681105))

(assert (=> b!727013 m!681101))

(declare-fun m!681107 () Bool)

(assert (=> b!727013 m!681107))

(declare-fun m!681109 () Bool)

(assert (=> b!727019 m!681109))

(declare-fun m!681111 () Bool)

(assert (=> b!727018 m!681111))

(declare-fun m!681113 () Bool)

(assert (=> b!727018 m!681113))

(assert (=> b!727017 m!681093))

(assert (=> b!727017 m!681093))

(declare-fun m!681115 () Bool)

(assert (=> b!727017 m!681115))

(assert (=> b!727017 m!681115))

(assert (=> b!727017 m!681093))

(declare-fun m!681117 () Bool)

(assert (=> b!727017 m!681117))

(declare-fun m!681119 () Bool)

(assert (=> b!727016 m!681119))

(declare-fun m!681121 () Bool)

(assert (=> b!727008 m!681121))

(declare-fun m!681123 () Bool)

(assert (=> b!727010 m!681123))

(assert (=> b!727021 m!681093))

(assert (=> b!727021 m!681093))

(declare-fun m!681125 () Bool)

(assert (=> b!727021 m!681125))

(declare-fun m!681127 () Bool)

(assert (=> b!727015 m!681127))

(declare-fun m!681129 () Bool)

(assert (=> b!727012 m!681129))

(assert (=> b!727007 m!681093))

(assert (=> b!727007 m!681093))

(declare-fun m!681131 () Bool)

(assert (=> b!727007 m!681131))

(assert (=> b!727011 m!681093))

(assert (=> b!727011 m!681093))

(declare-fun m!681133 () Bool)

(assert (=> b!727011 m!681133))

(declare-fun m!681135 () Bool)

(assert (=> start!64568 m!681135))

(declare-fun m!681137 () Bool)

(assert (=> start!64568 m!681137))

(push 1)

