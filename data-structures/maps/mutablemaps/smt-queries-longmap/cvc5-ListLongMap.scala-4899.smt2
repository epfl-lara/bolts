; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67588 () Bool)

(assert start!67588)

(declare-fun b!782158 () Bool)

(declare-fun e!434961 () Bool)

(declare-fun e!434959 () Bool)

(assert (=> b!782158 (= e!434961 e!434959)))

(declare-fun res!529355 () Bool)

(assert (=> b!782158 (=> (not res!529355) (not e!434959))))

(declare-datatypes ((SeekEntryResult!8016 0))(
  ( (MissingZero!8016 (index!34431 (_ BitVec 32))) (Found!8016 (index!34432 (_ BitVec 32))) (Intermediate!8016 (undefined!8828 Bool) (index!34433 (_ BitVec 32)) (x!65412 (_ BitVec 32))) (Undefined!8016) (MissingVacant!8016 (index!34434 (_ BitVec 32))) )
))
(declare-fun lt!348600 () SeekEntryResult!8016)

(declare-fun lt!348599 () SeekEntryResult!8016)

(assert (=> b!782158 (= res!529355 (= lt!348600 lt!348599))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42646 0))(
  ( (array!42647 (arr!20409 (Array (_ BitVec 32) (_ BitVec 64))) (size!20830 (_ BitVec 32))) )
))
(declare-fun lt!348604 () array!42646)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!348602 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42646 (_ BitVec 32)) SeekEntryResult!8016)

(assert (=> b!782158 (= lt!348599 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348602 lt!348604 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782158 (= lt!348600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348602 mask!3328) lt!348602 lt!348604 mask!3328))))

(declare-fun a!3186 () array!42646)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!782158 (= lt!348602 (select (store (arr!20409 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!782158 (= lt!348604 (array!42647 (store (arr!20409 a!3186) i!1173 k!2102) (size!20830 a!3186)))))

(declare-fun b!782159 () Bool)

(declare-fun res!529352 () Bool)

(declare-fun e!434962 () Bool)

(assert (=> b!782159 (=> (not res!529352) (not e!434962))))

(assert (=> b!782159 (= res!529352 (and (= (size!20830 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20830 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20830 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782160 () Bool)

(declare-fun e!434956 () Bool)

(assert (=> b!782160 (= e!434956 true)))

(assert (=> b!782160 (= (select (store (arr!20409 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26974 0))(
  ( (Unit!26975) )
))
(declare-fun lt!348598 () Unit!26974)

(declare-fun e!434954 () Unit!26974)

(assert (=> b!782160 (= lt!348598 e!434954)))

(declare-fun c!86810 () Bool)

(assert (=> b!782160 (= c!86810 (= (select (store (arr!20409 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!782161 () Bool)

(declare-fun e!434957 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42646 (_ BitVec 32)) SeekEntryResult!8016)

(assert (=> b!782161 (= e!434957 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20409 a!3186) j!159) a!3186 mask!3328) (Found!8016 j!159)))))

(declare-fun b!782162 () Bool)

(declare-fun res!529366 () Bool)

(assert (=> b!782162 (=> (not res!529366) (not e!434962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782162 (= res!529366 (validKeyInArray!0 (select (arr!20409 a!3186) j!159)))))

(declare-fun b!782163 () Bool)

(declare-fun res!529351 () Bool)

(assert (=> b!782163 (=> (not res!529351) (not e!434962))))

(declare-fun arrayContainsKey!0 (array!42646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782163 (= res!529351 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782164 () Bool)

(declare-fun res!529353 () Bool)

(assert (=> b!782164 (=> res!529353 e!434956)))

(assert (=> b!782164 (= res!529353 (= (select (store (arr!20409 a!3186) i!1173 k!2102) index!1321) lt!348602))))

(declare-fun b!782165 () Bool)

(declare-fun res!529363 () Bool)

(assert (=> b!782165 (=> (not res!529363) (not e!434961))))

(assert (=> b!782165 (= res!529363 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20409 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782166 () Bool)

(declare-fun res!529365 () Bool)

(assert (=> b!782166 (=> (not res!529365) (not e!434961))))

(assert (=> b!782166 (= res!529365 e!434957)))

(declare-fun c!86811 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782166 (= c!86811 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!348597 () SeekEntryResult!8016)

(declare-fun b!782167 () Bool)

(assert (=> b!782167 (= e!434957 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20409 a!3186) j!159) a!3186 mask!3328) lt!348597))))

(declare-fun b!782168 () Bool)

(declare-fun res!529356 () Bool)

(declare-fun e!434955 () Bool)

(assert (=> b!782168 (=> (not res!529356) (not e!434955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42646 (_ BitVec 32)) Bool)

(assert (=> b!782168 (= res!529356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782169 () Bool)

(assert (=> b!782169 (= e!434955 e!434961)))

(declare-fun res!529354 () Bool)

(assert (=> b!782169 (=> (not res!529354) (not e!434961))))

(assert (=> b!782169 (= res!529354 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20409 a!3186) j!159) mask!3328) (select (arr!20409 a!3186) j!159) a!3186 mask!3328) lt!348597))))

(assert (=> b!782169 (= lt!348597 (Intermediate!8016 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782170 () Bool)

(declare-fun res!529358 () Bool)

(assert (=> b!782170 (=> res!529358 e!434956)))

(declare-fun lt!348596 () SeekEntryResult!8016)

(assert (=> b!782170 (= res!529358 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20409 a!3186) j!159) a!3186 mask!3328) lt!348596)))))

(declare-fun b!782171 () Bool)

(declare-fun Unit!26976 () Unit!26974)

(assert (=> b!782171 (= e!434954 Unit!26976)))

(assert (=> b!782171 false))

(declare-fun b!782172 () Bool)

(declare-fun res!529364 () Bool)

(assert (=> b!782172 (=> (not res!529364) (not e!434955))))

(assert (=> b!782172 (= res!529364 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20830 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20830 a!3186))))))

(declare-fun b!782173 () Bool)

(declare-fun Unit!26977 () Unit!26974)

(assert (=> b!782173 (= e!434954 Unit!26977)))

(declare-fun res!529350 () Bool)

(assert (=> start!67588 (=> (not res!529350) (not e!434962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67588 (= res!529350 (validMask!0 mask!3328))))

(assert (=> start!67588 e!434962))

(assert (=> start!67588 true))

(declare-fun array_inv!16183 (array!42646) Bool)

(assert (=> start!67588 (array_inv!16183 a!3186)))

(declare-fun b!782174 () Bool)

(assert (=> b!782174 (= e!434962 e!434955)))

(declare-fun res!529361 () Bool)

(assert (=> b!782174 (=> (not res!529361) (not e!434955))))

(declare-fun lt!348595 () SeekEntryResult!8016)

(assert (=> b!782174 (= res!529361 (or (= lt!348595 (MissingZero!8016 i!1173)) (= lt!348595 (MissingVacant!8016 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42646 (_ BitVec 32)) SeekEntryResult!8016)

(assert (=> b!782174 (= lt!348595 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!782175 () Bool)

(declare-fun res!529357 () Bool)

(assert (=> b!782175 (=> (not res!529357) (not e!434955))))

(declare-datatypes ((List!14464 0))(
  ( (Nil!14461) (Cons!14460 (h!15580 (_ BitVec 64)) (t!20787 List!14464)) )
))
(declare-fun arrayNoDuplicates!0 (array!42646 (_ BitVec 32) List!14464) Bool)

(assert (=> b!782175 (= res!529357 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14461))))

(declare-fun b!782176 () Bool)

(assert (=> b!782176 (= e!434959 (not e!434956))))

(declare-fun res!529359 () Bool)

(assert (=> b!782176 (=> res!529359 e!434956)))

(assert (=> b!782176 (= res!529359 (or (not (is-Intermediate!8016 lt!348599)) (bvslt x!1131 (x!65412 lt!348599)) (not (= x!1131 (x!65412 lt!348599))) (not (= index!1321 (index!34433 lt!348599)))))))

(declare-fun e!434960 () Bool)

(assert (=> b!782176 e!434960))

(declare-fun res!529360 () Bool)

(assert (=> b!782176 (=> (not res!529360) (not e!434960))))

(declare-fun lt!348601 () SeekEntryResult!8016)

(assert (=> b!782176 (= res!529360 (= lt!348601 lt!348596))))

(assert (=> b!782176 (= lt!348596 (Found!8016 j!159))))

(assert (=> b!782176 (= lt!348601 (seekEntryOrOpen!0 (select (arr!20409 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782176 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348603 () Unit!26974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26974)

(assert (=> b!782176 (= lt!348603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782177 () Bool)

(assert (=> b!782177 (= e!434960 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20409 a!3186) j!159) a!3186 mask!3328) lt!348596))))

(declare-fun b!782178 () Bool)

(declare-fun res!529362 () Bool)

(assert (=> b!782178 (=> (not res!529362) (not e!434962))))

(assert (=> b!782178 (= res!529362 (validKeyInArray!0 k!2102))))

(assert (= (and start!67588 res!529350) b!782159))

(assert (= (and b!782159 res!529352) b!782162))

(assert (= (and b!782162 res!529366) b!782178))

(assert (= (and b!782178 res!529362) b!782163))

(assert (= (and b!782163 res!529351) b!782174))

(assert (= (and b!782174 res!529361) b!782168))

(assert (= (and b!782168 res!529356) b!782175))

(assert (= (and b!782175 res!529357) b!782172))

(assert (= (and b!782172 res!529364) b!782169))

(assert (= (and b!782169 res!529354) b!782165))

(assert (= (and b!782165 res!529363) b!782166))

(assert (= (and b!782166 c!86811) b!782167))

(assert (= (and b!782166 (not c!86811)) b!782161))

(assert (= (and b!782166 res!529365) b!782158))

(assert (= (and b!782158 res!529355) b!782176))

(assert (= (and b!782176 res!529360) b!782177))

(assert (= (and b!782176 (not res!529359)) b!782170))

(assert (= (and b!782170 (not res!529358)) b!782164))

(assert (= (and b!782164 (not res!529353)) b!782160))

(assert (= (and b!782160 c!86810) b!782171))

(assert (= (and b!782160 (not c!86810)) b!782173))

(declare-fun m!725059 () Bool)

(assert (=> b!782175 m!725059))

(declare-fun m!725061 () Bool)

(assert (=> b!782168 m!725061))

(declare-fun m!725063 () Bool)

(assert (=> b!782176 m!725063))

(assert (=> b!782176 m!725063))

(declare-fun m!725065 () Bool)

(assert (=> b!782176 m!725065))

(declare-fun m!725067 () Bool)

(assert (=> b!782176 m!725067))

(declare-fun m!725069 () Bool)

(assert (=> b!782176 m!725069))

(declare-fun m!725071 () Bool)

(assert (=> b!782163 m!725071))

(assert (=> b!782167 m!725063))

(assert (=> b!782167 m!725063))

(declare-fun m!725073 () Bool)

(assert (=> b!782167 m!725073))

(assert (=> b!782177 m!725063))

(assert (=> b!782177 m!725063))

(declare-fun m!725075 () Bool)

(assert (=> b!782177 m!725075))

(assert (=> b!782170 m!725063))

(assert (=> b!782170 m!725063))

(declare-fun m!725077 () Bool)

(assert (=> b!782170 m!725077))

(declare-fun m!725079 () Bool)

(assert (=> b!782158 m!725079))

(declare-fun m!725081 () Bool)

(assert (=> b!782158 m!725081))

(assert (=> b!782158 m!725079))

(declare-fun m!725083 () Bool)

(assert (=> b!782158 m!725083))

(declare-fun m!725085 () Bool)

(assert (=> b!782158 m!725085))

(declare-fun m!725087 () Bool)

(assert (=> b!782158 m!725087))

(declare-fun m!725089 () Bool)

(assert (=> b!782174 m!725089))

(assert (=> b!782169 m!725063))

(assert (=> b!782169 m!725063))

(declare-fun m!725091 () Bool)

(assert (=> b!782169 m!725091))

(assert (=> b!782169 m!725091))

(assert (=> b!782169 m!725063))

(declare-fun m!725093 () Bool)

(assert (=> b!782169 m!725093))

(assert (=> b!782161 m!725063))

(assert (=> b!782161 m!725063))

(assert (=> b!782161 m!725077))

(declare-fun m!725095 () Bool)

(assert (=> b!782178 m!725095))

(assert (=> b!782162 m!725063))

(assert (=> b!782162 m!725063))

(declare-fun m!725097 () Bool)

(assert (=> b!782162 m!725097))

(assert (=> b!782160 m!725085))

(declare-fun m!725099 () Bool)

(assert (=> b!782160 m!725099))

(declare-fun m!725101 () Bool)

(assert (=> b!782165 m!725101))

(assert (=> b!782164 m!725085))

(assert (=> b!782164 m!725099))

(declare-fun m!725103 () Bool)

(assert (=> start!67588 m!725103))

(declare-fun m!725105 () Bool)

(assert (=> start!67588 m!725105))

(push 1)

