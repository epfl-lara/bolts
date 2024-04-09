; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65176 () Bool)

(assert start!65176)

(declare-fun b!736338 () Bool)

(declare-fun res!494968 () Bool)

(declare-fun e!411944 () Bool)

(assert (=> b!736338 (=> (not res!494968) (not e!411944))))

(declare-datatypes ((array!41302 0))(
  ( (array!41303 (arr!19761 (Array (_ BitVec 32) (_ BitVec 64))) (size!20182 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41302)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736338 (= res!494968 (validKeyInArray!0 (select (arr!19761 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7368 0))(
  ( (MissingZero!7368 (index!31839 (_ BitVec 32))) (Found!7368 (index!31840 (_ BitVec 32))) (Intermediate!7368 (undefined!8180 Bool) (index!31841 (_ BitVec 32)) (x!62871 (_ BitVec 32))) (Undefined!7368) (MissingVacant!7368 (index!31842 (_ BitVec 32))) )
))
(declare-fun lt!326584 () SeekEntryResult!7368)

(declare-fun lt!326583 () (_ BitVec 32))

(declare-fun e!411949 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!736339 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41302 (_ BitVec 32)) SeekEntryResult!7368)

(assert (=> b!736339 (= e!411949 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326583 resIntermediateIndex!5 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326584)))))

(declare-fun res!494976 () Bool)

(assert (=> start!65176 (=> (not res!494976) (not e!411944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65176 (= res!494976 (validMask!0 mask!3328))))

(assert (=> start!65176 e!411944))

(assert (=> start!65176 true))

(declare-fun array_inv!15535 (array!41302) Bool)

(assert (=> start!65176 (array_inv!15535 a!3186)))

(declare-fun b!736340 () Bool)

(declare-fun res!494962 () Bool)

(declare-fun e!411950 () Bool)

(assert (=> b!736340 (=> (not res!494962) (not e!411950))))

(declare-fun e!411951 () Bool)

(assert (=> b!736340 (= res!494962 e!411951)))

(declare-fun c!81072 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736340 (= c!81072 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736341 () Bool)

(declare-fun res!494959 () Bool)

(declare-fun e!411946 () Bool)

(assert (=> b!736341 (=> (not res!494959) (not e!411946))))

(declare-datatypes ((List!13816 0))(
  ( (Nil!13813) (Cons!13812 (h!14884 (_ BitVec 64)) (t!20139 List!13816)) )
))
(declare-fun arrayNoDuplicates!0 (array!41302 (_ BitVec 32) List!13816) Bool)

(assert (=> b!736341 (= res!494959 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13813))))

(declare-fun b!736342 () Bool)

(declare-fun e!411942 () Bool)

(assert (=> b!736342 (= e!411950 e!411942)))

(declare-fun res!494960 () Bool)

(assert (=> b!736342 (=> (not res!494960) (not e!411942))))

(declare-fun lt!326576 () SeekEntryResult!7368)

(declare-fun lt!326585 () SeekEntryResult!7368)

(assert (=> b!736342 (= res!494960 (= lt!326576 lt!326585))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!326575 () (_ BitVec 64))

(declare-fun lt!326578 () array!41302)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41302 (_ BitVec 32)) SeekEntryResult!7368)

(assert (=> b!736342 (= lt!326585 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326575 lt!326578 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736342 (= lt!326576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326575 mask!3328) lt!326575 lt!326578 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!736342 (= lt!326575 (select (store (arr!19761 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736342 (= lt!326578 (array!41303 (store (arr!19761 a!3186) i!1173 k!2102) (size!20182 a!3186)))))

(declare-fun b!736343 () Bool)

(declare-fun e!411940 () Bool)

(declare-fun e!411948 () Bool)

(assert (=> b!736343 (= e!411940 e!411948)))

(declare-fun res!494963 () Bool)

(assert (=> b!736343 (=> res!494963 e!411948)))

(assert (=> b!736343 (= res!494963 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326583 #b00000000000000000000000000000000) (bvsge lt!326583 (size!20182 a!3186))))))

(declare-datatypes ((Unit!25090 0))(
  ( (Unit!25091) )
))
(declare-fun lt!326588 () Unit!25090)

(declare-fun e!411945 () Unit!25090)

(assert (=> b!736343 (= lt!326588 e!411945)))

(declare-fun c!81071 () Bool)

(declare-fun lt!326579 () Bool)

(assert (=> b!736343 (= c!81071 lt!326579)))

(assert (=> b!736343 (= lt!326579 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736343 (= lt!326583 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736344 () Bool)

(declare-fun res!494964 () Bool)

(assert (=> b!736344 (=> (not res!494964) (not e!411944))))

(declare-fun arrayContainsKey!0 (array!41302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736344 (= res!494964 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736345 () Bool)

(declare-fun res!494975 () Bool)

(assert (=> b!736345 (=> (not res!494975) (not e!411946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41302 (_ BitVec 32)) Bool)

(assert (=> b!736345 (= res!494975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736346 () Bool)

(assert (=> b!736346 (= e!411951 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) (Found!7368 j!159)))))

(declare-fun lt!326587 () SeekEntryResult!7368)

(declare-fun b!736347 () Bool)

(assert (=> b!736347 (= e!411949 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326583 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326587)))))

(declare-fun b!736348 () Bool)

(declare-fun res!494973 () Bool)

(assert (=> b!736348 (=> res!494973 e!411948)))

(assert (=> b!736348 (= res!494973 e!411949)))

(declare-fun c!81070 () Bool)

(assert (=> b!736348 (= c!81070 lt!326579)))

(declare-fun b!736349 () Bool)

(declare-fun res!494972 () Bool)

(assert (=> b!736349 (=> (not res!494972) (not e!411944))))

(assert (=> b!736349 (= res!494972 (validKeyInArray!0 k!2102))))

(declare-fun b!736350 () Bool)

(assert (=> b!736350 (= e!411942 (not e!411940))))

(declare-fun res!494971 () Bool)

(assert (=> b!736350 (=> res!494971 e!411940)))

(assert (=> b!736350 (= res!494971 (or (not (is-Intermediate!7368 lt!326585)) (bvsge x!1131 (x!62871 lt!326585))))))

(assert (=> b!736350 (= lt!326584 (Found!7368 j!159))))

(declare-fun e!411943 () Bool)

(assert (=> b!736350 e!411943))

(declare-fun res!494965 () Bool)

(assert (=> b!736350 (=> (not res!494965) (not e!411943))))

(assert (=> b!736350 (= res!494965 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326586 () Unit!25090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25090)

(assert (=> b!736350 (= lt!326586 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736351 () Bool)

(assert (=> b!736351 (= e!411951 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326587))))

(declare-fun b!736352 () Bool)

(assert (=> b!736352 (= e!411948 true)))

(declare-fun lt!326582 () SeekEntryResult!7368)

(assert (=> b!736352 (= lt!326582 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326583 lt!326575 lt!326578 mask!3328))))

(declare-fun b!736353 () Bool)

(declare-fun Unit!25092 () Unit!25090)

(assert (=> b!736353 (= e!411945 Unit!25092)))

(declare-fun lt!326581 () SeekEntryResult!7368)

(assert (=> b!736353 (= lt!326581 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19761 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736353 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326583 resIntermediateIndex!5 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326584)))

(declare-fun b!736354 () Bool)

(declare-fun Unit!25093 () Unit!25090)

(assert (=> b!736354 (= e!411945 Unit!25093)))

(assert (=> b!736354 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326583 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326587)))

(declare-fun b!736355 () Bool)

(declare-fun e!411947 () Bool)

(assert (=> b!736355 (= e!411943 e!411947)))

(declare-fun res!494967 () Bool)

(assert (=> b!736355 (=> (not res!494967) (not e!411947))))

(declare-fun lt!326577 () SeekEntryResult!7368)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41302 (_ BitVec 32)) SeekEntryResult!7368)

(assert (=> b!736355 (= res!494967 (= (seekEntryOrOpen!0 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326577))))

(assert (=> b!736355 (= lt!326577 (Found!7368 j!159))))

(declare-fun b!736356 () Bool)

(assert (=> b!736356 (= e!411944 e!411946)))

(declare-fun res!494970 () Bool)

(assert (=> b!736356 (=> (not res!494970) (not e!411946))))

(declare-fun lt!326580 () SeekEntryResult!7368)

(assert (=> b!736356 (= res!494970 (or (= lt!326580 (MissingZero!7368 i!1173)) (= lt!326580 (MissingVacant!7368 i!1173))))))

(assert (=> b!736356 (= lt!326580 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736357 () Bool)

(declare-fun res!494974 () Bool)

(assert (=> b!736357 (=> (not res!494974) (not e!411950))))

(assert (=> b!736357 (= res!494974 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19761 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736358 () Bool)

(declare-fun res!494961 () Bool)

(assert (=> b!736358 (=> (not res!494961) (not e!411944))))

(assert (=> b!736358 (= res!494961 (and (= (size!20182 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20182 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20182 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736359 () Bool)

(declare-fun res!494969 () Bool)

(assert (=> b!736359 (=> (not res!494969) (not e!411946))))

(assert (=> b!736359 (= res!494969 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20182 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20182 a!3186))))))

(declare-fun b!736360 () Bool)

(assert (=> b!736360 (= e!411947 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326577))))

(declare-fun b!736361 () Bool)

(assert (=> b!736361 (= e!411946 e!411950)))

(declare-fun res!494966 () Bool)

(assert (=> b!736361 (=> (not res!494966) (not e!411950))))

(assert (=> b!736361 (= res!494966 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19761 a!3186) j!159) mask!3328) (select (arr!19761 a!3186) j!159) a!3186 mask!3328) lt!326587))))

(assert (=> b!736361 (= lt!326587 (Intermediate!7368 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65176 res!494976) b!736358))

(assert (= (and b!736358 res!494961) b!736338))

(assert (= (and b!736338 res!494968) b!736349))

(assert (= (and b!736349 res!494972) b!736344))

(assert (= (and b!736344 res!494964) b!736356))

(assert (= (and b!736356 res!494970) b!736345))

(assert (= (and b!736345 res!494975) b!736341))

(assert (= (and b!736341 res!494959) b!736359))

(assert (= (and b!736359 res!494969) b!736361))

(assert (= (and b!736361 res!494966) b!736357))

(assert (= (and b!736357 res!494974) b!736340))

(assert (= (and b!736340 c!81072) b!736351))

(assert (= (and b!736340 (not c!81072)) b!736346))

(assert (= (and b!736340 res!494962) b!736342))

(assert (= (and b!736342 res!494960) b!736350))

(assert (= (and b!736350 res!494965) b!736355))

(assert (= (and b!736355 res!494967) b!736360))

(assert (= (and b!736350 (not res!494971)) b!736343))

(assert (= (and b!736343 c!81071) b!736354))

(assert (= (and b!736343 (not c!81071)) b!736353))

(assert (= (and b!736343 (not res!494963)) b!736348))

(assert (= (and b!736348 c!81070) b!736347))

(assert (= (and b!736348 (not c!81070)) b!736339))

(assert (= (and b!736348 (not res!494973)) b!736352))

(declare-fun m!688561 () Bool)

(assert (=> b!736350 m!688561))

(declare-fun m!688563 () Bool)

(assert (=> b!736350 m!688563))

(declare-fun m!688565 () Bool)

(assert (=> b!736347 m!688565))

(assert (=> b!736347 m!688565))

(declare-fun m!688567 () Bool)

(assert (=> b!736347 m!688567))

(declare-fun m!688569 () Bool)

(assert (=> b!736343 m!688569))

(declare-fun m!688571 () Bool)

(assert (=> b!736357 m!688571))

(declare-fun m!688573 () Bool)

(assert (=> b!736341 m!688573))

(assert (=> b!736361 m!688565))

(assert (=> b!736361 m!688565))

(declare-fun m!688575 () Bool)

(assert (=> b!736361 m!688575))

(assert (=> b!736361 m!688575))

(assert (=> b!736361 m!688565))

(declare-fun m!688577 () Bool)

(assert (=> b!736361 m!688577))

(declare-fun m!688579 () Bool)

(assert (=> start!65176 m!688579))

(declare-fun m!688581 () Bool)

(assert (=> start!65176 m!688581))

(declare-fun m!688583 () Bool)

(assert (=> b!736356 m!688583))

(assert (=> b!736360 m!688565))

(assert (=> b!736360 m!688565))

(declare-fun m!688585 () Bool)

(assert (=> b!736360 m!688585))

(assert (=> b!736338 m!688565))

(assert (=> b!736338 m!688565))

(declare-fun m!688587 () Bool)

(assert (=> b!736338 m!688587))

(declare-fun m!688589 () Bool)

(assert (=> b!736349 m!688589))

(assert (=> b!736339 m!688565))

(assert (=> b!736339 m!688565))

(declare-fun m!688591 () Bool)

(assert (=> b!736339 m!688591))

(assert (=> b!736351 m!688565))

(assert (=> b!736351 m!688565))

(declare-fun m!688593 () Bool)

(assert (=> b!736351 m!688593))

(assert (=> b!736353 m!688565))

(assert (=> b!736353 m!688565))

(declare-fun m!688595 () Bool)

(assert (=> b!736353 m!688595))

(assert (=> b!736353 m!688565))

(assert (=> b!736353 m!688591))

(declare-fun m!688597 () Bool)

(assert (=> b!736342 m!688597))

(declare-fun m!688599 () Bool)

(assert (=> b!736342 m!688599))

(assert (=> b!736342 m!688597))

(declare-fun m!688601 () Bool)

(assert (=> b!736342 m!688601))

(declare-fun m!688603 () Bool)

(assert (=> b!736342 m!688603))

(declare-fun m!688605 () Bool)

(assert (=> b!736342 m!688605))

(declare-fun m!688607 () Bool)

(assert (=> b!736345 m!688607))

(assert (=> b!736354 m!688565))

(assert (=> b!736354 m!688565))

(assert (=> b!736354 m!688567))

(assert (=> b!736355 m!688565))

(assert (=> b!736355 m!688565))

(declare-fun m!688609 () Bool)

(assert (=> b!736355 m!688609))

(declare-fun m!688611 () Bool)

(assert (=> b!736344 m!688611))

(assert (=> b!736346 m!688565))

(assert (=> b!736346 m!688565))

(assert (=> b!736346 m!688595))

(declare-fun m!688613 () Bool)

(assert (=> b!736352 m!688613))

(push 1)

