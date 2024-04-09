; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66932 () Bool)

(assert start!66932)

(declare-fun b!772007 () Bool)

(declare-datatypes ((Unit!26604 0))(
  ( (Unit!26605) )
))
(declare-fun e!429800 () Unit!26604)

(declare-fun Unit!26606 () Unit!26604)

(assert (=> b!772007 (= e!429800 Unit!26606)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42380 0))(
  ( (array!42381 (arr!20285 (Array (_ BitVec 32) (_ BitVec 64))) (size!20706 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42380)

(declare-datatypes ((SeekEntryResult!7892 0))(
  ( (MissingZero!7892 (index!33935 (_ BitVec 32))) (Found!7892 (index!33936 (_ BitVec 32))) (Intermediate!7892 (undefined!8704 Bool) (index!33937 (_ BitVec 32)) (x!64892 (_ BitVec 32))) (Undefined!7892) (MissingVacant!7892 (index!33938 (_ BitVec 32))) )
))
(declare-fun lt!343733 () SeekEntryResult!7892)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42380 (_ BitVec 32)) SeekEntryResult!7892)

(assert (=> b!772007 (= lt!343733 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20285 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343728 () (_ BitVec 32))

(assert (=> b!772007 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343728 resIntermediateIndex!5 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) (Found!7892 j!159))))

(declare-fun b!772008 () Bool)

(declare-fun res!522319 () Bool)

(declare-fun e!429798 () Bool)

(assert (=> b!772008 (=> (not res!522319) (not e!429798))))

(declare-fun e!429801 () Bool)

(assert (=> b!772008 (= res!522319 e!429801)))

(declare-fun c!85247 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772008 (= c!85247 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!343730 () SeekEntryResult!7892)

(declare-fun b!772009 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42380 (_ BitVec 32)) SeekEntryResult!7892)

(assert (=> b!772009 (= e!429801 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) lt!343730))))

(declare-fun b!772010 () Bool)

(declare-fun Unit!26607 () Unit!26604)

(assert (=> b!772010 (= e!429800 Unit!26607)))

(assert (=> b!772010 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343728 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) lt!343730)))

(declare-fun b!772011 () Bool)

(assert (=> b!772011 (= e!429801 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) (Found!7892 j!159)))))

(declare-fun b!772012 () Bool)

(declare-fun e!429797 () Bool)

(assert (=> b!772012 (= e!429797 true)))

(declare-fun lt!343737 () Unit!26604)

(assert (=> b!772012 (= lt!343737 e!429800)))

(declare-fun c!85248 () Bool)

(assert (=> b!772012 (= c!85248 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772012 (= lt!343728 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772013 () Bool)

(declare-fun res!522310 () Bool)

(declare-fun e!429803 () Bool)

(assert (=> b!772013 (=> (not res!522310) (not e!429803))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772013 (= res!522310 (validKeyInArray!0 k!2102))))

(declare-fun b!772014 () Bool)

(declare-fun lt!343735 () SeekEntryResult!7892)

(declare-fun e!429804 () Bool)

(assert (=> b!772014 (= e!429804 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) lt!343735))))

(declare-fun res!522312 () Bool)

(assert (=> start!66932 (=> (not res!522312) (not e!429803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66932 (= res!522312 (validMask!0 mask!3328))))

(assert (=> start!66932 e!429803))

(assert (=> start!66932 true))

(declare-fun array_inv!16059 (array!42380) Bool)

(assert (=> start!66932 (array_inv!16059 a!3186)))

(declare-fun b!772015 () Bool)

(declare-fun res!522308 () Bool)

(declare-fun e!429799 () Bool)

(assert (=> b!772015 (=> (not res!522308) (not e!429799))))

(declare-datatypes ((List!14340 0))(
  ( (Nil!14337) (Cons!14336 (h!15438 (_ BitVec 64)) (t!20663 List!14340)) )
))
(declare-fun arrayNoDuplicates!0 (array!42380 (_ BitVec 32) List!14340) Bool)

(assert (=> b!772015 (= res!522308 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14337))))

(declare-fun b!772016 () Bool)

(declare-fun e!429805 () Bool)

(assert (=> b!772016 (= e!429798 e!429805)))

(declare-fun res!522307 () Bool)

(assert (=> b!772016 (=> (not res!522307) (not e!429805))))

(declare-fun lt!343734 () SeekEntryResult!7892)

(declare-fun lt!343736 () SeekEntryResult!7892)

(assert (=> b!772016 (= res!522307 (= lt!343734 lt!343736))))

(declare-fun lt!343738 () (_ BitVec 64))

(declare-fun lt!343732 () array!42380)

(assert (=> b!772016 (= lt!343736 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343738 lt!343732 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772016 (= lt!343734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343738 mask!3328) lt!343738 lt!343732 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772016 (= lt!343738 (select (store (arr!20285 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772016 (= lt!343732 (array!42381 (store (arr!20285 a!3186) i!1173 k!2102) (size!20706 a!3186)))))

(declare-fun b!772017 () Bool)

(declare-fun e!429802 () Bool)

(assert (=> b!772017 (= e!429802 e!429804)))

(declare-fun res!522322 () Bool)

(assert (=> b!772017 (=> (not res!522322) (not e!429804))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42380 (_ BitVec 32)) SeekEntryResult!7892)

(assert (=> b!772017 (= res!522322 (= (seekEntryOrOpen!0 (select (arr!20285 a!3186) j!159) a!3186 mask!3328) lt!343735))))

(assert (=> b!772017 (= lt!343735 (Found!7892 j!159))))

(declare-fun b!772018 () Bool)

(declare-fun res!522315 () Bool)

(assert (=> b!772018 (=> (not res!522315) (not e!429803))))

(assert (=> b!772018 (= res!522315 (validKeyInArray!0 (select (arr!20285 a!3186) j!159)))))

(declare-fun b!772019 () Bool)

(assert (=> b!772019 (= e!429805 (not e!429797))))

(declare-fun res!522316 () Bool)

(assert (=> b!772019 (=> res!522316 e!429797)))

(assert (=> b!772019 (= res!522316 (or (not (is-Intermediate!7892 lt!343736)) (bvsge x!1131 (x!64892 lt!343736))))))

(assert (=> b!772019 e!429802))

(declare-fun res!522313 () Bool)

(assert (=> b!772019 (=> (not res!522313) (not e!429802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42380 (_ BitVec 32)) Bool)

(assert (=> b!772019 (= res!522313 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343729 () Unit!26604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26604)

(assert (=> b!772019 (= lt!343729 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772020 () Bool)

(assert (=> b!772020 (= e!429799 e!429798)))

(declare-fun res!522311 () Bool)

(assert (=> b!772020 (=> (not res!522311) (not e!429798))))

(assert (=> b!772020 (= res!522311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20285 a!3186) j!159) mask!3328) (select (arr!20285 a!3186) j!159) a!3186 mask!3328) lt!343730))))

(assert (=> b!772020 (= lt!343730 (Intermediate!7892 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772021 () Bool)

(declare-fun res!522314 () Bool)

(assert (=> b!772021 (=> (not res!522314) (not e!429799))))

(assert (=> b!772021 (= res!522314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772022 () Bool)

(declare-fun res!522309 () Bool)

(assert (=> b!772022 (=> (not res!522309) (not e!429803))))

(declare-fun arrayContainsKey!0 (array!42380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772022 (= res!522309 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772023 () Bool)

(assert (=> b!772023 (= e!429803 e!429799)))

(declare-fun res!522317 () Bool)

(assert (=> b!772023 (=> (not res!522317) (not e!429799))))

(declare-fun lt!343731 () SeekEntryResult!7892)

(assert (=> b!772023 (= res!522317 (or (= lt!343731 (MissingZero!7892 i!1173)) (= lt!343731 (MissingVacant!7892 i!1173))))))

(assert (=> b!772023 (= lt!343731 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!772024 () Bool)

(declare-fun res!522321 () Bool)

(assert (=> b!772024 (=> (not res!522321) (not e!429798))))

(assert (=> b!772024 (= res!522321 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20285 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772025 () Bool)

(declare-fun res!522320 () Bool)

(assert (=> b!772025 (=> (not res!522320) (not e!429799))))

(assert (=> b!772025 (= res!522320 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20706 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20706 a!3186))))))

(declare-fun b!772026 () Bool)

(declare-fun res!522318 () Bool)

(assert (=> b!772026 (=> (not res!522318) (not e!429803))))

(assert (=> b!772026 (= res!522318 (and (= (size!20706 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20706 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20706 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66932 res!522312) b!772026))

(assert (= (and b!772026 res!522318) b!772018))

(assert (= (and b!772018 res!522315) b!772013))

(assert (= (and b!772013 res!522310) b!772022))

(assert (= (and b!772022 res!522309) b!772023))

(assert (= (and b!772023 res!522317) b!772021))

(assert (= (and b!772021 res!522314) b!772015))

(assert (= (and b!772015 res!522308) b!772025))

(assert (= (and b!772025 res!522320) b!772020))

(assert (= (and b!772020 res!522311) b!772024))

(assert (= (and b!772024 res!522321) b!772008))

(assert (= (and b!772008 c!85247) b!772009))

(assert (= (and b!772008 (not c!85247)) b!772011))

(assert (= (and b!772008 res!522319) b!772016))

(assert (= (and b!772016 res!522307) b!772019))

(assert (= (and b!772019 res!522313) b!772017))

(assert (= (and b!772017 res!522322) b!772014))

(assert (= (and b!772019 (not res!522316)) b!772012))

(assert (= (and b!772012 c!85248) b!772010))

(assert (= (and b!772012 (not c!85248)) b!772007))

(declare-fun m!717063 () Bool)

(assert (=> b!772012 m!717063))

(declare-fun m!717065 () Bool)

(assert (=> b!772016 m!717065))

(declare-fun m!717067 () Bool)

(assert (=> b!772016 m!717067))

(assert (=> b!772016 m!717067))

(declare-fun m!717069 () Bool)

(assert (=> b!772016 m!717069))

(declare-fun m!717071 () Bool)

(assert (=> b!772016 m!717071))

(declare-fun m!717073 () Bool)

(assert (=> b!772016 m!717073))

(declare-fun m!717075 () Bool)

(assert (=> b!772007 m!717075))

(assert (=> b!772007 m!717075))

(declare-fun m!717077 () Bool)

(assert (=> b!772007 m!717077))

(assert (=> b!772007 m!717075))

(declare-fun m!717079 () Bool)

(assert (=> b!772007 m!717079))

(assert (=> b!772009 m!717075))

(assert (=> b!772009 m!717075))

(declare-fun m!717081 () Bool)

(assert (=> b!772009 m!717081))

(declare-fun m!717083 () Bool)

(assert (=> start!66932 m!717083))

(declare-fun m!717085 () Bool)

(assert (=> start!66932 m!717085))

(declare-fun m!717087 () Bool)

(assert (=> b!772019 m!717087))

(declare-fun m!717089 () Bool)

(assert (=> b!772019 m!717089))

(assert (=> b!772020 m!717075))

(assert (=> b!772020 m!717075))

(declare-fun m!717091 () Bool)

(assert (=> b!772020 m!717091))

(assert (=> b!772020 m!717091))

(assert (=> b!772020 m!717075))

(declare-fun m!717093 () Bool)

(assert (=> b!772020 m!717093))

(assert (=> b!772014 m!717075))

(assert (=> b!772014 m!717075))

(declare-fun m!717095 () Bool)

(assert (=> b!772014 m!717095))

(assert (=> b!772017 m!717075))

(assert (=> b!772017 m!717075))

(declare-fun m!717097 () Bool)

(assert (=> b!772017 m!717097))

(assert (=> b!772011 m!717075))

(assert (=> b!772011 m!717075))

(assert (=> b!772011 m!717077))

(declare-fun m!717099 () Bool)

(assert (=> b!772013 m!717099))

(declare-fun m!717101 () Bool)

(assert (=> b!772023 m!717101))

(declare-fun m!717103 () Bool)

(assert (=> b!772024 m!717103))

(assert (=> b!772010 m!717075))

(assert (=> b!772010 m!717075))

(declare-fun m!717105 () Bool)

(assert (=> b!772010 m!717105))

(declare-fun m!717107 () Bool)

(assert (=> b!772021 m!717107))

(declare-fun m!717109 () Bool)

(assert (=> b!772015 m!717109))

(assert (=> b!772018 m!717075))

(assert (=> b!772018 m!717075))

(declare-fun m!717111 () Bool)

(assert (=> b!772018 m!717111))

(declare-fun m!717113 () Bool)

(assert (=> b!772022 m!717113))

(push 1)

