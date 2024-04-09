; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64494 () Bool)

(assert start!64494)

(declare-fun b!725083 () Bool)

(declare-fun res!486357 () Bool)

(declare-fun e!406102 () Bool)

(assert (=> b!725083 (=> (not res!486357) (not e!406102))))

(declare-datatypes ((array!40965 0))(
  ( (array!40966 (arr!19600 (Array (_ BitVec 32) (_ BitVec 64))) (size!20021 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40965)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!725083 (= res!486357 (and (= (size!20021 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20021 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20021 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725084 () Bool)

(declare-fun res!486353 () Bool)

(declare-fun e!406103 () Bool)

(assert (=> b!725084 (=> (not res!486353) (not e!406103))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725084 (= res!486353 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20021 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20021 a!3186))))))

(declare-fun b!725085 () Bool)

(declare-fun res!486362 () Bool)

(assert (=> b!725085 (=> (not res!486362) (not e!406102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725085 (= res!486362 (validKeyInArray!0 (select (arr!19600 a!3186) j!159)))))

(declare-fun b!725086 () Bool)

(assert (=> b!725086 (= e!406102 e!406103)))

(declare-fun res!486363 () Bool)

(assert (=> b!725086 (=> (not res!486363) (not e!406103))))

(declare-datatypes ((SeekEntryResult!7207 0))(
  ( (MissingZero!7207 (index!31195 (_ BitVec 32))) (Found!7207 (index!31196 (_ BitVec 32))) (Intermediate!7207 (undefined!8019 Bool) (index!31197 (_ BitVec 32)) (x!62218 (_ BitVec 32))) (Undefined!7207) (MissingVacant!7207 (index!31198 (_ BitVec 32))) )
))
(declare-fun lt!321230 () SeekEntryResult!7207)

(assert (=> b!725086 (= res!486363 (or (= lt!321230 (MissingZero!7207 i!1173)) (= lt!321230 (MissingVacant!7207 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40965 (_ BitVec 32)) SeekEntryResult!7207)

(assert (=> b!725086 (= lt!321230 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!725087 () Bool)

(declare-fun e!406100 () Bool)

(assert (=> b!725087 (= e!406103 e!406100)))

(declare-fun res!486355 () Bool)

(assert (=> b!725087 (=> (not res!486355) (not e!406100))))

(declare-fun lt!321228 () SeekEntryResult!7207)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40965 (_ BitVec 32)) SeekEntryResult!7207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725087 (= res!486355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19600 a!3186) j!159) mask!3328) (select (arr!19600 a!3186) j!159) a!3186 mask!3328) lt!321228))))

(assert (=> b!725087 (= lt!321228 (Intermediate!7207 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725088 () Bool)

(declare-fun e!406099 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40965 (_ BitVec 32)) SeekEntryResult!7207)

(assert (=> b!725088 (= e!406099 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19600 a!3186) j!159) a!3186 mask!3328) (Found!7207 j!159)))))

(declare-fun res!486361 () Bool)

(assert (=> start!64494 (=> (not res!486361) (not e!406102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64494 (= res!486361 (validMask!0 mask!3328))))

(assert (=> start!64494 e!406102))

(assert (=> start!64494 true))

(declare-fun array_inv!15374 (array!40965) Bool)

(assert (=> start!64494 (array_inv!15374 a!3186)))

(declare-fun b!725089 () Bool)

(declare-fun res!486350 () Bool)

(assert (=> b!725089 (=> (not res!486350) (not e!406103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40965 (_ BitVec 32)) Bool)

(assert (=> b!725089 (= res!486350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725090 () Bool)

(declare-fun e!406104 () Bool)

(assert (=> b!725090 (= e!406104 (not true))))

(declare-fun e!406098 () Bool)

(assert (=> b!725090 e!406098))

(declare-fun res!486359 () Bool)

(assert (=> b!725090 (=> (not res!486359) (not e!406098))))

(assert (=> b!725090 (= res!486359 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24732 0))(
  ( (Unit!24733) )
))
(declare-fun lt!321226 () Unit!24732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24732)

(assert (=> b!725090 (= lt!321226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725091 () Bool)

(declare-fun e!406097 () Bool)

(assert (=> b!725091 (= e!406098 e!406097)))

(declare-fun res!486349 () Bool)

(assert (=> b!725091 (=> (not res!486349) (not e!406097))))

(declare-fun lt!321225 () SeekEntryResult!7207)

(assert (=> b!725091 (= res!486349 (= (seekEntryOrOpen!0 (select (arr!19600 a!3186) j!159) a!3186 mask!3328) lt!321225))))

(assert (=> b!725091 (= lt!321225 (Found!7207 j!159))))

(declare-fun b!725092 () Bool)

(assert (=> b!725092 (= e!406100 e!406104)))

(declare-fun res!486351 () Bool)

(assert (=> b!725092 (=> (not res!486351) (not e!406104))))

(declare-fun lt!321227 () (_ BitVec 64))

(declare-fun lt!321229 () array!40965)

(assert (=> b!725092 (= res!486351 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321227 mask!3328) lt!321227 lt!321229 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321227 lt!321229 mask!3328)))))

(assert (=> b!725092 (= lt!321227 (select (store (arr!19600 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725092 (= lt!321229 (array!40966 (store (arr!19600 a!3186) i!1173 k0!2102) (size!20021 a!3186)))))

(declare-fun b!725093 () Bool)

(declare-fun res!486354 () Bool)

(assert (=> b!725093 (=> (not res!486354) (not e!406103))))

(declare-datatypes ((List!13655 0))(
  ( (Nil!13652) (Cons!13651 (h!14708 (_ BitVec 64)) (t!19978 List!13655)) )
))
(declare-fun arrayNoDuplicates!0 (array!40965 (_ BitVec 32) List!13655) Bool)

(assert (=> b!725093 (= res!486354 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13652))))

(declare-fun b!725094 () Bool)

(declare-fun res!486360 () Bool)

(assert (=> b!725094 (=> (not res!486360) (not e!406100))))

(assert (=> b!725094 (= res!486360 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19600 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725095 () Bool)

(declare-fun res!486356 () Bool)

(assert (=> b!725095 (=> (not res!486356) (not e!406102))))

(assert (=> b!725095 (= res!486356 (validKeyInArray!0 k0!2102))))

(declare-fun b!725096 () Bool)

(declare-fun res!486352 () Bool)

(assert (=> b!725096 (=> (not res!486352) (not e!406102))))

(declare-fun arrayContainsKey!0 (array!40965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725096 (= res!486352 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725097 () Bool)

(declare-fun res!486358 () Bool)

(assert (=> b!725097 (=> (not res!486358) (not e!406100))))

(assert (=> b!725097 (= res!486358 e!406099)))

(declare-fun c!79740 () Bool)

(assert (=> b!725097 (= c!79740 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725098 () Bool)

(assert (=> b!725098 (= e!406097 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19600 a!3186) j!159) a!3186 mask!3328) lt!321225))))

(declare-fun b!725099 () Bool)

(assert (=> b!725099 (= e!406099 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19600 a!3186) j!159) a!3186 mask!3328) lt!321228))))

(assert (= (and start!64494 res!486361) b!725083))

(assert (= (and b!725083 res!486357) b!725085))

(assert (= (and b!725085 res!486362) b!725095))

(assert (= (and b!725095 res!486356) b!725096))

(assert (= (and b!725096 res!486352) b!725086))

(assert (= (and b!725086 res!486363) b!725089))

(assert (= (and b!725089 res!486350) b!725093))

(assert (= (and b!725093 res!486354) b!725084))

(assert (= (and b!725084 res!486353) b!725087))

(assert (= (and b!725087 res!486355) b!725094))

(assert (= (and b!725094 res!486360) b!725097))

(assert (= (and b!725097 c!79740) b!725099))

(assert (= (and b!725097 (not c!79740)) b!725088))

(assert (= (and b!725097 res!486358) b!725092))

(assert (= (and b!725092 res!486351) b!725090))

(assert (= (and b!725090 res!486359) b!725091))

(assert (= (and b!725091 res!486349) b!725098))

(declare-fun m!679367 () Bool)

(assert (=> b!725086 m!679367))

(declare-fun m!679369 () Bool)

(assert (=> b!725098 m!679369))

(assert (=> b!725098 m!679369))

(declare-fun m!679371 () Bool)

(assert (=> b!725098 m!679371))

(declare-fun m!679373 () Bool)

(assert (=> start!64494 m!679373))

(declare-fun m!679375 () Bool)

(assert (=> start!64494 m!679375))

(declare-fun m!679377 () Bool)

(assert (=> b!725094 m!679377))

(declare-fun m!679379 () Bool)

(assert (=> b!725096 m!679379))

(assert (=> b!725091 m!679369))

(assert (=> b!725091 m!679369))

(declare-fun m!679381 () Bool)

(assert (=> b!725091 m!679381))

(declare-fun m!679383 () Bool)

(assert (=> b!725089 m!679383))

(assert (=> b!725099 m!679369))

(assert (=> b!725099 m!679369))

(declare-fun m!679385 () Bool)

(assert (=> b!725099 m!679385))

(assert (=> b!725088 m!679369))

(assert (=> b!725088 m!679369))

(declare-fun m!679387 () Bool)

(assert (=> b!725088 m!679387))

(declare-fun m!679389 () Bool)

(assert (=> b!725090 m!679389))

(declare-fun m!679391 () Bool)

(assert (=> b!725090 m!679391))

(declare-fun m!679393 () Bool)

(assert (=> b!725092 m!679393))

(assert (=> b!725092 m!679393))

(declare-fun m!679395 () Bool)

(assert (=> b!725092 m!679395))

(declare-fun m!679397 () Bool)

(assert (=> b!725092 m!679397))

(declare-fun m!679399 () Bool)

(assert (=> b!725092 m!679399))

(declare-fun m!679401 () Bool)

(assert (=> b!725092 m!679401))

(assert (=> b!725085 m!679369))

(assert (=> b!725085 m!679369))

(declare-fun m!679403 () Bool)

(assert (=> b!725085 m!679403))

(assert (=> b!725087 m!679369))

(assert (=> b!725087 m!679369))

(declare-fun m!679405 () Bool)

(assert (=> b!725087 m!679405))

(assert (=> b!725087 m!679405))

(assert (=> b!725087 m!679369))

(declare-fun m!679407 () Bool)

(assert (=> b!725087 m!679407))

(declare-fun m!679409 () Bool)

(assert (=> b!725095 m!679409))

(declare-fun m!679411 () Bool)

(assert (=> b!725093 m!679411))

(check-sat (not start!64494) (not b!725086) (not b!725095) (not b!725089) (not b!725085) (not b!725091) (not b!725088) (not b!725087) (not b!725090) (not b!725096) (not b!725092) (not b!725098) (not b!725093) (not b!725099))
(check-sat)
