; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64674 () Bool)

(assert start!64674)

(declare-fun b!728340 () Bool)

(declare-fun res!488995 () Bool)

(declare-fun e!407736 () Bool)

(assert (=> b!728340 (=> (not res!488995) (not e!407736))))

(declare-datatypes ((array!41076 0))(
  ( (array!41077 (arr!19654 (Array (_ BitVec 32) (_ BitVec 64))) (size!20075 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41076)

(declare-datatypes ((List!13709 0))(
  ( (Nil!13706) (Cons!13705 (h!14765 (_ BitVec 64)) (t!20032 List!13709)) )
))
(declare-fun arrayNoDuplicates!0 (array!41076 (_ BitVec 32) List!13709) Bool)

(assert (=> b!728340 (= res!488995 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13706))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7261 0))(
  ( (MissingZero!7261 (index!31411 (_ BitVec 32))) (Found!7261 (index!31412 (_ BitVec 32))) (Intermediate!7261 (undefined!8073 Bool) (index!31413 (_ BitVec 32)) (x!62428 (_ BitVec 32))) (Undefined!7261) (MissingVacant!7261 (index!31414 (_ BitVec 32))) )
))
(declare-fun lt!322644 () SeekEntryResult!7261)

(declare-fun e!407738 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!728341 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41076 (_ BitVec 32)) SeekEntryResult!7261)

(assert (=> b!728341 (= e!407738 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19654 a!3186) j!159) a!3186 mask!3328) lt!322644))))

(declare-fun b!728342 () Bool)

(declare-fun e!407737 () Bool)

(declare-fun e!407732 () Bool)

(assert (=> b!728342 (= e!407737 (not e!407732))))

(declare-fun res!489000 () Bool)

(assert (=> b!728342 (=> res!489000 e!407732)))

(declare-fun lt!322642 () SeekEntryResult!7261)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!728342 (= res!489000 (or (not ((_ is Intermediate!7261) lt!322642)) (bvsge x!1131 (x!62428 lt!322642))))))

(declare-fun e!407739 () Bool)

(assert (=> b!728342 e!407739))

(declare-fun res!488993 () Bool)

(assert (=> b!728342 (=> (not res!488993) (not e!407739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41076 (_ BitVec 32)) Bool)

(assert (=> b!728342 (= res!488993 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24840 0))(
  ( (Unit!24841) )
))
(declare-fun lt!322641 () Unit!24840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41076 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24840)

(assert (=> b!728342 (= lt!322641 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728343 () Bool)

(declare-fun e!407734 () Bool)

(assert (=> b!728343 (= e!407734 e!407736)))

(declare-fun res!488991 () Bool)

(assert (=> b!728343 (=> (not res!488991) (not e!407736))))

(declare-fun lt!322640 () SeekEntryResult!7261)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728343 (= res!488991 (or (= lt!322640 (MissingZero!7261 i!1173)) (= lt!322640 (MissingVacant!7261 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41076 (_ BitVec 32)) SeekEntryResult!7261)

(assert (=> b!728343 (= lt!322640 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!728344 () Bool)

(assert (=> b!728344 (= e!407732 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!322643 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728344 (= lt!322643 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728345 () Bool)

(declare-fun res!489005 () Bool)

(assert (=> b!728345 (=> (not res!489005) (not e!407734))))

(assert (=> b!728345 (= res!489005 (and (= (size!20075 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20075 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20075 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728346 () Bool)

(declare-fun res!489001 () Bool)

(assert (=> b!728346 (=> (not res!489001) (not e!407736))))

(assert (=> b!728346 (= res!489001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!489006 () Bool)

(assert (=> start!64674 (=> (not res!489006) (not e!407734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64674 (= res!489006 (validMask!0 mask!3328))))

(assert (=> start!64674 e!407734))

(assert (=> start!64674 true))

(declare-fun array_inv!15428 (array!41076) Bool)

(assert (=> start!64674 (array_inv!15428 a!3186)))

(declare-fun lt!322645 () SeekEntryResult!7261)

(declare-fun e!407733 () Bool)

(declare-fun b!728347 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41076 (_ BitVec 32)) SeekEntryResult!7261)

(assert (=> b!728347 (= e!407733 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19654 a!3186) j!159) a!3186 mask!3328) lt!322645))))

(declare-fun b!728348 () Bool)

(declare-fun e!407731 () Bool)

(assert (=> b!728348 (= e!407736 e!407731)))

(declare-fun res!488996 () Bool)

(assert (=> b!728348 (=> (not res!488996) (not e!407731))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728348 (= res!488996 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19654 a!3186) j!159) mask!3328) (select (arr!19654 a!3186) j!159) a!3186 mask!3328) lt!322645))))

(assert (=> b!728348 (= lt!322645 (Intermediate!7261 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728349 () Bool)

(declare-fun res!488992 () Bool)

(assert (=> b!728349 (=> (not res!488992) (not e!407731))))

(assert (=> b!728349 (= res!488992 e!407733)))

(declare-fun c!80049 () Bool)

(assert (=> b!728349 (= c!80049 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728350 () Bool)

(assert (=> b!728350 (= e!407731 e!407737)))

(declare-fun res!489004 () Bool)

(assert (=> b!728350 (=> (not res!489004) (not e!407737))))

(declare-fun lt!322638 () SeekEntryResult!7261)

(assert (=> b!728350 (= res!489004 (= lt!322638 lt!322642))))

(declare-fun lt!322639 () (_ BitVec 64))

(declare-fun lt!322646 () array!41076)

(assert (=> b!728350 (= lt!322642 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322639 lt!322646 mask!3328))))

(assert (=> b!728350 (= lt!322638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322639 mask!3328) lt!322639 lt!322646 mask!3328))))

(assert (=> b!728350 (= lt!322639 (select (store (arr!19654 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728350 (= lt!322646 (array!41077 (store (arr!19654 a!3186) i!1173 k0!2102) (size!20075 a!3186)))))

(declare-fun b!728351 () Bool)

(declare-fun res!488998 () Bool)

(assert (=> b!728351 (=> (not res!488998) (not e!407734))))

(declare-fun arrayContainsKey!0 (array!41076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728351 (= res!488998 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728352 () Bool)

(declare-fun res!489003 () Bool)

(assert (=> b!728352 (=> (not res!489003) (not e!407731))))

(assert (=> b!728352 (= res!489003 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19654 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728353 () Bool)

(assert (=> b!728353 (= e!407739 e!407738)))

(declare-fun res!488999 () Bool)

(assert (=> b!728353 (=> (not res!488999) (not e!407738))))

(assert (=> b!728353 (= res!488999 (= (seekEntryOrOpen!0 (select (arr!19654 a!3186) j!159) a!3186 mask!3328) lt!322644))))

(assert (=> b!728353 (= lt!322644 (Found!7261 j!159))))

(declare-fun b!728354 () Bool)

(assert (=> b!728354 (= e!407733 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19654 a!3186) j!159) a!3186 mask!3328) (Found!7261 j!159)))))

(declare-fun b!728355 () Bool)

(declare-fun res!488997 () Bool)

(assert (=> b!728355 (=> (not res!488997) (not e!407734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728355 (= res!488997 (validKeyInArray!0 k0!2102))))

(declare-fun b!728356 () Bool)

(declare-fun res!488994 () Bool)

(assert (=> b!728356 (=> (not res!488994) (not e!407734))))

(assert (=> b!728356 (= res!488994 (validKeyInArray!0 (select (arr!19654 a!3186) j!159)))))

(declare-fun b!728357 () Bool)

(declare-fun res!489002 () Bool)

(assert (=> b!728357 (=> (not res!489002) (not e!407736))))

(assert (=> b!728357 (= res!489002 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20075 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20075 a!3186))))))

(assert (= (and start!64674 res!489006) b!728345))

(assert (= (and b!728345 res!489005) b!728356))

(assert (= (and b!728356 res!488994) b!728355))

(assert (= (and b!728355 res!488997) b!728351))

(assert (= (and b!728351 res!488998) b!728343))

(assert (= (and b!728343 res!488991) b!728346))

(assert (= (and b!728346 res!489001) b!728340))

(assert (= (and b!728340 res!488995) b!728357))

(assert (= (and b!728357 res!489002) b!728348))

(assert (= (and b!728348 res!488996) b!728352))

(assert (= (and b!728352 res!489003) b!728349))

(assert (= (and b!728349 c!80049) b!728347))

(assert (= (and b!728349 (not c!80049)) b!728354))

(assert (= (and b!728349 res!488992) b!728350))

(assert (= (and b!728350 res!489004) b!728342))

(assert (= (and b!728342 res!488993) b!728353))

(assert (= (and b!728353 res!488999) b!728341))

(assert (= (and b!728342 (not res!489000)) b!728344))

(declare-fun m!682189 () Bool)

(assert (=> b!728350 m!682189))

(declare-fun m!682191 () Bool)

(assert (=> b!728350 m!682191))

(declare-fun m!682193 () Bool)

(assert (=> b!728350 m!682193))

(declare-fun m!682195 () Bool)

(assert (=> b!728350 m!682195))

(assert (=> b!728350 m!682189))

(declare-fun m!682197 () Bool)

(assert (=> b!728350 m!682197))

(declare-fun m!682199 () Bool)

(assert (=> b!728344 m!682199))

(declare-fun m!682201 () Bool)

(assert (=> b!728355 m!682201))

(declare-fun m!682203 () Bool)

(assert (=> b!728346 m!682203))

(declare-fun m!682205 () Bool)

(assert (=> b!728341 m!682205))

(assert (=> b!728341 m!682205))

(declare-fun m!682207 () Bool)

(assert (=> b!728341 m!682207))

(assert (=> b!728356 m!682205))

(assert (=> b!728356 m!682205))

(declare-fun m!682209 () Bool)

(assert (=> b!728356 m!682209))

(declare-fun m!682211 () Bool)

(assert (=> b!728343 m!682211))

(declare-fun m!682213 () Bool)

(assert (=> start!64674 m!682213))

(declare-fun m!682215 () Bool)

(assert (=> start!64674 m!682215))

(assert (=> b!728347 m!682205))

(assert (=> b!728347 m!682205))

(declare-fun m!682217 () Bool)

(assert (=> b!728347 m!682217))

(assert (=> b!728353 m!682205))

(assert (=> b!728353 m!682205))

(declare-fun m!682219 () Bool)

(assert (=> b!728353 m!682219))

(declare-fun m!682221 () Bool)

(assert (=> b!728351 m!682221))

(declare-fun m!682223 () Bool)

(assert (=> b!728342 m!682223))

(declare-fun m!682225 () Bool)

(assert (=> b!728342 m!682225))

(assert (=> b!728348 m!682205))

(assert (=> b!728348 m!682205))

(declare-fun m!682227 () Bool)

(assert (=> b!728348 m!682227))

(assert (=> b!728348 m!682227))

(assert (=> b!728348 m!682205))

(declare-fun m!682229 () Bool)

(assert (=> b!728348 m!682229))

(assert (=> b!728354 m!682205))

(assert (=> b!728354 m!682205))

(declare-fun m!682231 () Bool)

(assert (=> b!728354 m!682231))

(declare-fun m!682233 () Bool)

(assert (=> b!728352 m!682233))

(declare-fun m!682235 () Bool)

(assert (=> b!728340 m!682235))

(check-sat (not b!728343) (not b!728353) (not b!728348) (not start!64674) (not b!728351) (not b!728356) (not b!728344) (not b!728346) (not b!728350) (not b!728347) (not b!728342) (not b!728340) (not b!728341) (not b!728354) (not b!728355))
(check-sat)
