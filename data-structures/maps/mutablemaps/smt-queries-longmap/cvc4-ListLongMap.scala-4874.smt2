; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67178 () Bool)

(assert start!67178)

(declare-fun b!776209 () Bool)

(declare-fun res!525190 () Bool)

(declare-fun e!431967 () Bool)

(assert (=> b!776209 (=> (not res!525190) (not e!431967))))

(declare-datatypes ((array!42488 0))(
  ( (array!42489 (arr!20336 (Array (_ BitVec 32) (_ BitVec 64))) (size!20757 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42488)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776209 (= res!525190 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776210 () Bool)

(declare-fun res!525192 () Bool)

(assert (=> b!776210 (=> (not res!525192) (not e!431967))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776210 (= res!525192 (validKeyInArray!0 (select (arr!20336 a!3186) j!159)))))

(declare-fun b!776211 () Bool)

(declare-fun res!525200 () Bool)

(assert (=> b!776211 (=> (not res!525200) (not e!431967))))

(assert (=> b!776211 (= res!525200 (validKeyInArray!0 k!2102))))

(declare-fun b!776212 () Bool)

(declare-fun res!525187 () Bool)

(assert (=> b!776212 (=> (not res!525187) (not e!431967))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776212 (= res!525187 (and (= (size!20757 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20757 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20757 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776213 () Bool)

(declare-fun res!525199 () Bool)

(declare-fun e!431970 () Bool)

(assert (=> b!776213 (=> (not res!525199) (not e!431970))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776213 (= res!525199 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20757 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20757 a!3186))))))

(declare-datatypes ((SeekEntryResult!7943 0))(
  ( (MissingZero!7943 (index!34139 (_ BitVec 32))) (Found!7943 (index!34140 (_ BitVec 32))) (Intermediate!7943 (undefined!8755 Bool) (index!34141 (_ BitVec 32)) (x!65103 (_ BitVec 32))) (Undefined!7943) (MissingVacant!7943 (index!34142 (_ BitVec 32))) )
))
(declare-fun lt!345843 () SeekEntryResult!7943)

(declare-fun e!431968 () Bool)

(declare-fun b!776214 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42488 (_ BitVec 32)) SeekEntryResult!7943)

(assert (=> b!776214 (= e!431968 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20336 a!3186) j!159) a!3186 mask!3328) lt!345843))))

(declare-fun b!776215 () Bool)

(declare-fun res!525197 () Bool)

(assert (=> b!776215 (=> (not res!525197) (not e!431970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42488 (_ BitVec 32)) Bool)

(assert (=> b!776215 (= res!525197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776216 () Bool)

(declare-fun res!525202 () Bool)

(assert (=> b!776216 (=> (not res!525202) (not e!431970))))

(declare-datatypes ((List!14391 0))(
  ( (Nil!14388) (Cons!14387 (h!15495 (_ BitVec 64)) (t!20714 List!14391)) )
))
(declare-fun arrayNoDuplicates!0 (array!42488 (_ BitVec 32) List!14391) Bool)

(assert (=> b!776216 (= res!525202 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14388))))

(declare-fun b!776217 () Bool)

(declare-fun res!525188 () Bool)

(declare-fun e!431966 () Bool)

(assert (=> b!776217 (=> (not res!525188) (not e!431966))))

(assert (=> b!776217 (= res!525188 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20336 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!345844 () SeekEntryResult!7943)

(declare-fun e!431973 () Bool)

(declare-fun b!776218 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42488 (_ BitVec 32)) SeekEntryResult!7943)

(assert (=> b!776218 (= e!431973 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20336 a!3186) j!159) a!3186 mask!3328) lt!345844))))

(declare-fun b!776219 () Bool)

(declare-fun res!525194 () Bool)

(assert (=> b!776219 (=> (not res!525194) (not e!431966))))

(assert (=> b!776219 (= res!525194 e!431968)))

(declare-fun c!85911 () Bool)

(assert (=> b!776219 (= c!85911 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776220 () Bool)

(assert (=> b!776220 (= e!431970 e!431966)))

(declare-fun res!525189 () Bool)

(assert (=> b!776220 (=> (not res!525189) (not e!431966))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776220 (= res!525189 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20336 a!3186) j!159) mask!3328) (select (arr!20336 a!3186) j!159) a!3186 mask!3328) lt!345843))))

(assert (=> b!776220 (= lt!345843 (Intermediate!7943 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!525201 () Bool)

(assert (=> start!67178 (=> (not res!525201) (not e!431967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67178 (= res!525201 (validMask!0 mask!3328))))

(assert (=> start!67178 e!431967))

(assert (=> start!67178 true))

(declare-fun array_inv!16110 (array!42488) Bool)

(assert (=> start!67178 (array_inv!16110 a!3186)))

(declare-fun b!776221 () Bool)

(assert (=> b!776221 (= e!431967 e!431970)))

(declare-fun res!525195 () Bool)

(assert (=> b!776221 (=> (not res!525195) (not e!431970))))

(declare-fun lt!345841 () SeekEntryResult!7943)

(assert (=> b!776221 (= res!525195 (or (= lt!345841 (MissingZero!7943 i!1173)) (= lt!345841 (MissingVacant!7943 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42488 (_ BitVec 32)) SeekEntryResult!7943)

(assert (=> b!776221 (= lt!345841 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!776222 () Bool)

(declare-fun e!431972 () Bool)

(assert (=> b!776222 (= e!431972 true)))

(declare-fun lt!345839 () SeekEntryResult!7943)

(assert (=> b!776222 (= lt!345839 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20336 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776223 () Bool)

(assert (=> b!776223 (= e!431968 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20336 a!3186) j!159) a!3186 mask!3328) (Found!7943 j!159)))))

(declare-fun b!776224 () Bool)

(declare-fun e!431971 () Bool)

(assert (=> b!776224 (= e!431966 e!431971)))

(declare-fun res!525191 () Bool)

(assert (=> b!776224 (=> (not res!525191) (not e!431971))))

(declare-fun lt!345838 () SeekEntryResult!7943)

(declare-fun lt!345840 () SeekEntryResult!7943)

(assert (=> b!776224 (= res!525191 (= lt!345838 lt!345840))))

(declare-fun lt!345837 () (_ BitVec 64))

(declare-fun lt!345842 () array!42488)

(assert (=> b!776224 (= lt!345840 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345837 lt!345842 mask!3328))))

(assert (=> b!776224 (= lt!345838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345837 mask!3328) lt!345837 lt!345842 mask!3328))))

(assert (=> b!776224 (= lt!345837 (select (store (arr!20336 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776224 (= lt!345842 (array!42489 (store (arr!20336 a!3186) i!1173 k!2102) (size!20757 a!3186)))))

(declare-fun b!776225 () Bool)

(assert (=> b!776225 (= e!431971 (not e!431972))))

(declare-fun res!525193 () Bool)

(assert (=> b!776225 (=> res!525193 e!431972)))

(assert (=> b!776225 (= res!525193 (or (not (is-Intermediate!7943 lt!345840)) (bvslt x!1131 (x!65103 lt!345840)) (not (= x!1131 (x!65103 lt!345840))) (not (= index!1321 (index!34141 lt!345840)))))))

(declare-fun e!431969 () Bool)

(assert (=> b!776225 e!431969))

(declare-fun res!525198 () Bool)

(assert (=> b!776225 (=> (not res!525198) (not e!431969))))

(assert (=> b!776225 (= res!525198 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26780 0))(
  ( (Unit!26781) )
))
(declare-fun lt!345836 () Unit!26780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26780)

(assert (=> b!776225 (= lt!345836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776226 () Bool)

(assert (=> b!776226 (= e!431969 e!431973)))

(declare-fun res!525196 () Bool)

(assert (=> b!776226 (=> (not res!525196) (not e!431973))))

(assert (=> b!776226 (= res!525196 (= (seekEntryOrOpen!0 (select (arr!20336 a!3186) j!159) a!3186 mask!3328) lt!345844))))

(assert (=> b!776226 (= lt!345844 (Found!7943 j!159))))

(assert (= (and start!67178 res!525201) b!776212))

(assert (= (and b!776212 res!525187) b!776210))

(assert (= (and b!776210 res!525192) b!776211))

(assert (= (and b!776211 res!525200) b!776209))

(assert (= (and b!776209 res!525190) b!776221))

(assert (= (and b!776221 res!525195) b!776215))

(assert (= (and b!776215 res!525197) b!776216))

(assert (= (and b!776216 res!525202) b!776213))

(assert (= (and b!776213 res!525199) b!776220))

(assert (= (and b!776220 res!525189) b!776217))

(assert (= (and b!776217 res!525188) b!776219))

(assert (= (and b!776219 c!85911) b!776214))

(assert (= (and b!776219 (not c!85911)) b!776223))

(assert (= (and b!776219 res!525194) b!776224))

(assert (= (and b!776224 res!525191) b!776225))

(assert (= (and b!776225 res!525198) b!776226))

(assert (= (and b!776226 res!525196) b!776218))

(assert (= (and b!776225 (not res!525193)) b!776222))

(declare-fun m!720381 () Bool)

(assert (=> b!776220 m!720381))

(assert (=> b!776220 m!720381))

(declare-fun m!720383 () Bool)

(assert (=> b!776220 m!720383))

(assert (=> b!776220 m!720383))

(assert (=> b!776220 m!720381))

(declare-fun m!720385 () Bool)

(assert (=> b!776220 m!720385))

(declare-fun m!720387 () Bool)

(assert (=> b!776224 m!720387))

(declare-fun m!720389 () Bool)

(assert (=> b!776224 m!720389))

(declare-fun m!720391 () Bool)

(assert (=> b!776224 m!720391))

(assert (=> b!776224 m!720389))

(declare-fun m!720393 () Bool)

(assert (=> b!776224 m!720393))

(declare-fun m!720395 () Bool)

(assert (=> b!776224 m!720395))

(declare-fun m!720397 () Bool)

(assert (=> start!67178 m!720397))

(declare-fun m!720399 () Bool)

(assert (=> start!67178 m!720399))

(assert (=> b!776218 m!720381))

(assert (=> b!776218 m!720381))

(declare-fun m!720401 () Bool)

(assert (=> b!776218 m!720401))

(assert (=> b!776222 m!720381))

(assert (=> b!776222 m!720381))

(declare-fun m!720403 () Bool)

(assert (=> b!776222 m!720403))

(declare-fun m!720405 () Bool)

(assert (=> b!776225 m!720405))

(declare-fun m!720407 () Bool)

(assert (=> b!776225 m!720407))

(assert (=> b!776226 m!720381))

(assert (=> b!776226 m!720381))

(declare-fun m!720409 () Bool)

(assert (=> b!776226 m!720409))

(declare-fun m!720411 () Bool)

(assert (=> b!776211 m!720411))

(declare-fun m!720413 () Bool)

(assert (=> b!776221 m!720413))

(declare-fun m!720415 () Bool)

(assert (=> b!776209 m!720415))

(assert (=> b!776214 m!720381))

(assert (=> b!776214 m!720381))

(declare-fun m!720417 () Bool)

(assert (=> b!776214 m!720417))

(declare-fun m!720419 () Bool)

(assert (=> b!776216 m!720419))

(declare-fun m!720421 () Bool)

(assert (=> b!776215 m!720421))

(declare-fun m!720423 () Bool)

(assert (=> b!776217 m!720423))

(assert (=> b!776210 m!720381))

(assert (=> b!776210 m!720381))

(declare-fun m!720425 () Bool)

(assert (=> b!776210 m!720425))

(assert (=> b!776223 m!720381))

(assert (=> b!776223 m!720381))

(assert (=> b!776223 m!720403))

(push 1)

