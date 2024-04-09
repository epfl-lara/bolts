; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64338 () Bool)

(assert start!64338)

(declare-fun e!404984 () Bool)

(declare-datatypes ((array!40872 0))(
  ( (array!40873 (arr!19555 (Array (_ BitVec 32) (_ BitVec 64))) (size!19976 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40872)

(declare-fun b!722599 () Bool)

(declare-datatypes ((SeekEntryResult!7162 0))(
  ( (MissingZero!7162 (index!31015 (_ BitVec 32))) (Found!7162 (index!31016 (_ BitVec 32))) (Intermediate!7162 (undefined!7974 Bool) (index!31017 (_ BitVec 32)) (x!62044 (_ BitVec 32))) (Undefined!7162) (MissingVacant!7162 (index!31018 (_ BitVec 32))) )
))
(declare-fun lt!320367 () SeekEntryResult!7162)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40872 (_ BitVec 32)) SeekEntryResult!7162)

(assert (=> b!722599 (= e!404984 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19555 a!3186) j!159) a!3186 mask!3328) lt!320367))))

(declare-fun b!722600 () Bool)

(declare-fun res!484413 () Bool)

(declare-fun e!404988 () Bool)

(assert (=> b!722600 (=> (not res!484413) (not e!404988))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722600 (= res!484413 (validKeyInArray!0 k0!2102))))

(declare-fun b!722601 () Bool)

(declare-fun res!484418 () Bool)

(declare-fun e!404986 () Bool)

(assert (=> b!722601 (=> (not res!484418) (not e!404986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40872 (_ BitVec 32)) Bool)

(assert (=> b!722601 (= res!484418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722602 () Bool)

(declare-fun res!484408 () Bool)

(assert (=> b!722602 (=> (not res!484408) (not e!404986))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722602 (= res!484408 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19976 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19976 a!3186))))))

(declare-fun b!722603 () Bool)

(declare-fun res!484414 () Bool)

(assert (=> b!722603 (=> (not res!484414) (not e!404988))))

(assert (=> b!722603 (= res!484414 (validKeyInArray!0 (select (arr!19555 a!3186) j!159)))))

(declare-fun b!722604 () Bool)

(assert (=> b!722604 (= e!404988 e!404986)))

(declare-fun res!484419 () Bool)

(assert (=> b!722604 (=> (not res!484419) (not e!404986))))

(declare-fun lt!320365 () SeekEntryResult!7162)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722604 (= res!484419 (or (= lt!320365 (MissingZero!7162 i!1173)) (= lt!320365 (MissingVacant!7162 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40872 (_ BitVec 32)) SeekEntryResult!7162)

(assert (=> b!722604 (= lt!320365 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722605 () Bool)

(declare-fun e!404985 () Bool)

(assert (=> b!722605 (= e!404985 false)))

(declare-fun lt!320368 () array!40872)

(declare-fun lt!320369 () SeekEntryResult!7162)

(declare-fun lt!320366 () (_ BitVec 64))

(assert (=> b!722605 (= lt!320369 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320366 lt!320368 mask!3328))))

(declare-fun lt!320364 () SeekEntryResult!7162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722605 (= lt!320364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320366 mask!3328) lt!320366 lt!320368 mask!3328))))

(assert (=> b!722605 (= lt!320366 (select (store (arr!19555 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722605 (= lt!320368 (array!40873 (store (arr!19555 a!3186) i!1173 k0!2102) (size!19976 a!3186)))))

(declare-fun res!484410 () Bool)

(assert (=> start!64338 (=> (not res!484410) (not e!404988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64338 (= res!484410 (validMask!0 mask!3328))))

(assert (=> start!64338 e!404988))

(assert (=> start!64338 true))

(declare-fun array_inv!15329 (array!40872) Bool)

(assert (=> start!64338 (array_inv!15329 a!3186)))

(declare-fun b!722606 () Bool)

(declare-fun res!484411 () Bool)

(assert (=> b!722606 (=> (not res!484411) (not e!404985))))

(assert (=> b!722606 (= res!484411 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19555 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722607 () Bool)

(declare-fun res!484416 () Bool)

(assert (=> b!722607 (=> (not res!484416) (not e!404988))))

(declare-fun arrayContainsKey!0 (array!40872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722607 (= res!484416 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722608 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40872 (_ BitVec 32)) SeekEntryResult!7162)

(assert (=> b!722608 (= e!404984 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19555 a!3186) j!159) a!3186 mask!3328) (Found!7162 j!159)))))

(declare-fun b!722609 () Bool)

(declare-fun res!484415 () Bool)

(assert (=> b!722609 (=> (not res!484415) (not e!404988))))

(assert (=> b!722609 (= res!484415 (and (= (size!19976 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19976 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19976 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722610 () Bool)

(declare-fun res!484417 () Bool)

(assert (=> b!722610 (=> (not res!484417) (not e!404986))))

(declare-datatypes ((List!13610 0))(
  ( (Nil!13607) (Cons!13606 (h!14660 (_ BitVec 64)) (t!19933 List!13610)) )
))
(declare-fun arrayNoDuplicates!0 (array!40872 (_ BitVec 32) List!13610) Bool)

(assert (=> b!722610 (= res!484417 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13607))))

(declare-fun b!722611 () Bool)

(assert (=> b!722611 (= e!404986 e!404985)))

(declare-fun res!484409 () Bool)

(assert (=> b!722611 (=> (not res!484409) (not e!404985))))

(assert (=> b!722611 (= res!484409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19555 a!3186) j!159) mask!3328) (select (arr!19555 a!3186) j!159) a!3186 mask!3328) lt!320367))))

(assert (=> b!722611 (= lt!320367 (Intermediate!7162 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722612 () Bool)

(declare-fun res!484412 () Bool)

(assert (=> b!722612 (=> (not res!484412) (not e!404985))))

(assert (=> b!722612 (= res!484412 e!404984)))

(declare-fun c!79467 () Bool)

(assert (=> b!722612 (= c!79467 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64338 res!484410) b!722609))

(assert (= (and b!722609 res!484415) b!722603))

(assert (= (and b!722603 res!484414) b!722600))

(assert (= (and b!722600 res!484413) b!722607))

(assert (= (and b!722607 res!484416) b!722604))

(assert (= (and b!722604 res!484419) b!722601))

(assert (= (and b!722601 res!484418) b!722610))

(assert (= (and b!722610 res!484417) b!722602))

(assert (= (and b!722602 res!484408) b!722611))

(assert (= (and b!722611 res!484409) b!722606))

(assert (= (and b!722606 res!484411) b!722612))

(assert (= (and b!722612 c!79467) b!722599))

(assert (= (and b!722612 (not c!79467)) b!722608))

(assert (= (and b!722612 res!484412) b!722605))

(declare-fun m!677199 () Bool)

(assert (=> start!64338 m!677199))

(declare-fun m!677201 () Bool)

(assert (=> start!64338 m!677201))

(declare-fun m!677203 () Bool)

(assert (=> b!722611 m!677203))

(assert (=> b!722611 m!677203))

(declare-fun m!677205 () Bool)

(assert (=> b!722611 m!677205))

(assert (=> b!722611 m!677205))

(assert (=> b!722611 m!677203))

(declare-fun m!677207 () Bool)

(assert (=> b!722611 m!677207))

(declare-fun m!677209 () Bool)

(assert (=> b!722607 m!677209))

(assert (=> b!722599 m!677203))

(assert (=> b!722599 m!677203))

(declare-fun m!677211 () Bool)

(assert (=> b!722599 m!677211))

(declare-fun m!677213 () Bool)

(assert (=> b!722601 m!677213))

(assert (=> b!722608 m!677203))

(assert (=> b!722608 m!677203))

(declare-fun m!677215 () Bool)

(assert (=> b!722608 m!677215))

(declare-fun m!677217 () Bool)

(assert (=> b!722604 m!677217))

(declare-fun m!677219 () Bool)

(assert (=> b!722606 m!677219))

(assert (=> b!722603 m!677203))

(assert (=> b!722603 m!677203))

(declare-fun m!677221 () Bool)

(assert (=> b!722603 m!677221))

(declare-fun m!677223 () Bool)

(assert (=> b!722610 m!677223))

(declare-fun m!677225 () Bool)

(assert (=> b!722600 m!677225))

(declare-fun m!677227 () Bool)

(assert (=> b!722605 m!677227))

(declare-fun m!677229 () Bool)

(assert (=> b!722605 m!677229))

(declare-fun m!677231 () Bool)

(assert (=> b!722605 m!677231))

(declare-fun m!677233 () Bool)

(assert (=> b!722605 m!677233))

(assert (=> b!722605 m!677227))

(declare-fun m!677235 () Bool)

(assert (=> b!722605 m!677235))

(check-sat (not b!722604) (not b!722611) (not b!722601) (not b!722605) (not b!722607) (not b!722603) (not start!64338) (not b!722608) (not b!722600) (not b!722599) (not b!722610))
(check-sat)
