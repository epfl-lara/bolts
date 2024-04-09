; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65494 () Bool)

(assert start!65494)

(declare-fun b!746181 () Bool)

(declare-fun e!416733 () Bool)

(declare-fun e!416732 () Bool)

(assert (=> b!746181 (= e!416733 (not e!416732))))

(declare-fun res!503111 () Bool)

(assert (=> b!746181 (=> res!503111 e!416732)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7527 0))(
  ( (MissingZero!7527 (index!32475 (_ BitVec 32))) (Found!7527 (index!32476 (_ BitVec 32))) (Intermediate!7527 (undefined!8339 Bool) (index!32477 (_ BitVec 32)) (x!63454 (_ BitVec 32))) (Undefined!7527) (MissingVacant!7527 (index!32478 (_ BitVec 32))) )
))
(declare-fun lt!331608 () SeekEntryResult!7527)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!746181 (= res!503111 (or (not (is-Intermediate!7527 lt!331608)) (bvslt x!1131 (x!63454 lt!331608)) (not (= x!1131 (x!63454 lt!331608))) (not (= index!1321 (index!32477 lt!331608)))))))

(declare-fun e!416735 () Bool)

(assert (=> b!746181 e!416735))

(declare-fun res!503108 () Bool)

(assert (=> b!746181 (=> (not res!503108) (not e!416735))))

(declare-fun lt!331607 () SeekEntryResult!7527)

(declare-fun lt!331613 () SeekEntryResult!7527)

(assert (=> b!746181 (= res!503108 (= lt!331607 lt!331613))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746181 (= lt!331613 (Found!7527 j!159))))

(declare-datatypes ((array!41620 0))(
  ( (array!41621 (arr!19920 (Array (_ BitVec 32) (_ BitVec 64))) (size!20341 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41620)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41620 (_ BitVec 32)) SeekEntryResult!7527)

(assert (=> b!746181 (= lt!331607 (seekEntryOrOpen!0 (select (arr!19920 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41620 (_ BitVec 32)) Bool)

(assert (=> b!746181 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25534 0))(
  ( (Unit!25535) )
))
(declare-fun lt!331612 () Unit!25534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25534)

(assert (=> b!746181 (= lt!331612 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!416734 () Bool)

(declare-fun b!746182 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41620 (_ BitVec 32)) SeekEntryResult!7527)

(assert (=> b!746182 (= e!416734 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19920 a!3186) j!159) a!3186 mask!3328) (Found!7527 j!159)))))

(declare-fun b!746183 () Bool)

(declare-fun res!503110 () Bool)

(declare-fun e!416736 () Bool)

(assert (=> b!746183 (=> (not res!503110) (not e!416736))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746183 (= res!503110 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20341 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20341 a!3186))))))

(declare-fun b!746184 () Bool)

(declare-fun res!503105 () Bool)

(declare-fun e!416739 () Bool)

(assert (=> b!746184 (=> (not res!503105) (not e!416739))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746184 (= res!503105 (validKeyInArray!0 k!2102))))

(declare-fun res!503101 () Bool)

(assert (=> start!65494 (=> (not res!503101) (not e!416739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65494 (= res!503101 (validMask!0 mask!3328))))

(assert (=> start!65494 e!416739))

(assert (=> start!65494 true))

(declare-fun array_inv!15694 (array!41620) Bool)

(assert (=> start!65494 (array_inv!15694 a!3186)))

(declare-fun b!746185 () Bool)

(declare-fun res!503103 () Bool)

(assert (=> b!746185 (=> (not res!503103) (not e!416739))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746185 (= res!503103 (and (= (size!20341 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20341 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20341 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746186 () Bool)

(declare-fun res!503102 () Bool)

(assert (=> b!746186 (=> (not res!503102) (not e!416736))))

(assert (=> b!746186 (= res!503102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746187 () Bool)

(declare-fun res!503104 () Bool)

(assert (=> b!746187 (=> (not res!503104) (not e!416736))))

(declare-datatypes ((List!13975 0))(
  ( (Nil!13972) (Cons!13971 (h!15043 (_ BitVec 64)) (t!20298 List!13975)) )
))
(declare-fun arrayNoDuplicates!0 (array!41620 (_ BitVec 32) List!13975) Bool)

(assert (=> b!746187 (= res!503104 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13972))))

(declare-fun b!746188 () Bool)

(declare-fun e!416737 () Bool)

(assert (=> b!746188 (= e!416737 e!416733)))

(declare-fun res!503109 () Bool)

(assert (=> b!746188 (=> (not res!503109) (not e!416733))))

(declare-fun lt!331616 () SeekEntryResult!7527)

(assert (=> b!746188 (= res!503109 (= lt!331616 lt!331608))))

(declare-fun lt!331614 () (_ BitVec 64))

(declare-fun lt!331610 () array!41620)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41620 (_ BitVec 32)) SeekEntryResult!7527)

(assert (=> b!746188 (= lt!331608 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331614 lt!331610 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746188 (= lt!331616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331614 mask!3328) lt!331614 lt!331610 mask!3328))))

(assert (=> b!746188 (= lt!331614 (select (store (arr!19920 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746188 (= lt!331610 (array!41621 (store (arr!19920 a!3186) i!1173 k!2102) (size!20341 a!3186)))))

(declare-fun b!746189 () Bool)

(declare-fun res!503114 () Bool)

(assert (=> b!746189 (=> (not res!503114) (not e!416737))))

(assert (=> b!746189 (= res!503114 e!416734)))

(declare-fun c!81921 () Bool)

(assert (=> b!746189 (= c!81921 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746190 () Bool)

(assert (=> b!746190 (= e!416739 e!416736)))

(declare-fun res!503106 () Bool)

(assert (=> b!746190 (=> (not res!503106) (not e!416736))))

(declare-fun lt!331609 () SeekEntryResult!7527)

(assert (=> b!746190 (= res!503106 (or (= lt!331609 (MissingZero!7527 i!1173)) (= lt!331609 (MissingVacant!7527 i!1173))))))

(assert (=> b!746190 (= lt!331609 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746191 () Bool)

(declare-fun e!416731 () Bool)

(assert (=> b!746191 (= e!416732 e!416731)))

(declare-fun res!503112 () Bool)

(assert (=> b!746191 (=> res!503112 e!416731)))

(declare-fun lt!331611 () SeekEntryResult!7527)

(assert (=> b!746191 (= res!503112 (or (not (= lt!331611 lt!331613)) (= (select (store (arr!19920 a!3186) i!1173 k!2102) index!1321) lt!331614) (not (= (select (store (arr!19920 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746191 (= lt!331611 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19920 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!331615 () SeekEntryResult!7527)

(declare-fun b!746192 () Bool)

(assert (=> b!746192 (= e!416734 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19920 a!3186) j!159) a!3186 mask!3328) lt!331615))))

(declare-fun b!746193 () Bool)

(assert (=> b!746193 (= e!416736 e!416737)))

(declare-fun res!503100 () Bool)

(assert (=> b!746193 (=> (not res!503100) (not e!416737))))

(assert (=> b!746193 (= res!503100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19920 a!3186) j!159) mask!3328) (select (arr!19920 a!3186) j!159) a!3186 mask!3328) lt!331615))))

(assert (=> b!746193 (= lt!331615 (Intermediate!7527 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746194 () Bool)

(declare-fun res!503113 () Bool)

(assert (=> b!746194 (=> (not res!503113) (not e!416739))))

(assert (=> b!746194 (= res!503113 (validKeyInArray!0 (select (arr!19920 a!3186) j!159)))))

(declare-fun b!746195 () Bool)

(declare-fun res!503115 () Bool)

(assert (=> b!746195 (=> (not res!503115) (not e!416737))))

(assert (=> b!746195 (= res!503115 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19920 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746196 () Bool)

(declare-fun res!503107 () Bool)

(assert (=> b!746196 (=> (not res!503107) (not e!416739))))

(declare-fun arrayContainsKey!0 (array!41620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746196 (= res!503107 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746197 () Bool)

(assert (=> b!746197 (= e!416735 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19920 a!3186) j!159) a!3186 mask!3328) lt!331613))))

(declare-fun b!746198 () Bool)

(assert (=> b!746198 (= e!416731 true)))

(assert (=> b!746198 (= lt!331607 lt!331611)))

(assert (= (and start!65494 res!503101) b!746185))

(assert (= (and b!746185 res!503103) b!746194))

(assert (= (and b!746194 res!503113) b!746184))

(assert (= (and b!746184 res!503105) b!746196))

(assert (= (and b!746196 res!503107) b!746190))

(assert (= (and b!746190 res!503106) b!746186))

(assert (= (and b!746186 res!503102) b!746187))

(assert (= (and b!746187 res!503104) b!746183))

(assert (= (and b!746183 res!503110) b!746193))

(assert (= (and b!746193 res!503100) b!746195))

(assert (= (and b!746195 res!503115) b!746189))

(assert (= (and b!746189 c!81921) b!746192))

(assert (= (and b!746189 (not c!81921)) b!746182))

(assert (= (and b!746189 res!503114) b!746188))

(assert (= (and b!746188 res!503109) b!746181))

(assert (= (and b!746181 res!503108) b!746197))

(assert (= (and b!746181 (not res!503111)) b!746191))

(assert (= (and b!746191 (not res!503112)) b!746198))

(declare-fun m!696553 () Bool)

(assert (=> b!746195 m!696553))

(declare-fun m!696555 () Bool)

(assert (=> b!746193 m!696555))

(assert (=> b!746193 m!696555))

(declare-fun m!696557 () Bool)

(assert (=> b!746193 m!696557))

(assert (=> b!746193 m!696557))

(assert (=> b!746193 m!696555))

(declare-fun m!696559 () Bool)

(assert (=> b!746193 m!696559))

(assert (=> b!746182 m!696555))

(assert (=> b!746182 m!696555))

(declare-fun m!696561 () Bool)

(assert (=> b!746182 m!696561))

(declare-fun m!696563 () Bool)

(assert (=> b!746184 m!696563))

(assert (=> b!746181 m!696555))

(assert (=> b!746181 m!696555))

(declare-fun m!696565 () Bool)

(assert (=> b!746181 m!696565))

(declare-fun m!696567 () Bool)

(assert (=> b!746181 m!696567))

(declare-fun m!696569 () Bool)

(assert (=> b!746181 m!696569))

(assert (=> b!746192 m!696555))

(assert (=> b!746192 m!696555))

(declare-fun m!696571 () Bool)

(assert (=> b!746192 m!696571))

(declare-fun m!696573 () Bool)

(assert (=> start!65494 m!696573))

(declare-fun m!696575 () Bool)

(assert (=> start!65494 m!696575))

(declare-fun m!696577 () Bool)

(assert (=> b!746187 m!696577))

(declare-fun m!696579 () Bool)

(assert (=> b!746188 m!696579))

(declare-fun m!696581 () Bool)

(assert (=> b!746188 m!696581))

(assert (=> b!746188 m!696579))

(declare-fun m!696583 () Bool)

(assert (=> b!746188 m!696583))

(declare-fun m!696585 () Bool)

(assert (=> b!746188 m!696585))

(declare-fun m!696587 () Bool)

(assert (=> b!746188 m!696587))

(assert (=> b!746194 m!696555))

(assert (=> b!746194 m!696555))

(declare-fun m!696589 () Bool)

(assert (=> b!746194 m!696589))

(declare-fun m!696591 () Bool)

(assert (=> b!746190 m!696591))

(assert (=> b!746197 m!696555))

(assert (=> b!746197 m!696555))

(declare-fun m!696593 () Bool)

(assert (=> b!746197 m!696593))

(declare-fun m!696595 () Bool)

(assert (=> b!746196 m!696595))

(declare-fun m!696597 () Bool)

(assert (=> b!746186 m!696597))

(assert (=> b!746191 m!696587))

(declare-fun m!696599 () Bool)

(assert (=> b!746191 m!696599))

(assert (=> b!746191 m!696555))

(assert (=> b!746191 m!696555))

(assert (=> b!746191 m!696561))

(push 1)

