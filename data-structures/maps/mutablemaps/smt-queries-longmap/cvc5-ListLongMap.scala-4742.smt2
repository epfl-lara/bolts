; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65530 () Bool)

(assert start!65530)

(declare-fun b!747213 () Bool)

(declare-fun res!503998 () Bool)

(declare-fun e!417218 () Bool)

(assert (=> b!747213 (=> (not res!503998) (not e!417218))))

(declare-fun e!417223 () Bool)

(assert (=> b!747213 (= res!503998 e!417223)))

(declare-fun c!81995 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747213 (= c!81995 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747214 () Bool)

(declare-fun res!503984 () Bool)

(declare-fun e!417224 () Bool)

(assert (=> b!747214 (=> (not res!503984) (not e!417224))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747214 (= res!503984 (validKeyInArray!0 k!2102))))

(declare-fun b!747215 () Bool)

(declare-fun e!417220 () Bool)

(assert (=> b!747215 (= e!417220 true)))

(declare-datatypes ((array!41656 0))(
  ( (array!41657 (arr!19938 (Array (_ BitVec 32) (_ BitVec 64))) (size!20359 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41656)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!747215 (= (select (store (arr!19938 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25582 0))(
  ( (Unit!25583) )
))
(declare-fun lt!332148 () Unit!25582)

(declare-fun e!417219 () Unit!25582)

(assert (=> b!747215 (= lt!332148 e!417219)))

(declare-fun c!81996 () Bool)

(assert (=> b!747215 (= c!81996 (= (select (store (arr!19938 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!747216 () Bool)

(declare-datatypes ((SeekEntryResult!7545 0))(
  ( (MissingZero!7545 (index!32547 (_ BitVec 32))) (Found!7545 (index!32548 (_ BitVec 32))) (Intermediate!7545 (undefined!8357 Bool) (index!32549 (_ BitVec 32)) (x!63520 (_ BitVec 32))) (Undefined!7545) (MissingVacant!7545 (index!32550 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41656 (_ BitVec 32)) SeekEntryResult!7545)

(assert (=> b!747216 (= e!417223 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19938 a!3186) j!159) a!3186 mask!3328) (Found!7545 j!159)))))

(declare-fun b!747217 () Bool)

(declare-fun e!417222 () Bool)

(assert (=> b!747217 (= e!417222 e!417218)))

(declare-fun res!503990 () Bool)

(assert (=> b!747217 (=> (not res!503990) (not e!417218))))

(declare-fun lt!332154 () SeekEntryResult!7545)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41656 (_ BitVec 32)) SeekEntryResult!7545)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747217 (= res!503990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19938 a!3186) j!159) mask!3328) (select (arr!19938 a!3186) j!159) a!3186 mask!3328) lt!332154))))

(assert (=> b!747217 (= lt!332154 (Intermediate!7545 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747218 () Bool)

(declare-fun res!503995 () Bool)

(assert (=> b!747218 (=> (not res!503995) (not e!417224))))

(assert (=> b!747218 (= res!503995 (and (= (size!20359 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20359 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20359 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747219 () Bool)

(declare-fun res!503994 () Bool)

(assert (=> b!747219 (=> (not res!503994) (not e!417218))))

(assert (=> b!747219 (= res!503994 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19938 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747220 () Bool)

(declare-fun res!503997 () Bool)

(assert (=> b!747220 (=> res!503997 e!417220)))

(declare-fun lt!332153 () (_ BitVec 64))

(assert (=> b!747220 (= res!503997 (= (select (store (arr!19938 a!3186) i!1173 k!2102) index!1321) lt!332153))))

(declare-fun b!747221 () Bool)

(declare-fun Unit!25584 () Unit!25582)

(assert (=> b!747221 (= e!417219 Unit!25584)))

(declare-fun b!747223 () Bool)

(declare-fun res!503988 () Bool)

(assert (=> b!747223 (=> (not res!503988) (not e!417222))))

(declare-datatypes ((List!13993 0))(
  ( (Nil!13990) (Cons!13989 (h!15061 (_ BitVec 64)) (t!20316 List!13993)) )
))
(declare-fun arrayNoDuplicates!0 (array!41656 (_ BitVec 32) List!13993) Bool)

(assert (=> b!747223 (= res!503988 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13990))))

(declare-fun b!747224 () Bool)

(declare-fun e!417225 () Bool)

(assert (=> b!747224 (= e!417218 e!417225)))

(declare-fun res!503996 () Bool)

(assert (=> b!747224 (=> (not res!503996) (not e!417225))))

(declare-fun lt!332156 () SeekEntryResult!7545)

(declare-fun lt!332152 () SeekEntryResult!7545)

(assert (=> b!747224 (= res!503996 (= lt!332156 lt!332152))))

(declare-fun lt!332155 () array!41656)

(assert (=> b!747224 (= lt!332152 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332153 lt!332155 mask!3328))))

(assert (=> b!747224 (= lt!332156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332153 mask!3328) lt!332153 lt!332155 mask!3328))))

(assert (=> b!747224 (= lt!332153 (select (store (arr!19938 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747224 (= lt!332155 (array!41657 (store (arr!19938 a!3186) i!1173 k!2102) (size!20359 a!3186)))))

(declare-fun b!747225 () Bool)

(assert (=> b!747225 (= e!417223 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19938 a!3186) j!159) a!3186 mask!3328) lt!332154))))

(declare-fun b!747226 () Bool)

(declare-fun res!504000 () Bool)

(assert (=> b!747226 (=> res!504000 e!417220)))

(declare-fun lt!332150 () SeekEntryResult!7545)

(assert (=> b!747226 (= res!504000 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19938 a!3186) j!159) a!3186 mask!3328) lt!332150)))))

(declare-fun b!747222 () Bool)

(declare-fun e!417221 () Bool)

(assert (=> b!747222 (= e!417221 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19938 a!3186) j!159) a!3186 mask!3328) lt!332150))))

(declare-fun res!503986 () Bool)

(assert (=> start!65530 (=> (not res!503986) (not e!417224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65530 (= res!503986 (validMask!0 mask!3328))))

(assert (=> start!65530 e!417224))

(assert (=> start!65530 true))

(declare-fun array_inv!15712 (array!41656) Bool)

(assert (=> start!65530 (array_inv!15712 a!3186)))

(declare-fun b!747227 () Bool)

(assert (=> b!747227 (= e!417224 e!417222)))

(declare-fun res!503989 () Bool)

(assert (=> b!747227 (=> (not res!503989) (not e!417222))))

(declare-fun lt!332147 () SeekEntryResult!7545)

(assert (=> b!747227 (= res!503989 (or (= lt!332147 (MissingZero!7545 i!1173)) (= lt!332147 (MissingVacant!7545 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41656 (_ BitVec 32)) SeekEntryResult!7545)

(assert (=> b!747227 (= lt!332147 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747228 () Bool)

(declare-fun res!503993 () Bool)

(assert (=> b!747228 (=> (not res!503993) (not e!417224))))

(declare-fun arrayContainsKey!0 (array!41656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747228 (= res!503993 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747229 () Bool)

(declare-fun Unit!25585 () Unit!25582)

(assert (=> b!747229 (= e!417219 Unit!25585)))

(assert (=> b!747229 false))

(declare-fun b!747230 () Bool)

(declare-fun res!503985 () Bool)

(assert (=> b!747230 (=> (not res!503985) (not e!417222))))

(assert (=> b!747230 (= res!503985 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20359 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20359 a!3186))))))

(declare-fun b!747231 () Bool)

(assert (=> b!747231 (= e!417225 (not e!417220))))

(declare-fun res!503992 () Bool)

(assert (=> b!747231 (=> res!503992 e!417220)))

(assert (=> b!747231 (= res!503992 (or (not (is-Intermediate!7545 lt!332152)) (bvslt x!1131 (x!63520 lt!332152)) (not (= x!1131 (x!63520 lt!332152))) (not (= index!1321 (index!32549 lt!332152)))))))

(assert (=> b!747231 e!417221))

(declare-fun res!503991 () Bool)

(assert (=> b!747231 (=> (not res!503991) (not e!417221))))

(declare-fun lt!332149 () SeekEntryResult!7545)

(assert (=> b!747231 (= res!503991 (= lt!332149 lt!332150))))

(assert (=> b!747231 (= lt!332150 (Found!7545 j!159))))

(assert (=> b!747231 (= lt!332149 (seekEntryOrOpen!0 (select (arr!19938 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41656 (_ BitVec 32)) Bool)

(assert (=> b!747231 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332151 () Unit!25582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25582)

(assert (=> b!747231 (= lt!332151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747232 () Bool)

(declare-fun res!503987 () Bool)

(assert (=> b!747232 (=> (not res!503987) (not e!417222))))

(assert (=> b!747232 (= res!503987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747233 () Bool)

(declare-fun res!503999 () Bool)

(assert (=> b!747233 (=> (not res!503999) (not e!417224))))

(assert (=> b!747233 (= res!503999 (validKeyInArray!0 (select (arr!19938 a!3186) j!159)))))

(assert (= (and start!65530 res!503986) b!747218))

(assert (= (and b!747218 res!503995) b!747233))

(assert (= (and b!747233 res!503999) b!747214))

(assert (= (and b!747214 res!503984) b!747228))

(assert (= (and b!747228 res!503993) b!747227))

(assert (= (and b!747227 res!503989) b!747232))

(assert (= (and b!747232 res!503987) b!747223))

(assert (= (and b!747223 res!503988) b!747230))

(assert (= (and b!747230 res!503985) b!747217))

(assert (= (and b!747217 res!503990) b!747219))

(assert (= (and b!747219 res!503994) b!747213))

(assert (= (and b!747213 c!81995) b!747225))

(assert (= (and b!747213 (not c!81995)) b!747216))

(assert (= (and b!747213 res!503998) b!747224))

(assert (= (and b!747224 res!503996) b!747231))

(assert (= (and b!747231 res!503991) b!747222))

(assert (= (and b!747231 (not res!503992)) b!747226))

(assert (= (and b!747226 (not res!504000)) b!747220))

(assert (= (and b!747220 (not res!503997)) b!747215))

(assert (= (and b!747215 c!81996) b!747229))

(assert (= (and b!747215 (not c!81996)) b!747221))

(declare-fun m!697417 () Bool)

(assert (=> b!747214 m!697417))

(declare-fun m!697419 () Bool)

(assert (=> b!747223 m!697419))

(declare-fun m!697421 () Bool)

(assert (=> b!747224 m!697421))

(declare-fun m!697423 () Bool)

(assert (=> b!747224 m!697423))

(declare-fun m!697425 () Bool)

(assert (=> b!747224 m!697425))

(declare-fun m!697427 () Bool)

(assert (=> b!747224 m!697427))

(assert (=> b!747224 m!697427))

(declare-fun m!697429 () Bool)

(assert (=> b!747224 m!697429))

(assert (=> b!747215 m!697421))

(declare-fun m!697431 () Bool)

(assert (=> b!747215 m!697431))

(declare-fun m!697433 () Bool)

(assert (=> b!747216 m!697433))

(assert (=> b!747216 m!697433))

(declare-fun m!697435 () Bool)

(assert (=> b!747216 m!697435))

(assert (=> b!747222 m!697433))

(assert (=> b!747222 m!697433))

(declare-fun m!697437 () Bool)

(assert (=> b!747222 m!697437))

(declare-fun m!697439 () Bool)

(assert (=> b!747232 m!697439))

(assert (=> b!747220 m!697421))

(assert (=> b!747220 m!697431))

(declare-fun m!697441 () Bool)

(assert (=> b!747228 m!697441))

(assert (=> b!747217 m!697433))

(assert (=> b!747217 m!697433))

(declare-fun m!697443 () Bool)

(assert (=> b!747217 m!697443))

(assert (=> b!747217 m!697443))

(assert (=> b!747217 m!697433))

(declare-fun m!697445 () Bool)

(assert (=> b!747217 m!697445))

(assert (=> b!747226 m!697433))

(assert (=> b!747226 m!697433))

(assert (=> b!747226 m!697435))

(assert (=> b!747231 m!697433))

(assert (=> b!747231 m!697433))

(declare-fun m!697447 () Bool)

(assert (=> b!747231 m!697447))

(declare-fun m!697449 () Bool)

(assert (=> b!747231 m!697449))

(declare-fun m!697451 () Bool)

(assert (=> b!747231 m!697451))

(declare-fun m!697453 () Bool)

(assert (=> b!747219 m!697453))

(declare-fun m!697455 () Bool)

(assert (=> b!747227 m!697455))

(declare-fun m!697457 () Bool)

(assert (=> start!65530 m!697457))

(declare-fun m!697459 () Bool)

(assert (=> start!65530 m!697459))

(assert (=> b!747225 m!697433))

(assert (=> b!747225 m!697433))

(declare-fun m!697461 () Bool)

(assert (=> b!747225 m!697461))

(assert (=> b!747233 m!697433))

(assert (=> b!747233 m!697433))

(declare-fun m!697463 () Bool)

(assert (=> b!747233 m!697463))

(push 1)

