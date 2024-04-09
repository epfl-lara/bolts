; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64330 () Bool)

(assert start!64330)

(declare-fun b!722431 () Bool)

(declare-fun e!404924 () Bool)

(declare-fun e!404927 () Bool)

(assert (=> b!722431 (= e!404924 e!404927)))

(declare-fun res!484268 () Bool)

(assert (=> b!722431 (=> (not res!484268) (not e!404927))))

(declare-datatypes ((array!40864 0))(
  ( (array!40865 (arr!19551 (Array (_ BitVec 32) (_ BitVec 64))) (size!19972 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40864)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7158 0))(
  ( (MissingZero!7158 (index!30999 (_ BitVec 32))) (Found!7158 (index!31000 (_ BitVec 32))) (Intermediate!7158 (undefined!7970 Bool) (index!31001 (_ BitVec 32)) (x!62032 (_ BitVec 32))) (Undefined!7158) (MissingVacant!7158 (index!31002 (_ BitVec 32))) )
))
(declare-fun lt!320295 () SeekEntryResult!7158)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40864 (_ BitVec 32)) SeekEntryResult!7158)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722431 (= res!484268 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19551 a!3186) j!159) mask!3328) (select (arr!19551 a!3186) j!159) a!3186 mask!3328) lt!320295))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722431 (= lt!320295 (Intermediate!7158 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722432 () Bool)

(assert (=> b!722432 (= e!404927 false)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!320294 () SeekEntryResult!7158)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320296 () (_ BitVec 64))

(declare-fun lt!320297 () array!40864)

(assert (=> b!722432 (= lt!320294 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320296 lt!320297 mask!3328))))

(declare-fun lt!320293 () SeekEntryResult!7158)

(assert (=> b!722432 (= lt!320293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320296 mask!3328) lt!320296 lt!320297 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722432 (= lt!320296 (select (store (arr!19551 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722432 (= lt!320297 (array!40865 (store (arr!19551 a!3186) i!1173 k!2102) (size!19972 a!3186)))))

(declare-fun b!722433 () Bool)

(declare-fun e!404925 () Bool)

(assert (=> b!722433 (= e!404925 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19551 a!3186) j!159) a!3186 mask!3328) lt!320295))))

(declare-fun b!722434 () Bool)

(declare-fun res!484274 () Bool)

(assert (=> b!722434 (=> (not res!484274) (not e!404924))))

(assert (=> b!722434 (= res!484274 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19972 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19972 a!3186))))))

(declare-fun b!722435 () Bool)

(declare-fun res!484272 () Bool)

(declare-fun e!404926 () Bool)

(assert (=> b!722435 (=> (not res!484272) (not e!404926))))

(assert (=> b!722435 (= res!484272 (and (= (size!19972 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19972 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19972 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722436 () Bool)

(declare-fun res!484265 () Bool)

(assert (=> b!722436 (=> (not res!484265) (not e!404927))))

(assert (=> b!722436 (= res!484265 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19551 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722438 () Bool)

(declare-fun res!484269 () Bool)

(assert (=> b!722438 (=> (not res!484269) (not e!404924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40864 (_ BitVec 32)) Bool)

(assert (=> b!722438 (= res!484269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722439 () Bool)

(assert (=> b!722439 (= e!404926 e!404924)))

(declare-fun res!484275 () Bool)

(assert (=> b!722439 (=> (not res!484275) (not e!404924))))

(declare-fun lt!320292 () SeekEntryResult!7158)

(assert (=> b!722439 (= res!484275 (or (= lt!320292 (MissingZero!7158 i!1173)) (= lt!320292 (MissingVacant!7158 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40864 (_ BitVec 32)) SeekEntryResult!7158)

(assert (=> b!722439 (= lt!320292 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722440 () Bool)

(declare-fun res!484267 () Bool)

(assert (=> b!722440 (=> (not res!484267) (not e!404926))))

(declare-fun arrayContainsKey!0 (array!40864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722440 (= res!484267 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722441 () Bool)

(declare-fun res!484264 () Bool)

(assert (=> b!722441 (=> (not res!484264) (not e!404924))))

(declare-datatypes ((List!13606 0))(
  ( (Nil!13603) (Cons!13602 (h!14656 (_ BitVec 64)) (t!19929 List!13606)) )
))
(declare-fun arrayNoDuplicates!0 (array!40864 (_ BitVec 32) List!13606) Bool)

(assert (=> b!722441 (= res!484264 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13603))))

(declare-fun b!722442 () Bool)

(declare-fun res!484270 () Bool)

(assert (=> b!722442 (=> (not res!484270) (not e!404926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722442 (= res!484270 (validKeyInArray!0 k!2102))))

(declare-fun res!484271 () Bool)

(assert (=> start!64330 (=> (not res!484271) (not e!404926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64330 (= res!484271 (validMask!0 mask!3328))))

(assert (=> start!64330 e!404926))

(assert (=> start!64330 true))

(declare-fun array_inv!15325 (array!40864) Bool)

(assert (=> start!64330 (array_inv!15325 a!3186)))

(declare-fun b!722437 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40864 (_ BitVec 32)) SeekEntryResult!7158)

(assert (=> b!722437 (= e!404925 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19551 a!3186) j!159) a!3186 mask!3328) (Found!7158 j!159)))))

(declare-fun b!722443 () Bool)

(declare-fun res!484266 () Bool)

(assert (=> b!722443 (=> (not res!484266) (not e!404926))))

(assert (=> b!722443 (= res!484266 (validKeyInArray!0 (select (arr!19551 a!3186) j!159)))))

(declare-fun b!722444 () Bool)

(declare-fun res!484273 () Bool)

(assert (=> b!722444 (=> (not res!484273) (not e!404927))))

(assert (=> b!722444 (= res!484273 e!404925)))

(declare-fun c!79455 () Bool)

(assert (=> b!722444 (= c!79455 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64330 res!484271) b!722435))

(assert (= (and b!722435 res!484272) b!722443))

(assert (= (and b!722443 res!484266) b!722442))

(assert (= (and b!722442 res!484270) b!722440))

(assert (= (and b!722440 res!484267) b!722439))

(assert (= (and b!722439 res!484275) b!722438))

(assert (= (and b!722438 res!484269) b!722441))

(assert (= (and b!722441 res!484264) b!722434))

(assert (= (and b!722434 res!484274) b!722431))

(assert (= (and b!722431 res!484268) b!722436))

(assert (= (and b!722436 res!484265) b!722444))

(assert (= (and b!722444 c!79455) b!722433))

(assert (= (and b!722444 (not c!79455)) b!722437))

(assert (= (and b!722444 res!484273) b!722432))

(declare-fun m!677047 () Bool)

(assert (=> b!722441 m!677047))

(declare-fun m!677049 () Bool)

(assert (=> b!722431 m!677049))

(assert (=> b!722431 m!677049))

(declare-fun m!677051 () Bool)

(assert (=> b!722431 m!677051))

(assert (=> b!722431 m!677051))

(assert (=> b!722431 m!677049))

(declare-fun m!677053 () Bool)

(assert (=> b!722431 m!677053))

(declare-fun m!677055 () Bool)

(assert (=> b!722432 m!677055))

(declare-fun m!677057 () Bool)

(assert (=> b!722432 m!677057))

(declare-fun m!677059 () Bool)

(assert (=> b!722432 m!677059))

(declare-fun m!677061 () Bool)

(assert (=> b!722432 m!677061))

(declare-fun m!677063 () Bool)

(assert (=> b!722432 m!677063))

(assert (=> b!722432 m!677059))

(declare-fun m!677065 () Bool)

(assert (=> b!722439 m!677065))

(declare-fun m!677067 () Bool)

(assert (=> start!64330 m!677067))

(declare-fun m!677069 () Bool)

(assert (=> start!64330 m!677069))

(declare-fun m!677071 () Bool)

(assert (=> b!722436 m!677071))

(declare-fun m!677073 () Bool)

(assert (=> b!722440 m!677073))

(assert (=> b!722437 m!677049))

(assert (=> b!722437 m!677049))

(declare-fun m!677075 () Bool)

(assert (=> b!722437 m!677075))

(declare-fun m!677077 () Bool)

(assert (=> b!722442 m!677077))

(assert (=> b!722443 m!677049))

(assert (=> b!722443 m!677049))

(declare-fun m!677079 () Bool)

(assert (=> b!722443 m!677079))

(declare-fun m!677081 () Bool)

(assert (=> b!722438 m!677081))

(assert (=> b!722433 m!677049))

(assert (=> b!722433 m!677049))

(declare-fun m!677083 () Bool)

(assert (=> b!722433 m!677083))

(push 1)

