; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64328 () Bool)

(assert start!64328)

(declare-fun b!722389 () Bool)

(declare-fun e!404912 () Bool)

(declare-fun e!404909 () Bool)

(assert (=> b!722389 (= e!404912 e!404909)))

(declare-fun res!484231 () Bool)

(assert (=> b!722389 (=> (not res!484231) (not e!404909))))

(declare-datatypes ((SeekEntryResult!7157 0))(
  ( (MissingZero!7157 (index!30995 (_ BitVec 32))) (Found!7157 (index!30996 (_ BitVec 32))) (Intermediate!7157 (undefined!7969 Bool) (index!30997 (_ BitVec 32)) (x!62023 (_ BitVec 32))) (Undefined!7157) (MissingVacant!7157 (index!30998 (_ BitVec 32))) )
))
(declare-fun lt!320274 () SeekEntryResult!7157)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722389 (= res!484231 (or (= lt!320274 (MissingZero!7157 i!1173)) (= lt!320274 (MissingVacant!7157 i!1173))))))

(declare-datatypes ((array!40862 0))(
  ( (array!40863 (arr!19550 (Array (_ BitVec 32) (_ BitVec 64))) (size!19971 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40862)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40862 (_ BitVec 32)) SeekEntryResult!7157)

(assert (=> b!722389 (= lt!320274 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722390 () Bool)

(declare-fun res!484230 () Bool)

(declare-fun e!404910 () Bool)

(assert (=> b!722390 (=> (not res!484230) (not e!404910))))

(declare-fun e!404913 () Bool)

(assert (=> b!722390 (= res!484230 e!404913)))

(declare-fun c!79452 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722390 (= c!79452 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722391 () Bool)

(declare-fun res!484232 () Bool)

(assert (=> b!722391 (=> (not res!484232) (not e!404912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722391 (= res!484232 (validKeyInArray!0 k!2102))))

(declare-fun b!722392 () Bool)

(assert (=> b!722392 (= e!404909 e!404910)))

(declare-fun res!484234 () Bool)

(assert (=> b!722392 (=> (not res!484234) (not e!404910))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!320278 () SeekEntryResult!7157)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40862 (_ BitVec 32)) SeekEntryResult!7157)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722392 (= res!484234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19550 a!3186) j!159) mask!3328) (select (arr!19550 a!3186) j!159) a!3186 mask!3328) lt!320278))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!722392 (= lt!320278 (Intermediate!7157 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722393 () Bool)

(declare-fun res!484237 () Bool)

(assert (=> b!722393 (=> (not res!484237) (not e!404912))))

(assert (=> b!722393 (= res!484237 (and (= (size!19971 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19971 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19971 a!3186)) (not (= i!1173 j!159))))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722394 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40862 (_ BitVec 32)) SeekEntryResult!7157)

(assert (=> b!722394 (= e!404913 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19550 a!3186) j!159) a!3186 mask!3328) (Found!7157 j!159)))))

(declare-fun b!722395 () Bool)

(declare-fun res!484236 () Bool)

(assert (=> b!722395 (=> (not res!484236) (not e!404909))))

(declare-datatypes ((List!13605 0))(
  ( (Nil!13602) (Cons!13601 (h!14655 (_ BitVec 64)) (t!19928 List!13605)) )
))
(declare-fun arrayNoDuplicates!0 (array!40862 (_ BitVec 32) List!13605) Bool)

(assert (=> b!722395 (= res!484236 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13602))))

(declare-fun b!722396 () Bool)

(declare-fun res!484228 () Bool)

(assert (=> b!722396 (=> (not res!484228) (not e!404909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40862 (_ BitVec 32)) Bool)

(assert (=> b!722396 (= res!484228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722397 () Bool)

(declare-fun res!484238 () Bool)

(assert (=> b!722397 (=> (not res!484238) (not e!404912))))

(assert (=> b!722397 (= res!484238 (validKeyInArray!0 (select (arr!19550 a!3186) j!159)))))

(declare-fun b!722398 () Bool)

(assert (=> b!722398 (= e!404910 false)))

(declare-fun lt!320275 () SeekEntryResult!7157)

(declare-fun lt!320276 () array!40862)

(declare-fun lt!320279 () (_ BitVec 64))

(assert (=> b!722398 (= lt!320275 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320279 lt!320276 mask!3328))))

(declare-fun lt!320277 () SeekEntryResult!7157)

(assert (=> b!722398 (= lt!320277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320279 mask!3328) lt!320279 lt!320276 mask!3328))))

(assert (=> b!722398 (= lt!320279 (select (store (arr!19550 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722398 (= lt!320276 (array!40863 (store (arr!19550 a!3186) i!1173 k!2102) (size!19971 a!3186)))))

(declare-fun b!722399 () Bool)

(assert (=> b!722399 (= e!404913 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19550 a!3186) j!159) a!3186 mask!3328) lt!320278))))

(declare-fun res!484235 () Bool)

(assert (=> start!64328 (=> (not res!484235) (not e!404912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64328 (= res!484235 (validMask!0 mask!3328))))

(assert (=> start!64328 e!404912))

(assert (=> start!64328 true))

(declare-fun array_inv!15324 (array!40862) Bool)

(assert (=> start!64328 (array_inv!15324 a!3186)))

(declare-fun b!722400 () Bool)

(declare-fun res!484239 () Bool)

(assert (=> b!722400 (=> (not res!484239) (not e!404909))))

(assert (=> b!722400 (= res!484239 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19971 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19971 a!3186))))))

(declare-fun b!722401 () Bool)

(declare-fun res!484233 () Bool)

(assert (=> b!722401 (=> (not res!484233) (not e!404912))))

(declare-fun arrayContainsKey!0 (array!40862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722401 (= res!484233 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722402 () Bool)

(declare-fun res!484229 () Bool)

(assert (=> b!722402 (=> (not res!484229) (not e!404910))))

(assert (=> b!722402 (= res!484229 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19550 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64328 res!484235) b!722393))

(assert (= (and b!722393 res!484237) b!722397))

(assert (= (and b!722397 res!484238) b!722391))

(assert (= (and b!722391 res!484232) b!722401))

(assert (= (and b!722401 res!484233) b!722389))

(assert (= (and b!722389 res!484231) b!722396))

(assert (= (and b!722396 res!484228) b!722395))

(assert (= (and b!722395 res!484236) b!722400))

(assert (= (and b!722400 res!484239) b!722392))

(assert (= (and b!722392 res!484234) b!722402))

(assert (= (and b!722402 res!484229) b!722390))

(assert (= (and b!722390 c!79452) b!722399))

(assert (= (and b!722390 (not c!79452)) b!722394))

(assert (= (and b!722390 res!484230) b!722398))

(declare-fun m!677009 () Bool)

(assert (=> b!722398 m!677009))

(declare-fun m!677011 () Bool)

(assert (=> b!722398 m!677011))

(declare-fun m!677013 () Bool)

(assert (=> b!722398 m!677013))

(declare-fun m!677015 () Bool)

(assert (=> b!722398 m!677015))

(assert (=> b!722398 m!677015))

(declare-fun m!677017 () Bool)

(assert (=> b!722398 m!677017))

(declare-fun m!677019 () Bool)

(assert (=> b!722396 m!677019))

(declare-fun m!677021 () Bool)

(assert (=> b!722391 m!677021))

(declare-fun m!677023 () Bool)

(assert (=> start!64328 m!677023))

(declare-fun m!677025 () Bool)

(assert (=> start!64328 m!677025))

(declare-fun m!677027 () Bool)

(assert (=> b!722392 m!677027))

(assert (=> b!722392 m!677027))

(declare-fun m!677029 () Bool)

(assert (=> b!722392 m!677029))

(assert (=> b!722392 m!677029))

(assert (=> b!722392 m!677027))

(declare-fun m!677031 () Bool)

(assert (=> b!722392 m!677031))

(declare-fun m!677033 () Bool)

(assert (=> b!722401 m!677033))

(assert (=> b!722394 m!677027))

(assert (=> b!722394 m!677027))

(declare-fun m!677035 () Bool)

(assert (=> b!722394 m!677035))

(declare-fun m!677037 () Bool)

(assert (=> b!722402 m!677037))

(assert (=> b!722397 m!677027))

(assert (=> b!722397 m!677027))

(declare-fun m!677039 () Bool)

(assert (=> b!722397 m!677039))

(assert (=> b!722399 m!677027))

(assert (=> b!722399 m!677027))

(declare-fun m!677041 () Bool)

(assert (=> b!722399 m!677041))

(declare-fun m!677043 () Bool)

(assert (=> b!722389 m!677043))

(declare-fun m!677045 () Bool)

(assert (=> b!722395 m!677045))

(push 1)

