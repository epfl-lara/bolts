; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65470 () Bool)

(assert start!65470)

(declare-fun b!745533 () Bool)

(declare-fun res!502533 () Bool)

(declare-fun e!416415 () Bool)

(assert (=> b!745533 (=> (not res!502533) (not e!416415))))

(declare-datatypes ((array!41596 0))(
  ( (array!41597 (arr!19908 (Array (_ BitVec 32) (_ BitVec 64))) (size!20329 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41596)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41596 (_ BitVec 32)) Bool)

(assert (=> b!745533 (= res!502533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745535 () Bool)

(declare-fun e!416408 () Bool)

(declare-fun e!416413 () Bool)

(assert (=> b!745535 (= e!416408 (not e!416413))))

(declare-fun res!502532 () Bool)

(assert (=> b!745535 (=> res!502532 e!416413)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7515 0))(
  ( (MissingZero!7515 (index!32427 (_ BitVec 32))) (Found!7515 (index!32428 (_ BitVec 32))) (Intermediate!7515 (undefined!8327 Bool) (index!32429 (_ BitVec 32)) (x!63410 (_ BitVec 32))) (Undefined!7515) (MissingVacant!7515 (index!32430 (_ BitVec 32))) )
))
(declare-fun lt!331250 () SeekEntryResult!7515)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!745535 (= res!502532 (or (not (is-Intermediate!7515 lt!331250)) (bvslt x!1131 (x!63410 lt!331250)) (not (= x!1131 (x!63410 lt!331250))) (not (= index!1321 (index!32429 lt!331250)))))))

(declare-fun e!416409 () Bool)

(assert (=> b!745535 e!416409))

(declare-fun res!502536 () Bool)

(assert (=> b!745535 (=> (not res!502536) (not e!416409))))

(declare-fun lt!331254 () SeekEntryResult!7515)

(declare-fun lt!331252 () SeekEntryResult!7515)

(assert (=> b!745535 (= res!502536 (= lt!331254 lt!331252))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!745535 (= lt!331252 (Found!7515 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41596 (_ BitVec 32)) SeekEntryResult!7515)

(assert (=> b!745535 (= lt!331254 (seekEntryOrOpen!0 (select (arr!19908 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745535 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25510 0))(
  ( (Unit!25511) )
))
(declare-fun lt!331247 () Unit!25510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25510)

(assert (=> b!745535 (= lt!331247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745536 () Bool)

(declare-fun res!502531 () Bool)

(assert (=> b!745536 (=> (not res!502531) (not e!416415))))

(declare-datatypes ((List!13963 0))(
  ( (Nil!13960) (Cons!13959 (h!15031 (_ BitVec 64)) (t!20286 List!13963)) )
))
(declare-fun arrayNoDuplicates!0 (array!41596 (_ BitVec 32) List!13963) Bool)

(assert (=> b!745536 (= res!502531 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13960))))

(declare-fun b!745537 () Bool)

(declare-fun res!502530 () Bool)

(declare-fun e!416411 () Bool)

(assert (=> b!745537 (=> (not res!502530) (not e!416411))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745537 (= res!502530 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!745538 () Bool)

(declare-fun e!416410 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41596 (_ BitVec 32)) SeekEntryResult!7515)

(assert (=> b!745538 (= e!416410 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19908 a!3186) j!159) a!3186 mask!3328) (Found!7515 j!159)))))

(declare-fun b!745539 () Bool)

(declare-fun e!416412 () Bool)

(assert (=> b!745539 (= e!416415 e!416412)))

(declare-fun res!502524 () Bool)

(assert (=> b!745539 (=> (not res!502524) (not e!416412))))

(declare-fun lt!331249 () SeekEntryResult!7515)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41596 (_ BitVec 32)) SeekEntryResult!7515)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745539 (= res!502524 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19908 a!3186) j!159) mask!3328) (select (arr!19908 a!3186) j!159) a!3186 mask!3328) lt!331249))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745539 (= lt!331249 (Intermediate!7515 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745540 () Bool)

(declare-fun res!502528 () Bool)

(assert (=> b!745540 (=> (not res!502528) (not e!416412))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745540 (= res!502528 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19908 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745541 () Bool)

(assert (=> b!745541 (= e!416411 e!416415)))

(declare-fun res!502534 () Bool)

(assert (=> b!745541 (=> (not res!502534) (not e!416415))))

(declare-fun lt!331251 () SeekEntryResult!7515)

(assert (=> b!745541 (= res!502534 (or (= lt!331251 (MissingZero!7515 i!1173)) (= lt!331251 (MissingVacant!7515 i!1173))))))

(assert (=> b!745541 (= lt!331251 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745542 () Bool)

(declare-fun res!502539 () Bool)

(assert (=> b!745542 (=> (not res!502539) (not e!416411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745542 (= res!502539 (validKeyInArray!0 k!2102))))

(declare-fun res!502529 () Bool)

(assert (=> start!65470 (=> (not res!502529) (not e!416411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65470 (= res!502529 (validMask!0 mask!3328))))

(assert (=> start!65470 e!416411))

(assert (=> start!65470 true))

(declare-fun array_inv!15682 (array!41596) Bool)

(assert (=> start!65470 (array_inv!15682 a!3186)))

(declare-fun b!745534 () Bool)

(assert (=> b!745534 (= e!416412 e!416408)))

(declare-fun res!502538 () Bool)

(assert (=> b!745534 (=> (not res!502538) (not e!416408))))

(declare-fun lt!331253 () SeekEntryResult!7515)

(assert (=> b!745534 (= res!502538 (= lt!331253 lt!331250))))

(declare-fun lt!331256 () (_ BitVec 64))

(declare-fun lt!331255 () array!41596)

(assert (=> b!745534 (= lt!331250 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331256 lt!331255 mask!3328))))

(assert (=> b!745534 (= lt!331253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331256 mask!3328) lt!331256 lt!331255 mask!3328))))

(assert (=> b!745534 (= lt!331256 (select (store (arr!19908 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745534 (= lt!331255 (array!41597 (store (arr!19908 a!3186) i!1173 k!2102) (size!20329 a!3186)))))

(declare-fun b!745543 () Bool)

(declare-fun res!502535 () Bool)

(assert (=> b!745543 (=> (not res!502535) (not e!416412))))

(assert (=> b!745543 (= res!502535 e!416410)))

(declare-fun c!81885 () Bool)

(assert (=> b!745543 (= c!81885 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745544 () Bool)

(declare-fun e!416414 () Bool)

(assert (=> b!745544 (= e!416413 e!416414)))

(declare-fun res!502527 () Bool)

(assert (=> b!745544 (=> res!502527 e!416414)))

(declare-fun lt!331248 () SeekEntryResult!7515)

(assert (=> b!745544 (= res!502527 (or (not (= lt!331248 lt!331252)) (= (select (store (arr!19908 a!3186) i!1173 k!2102) index!1321) lt!331256) (not (= (select (store (arr!19908 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745544 (= lt!331248 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19908 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745545 () Bool)

(declare-fun res!502526 () Bool)

(assert (=> b!745545 (=> (not res!502526) (not e!416411))))

(assert (=> b!745545 (= res!502526 (validKeyInArray!0 (select (arr!19908 a!3186) j!159)))))

(declare-fun b!745546 () Bool)

(assert (=> b!745546 (= e!416414 true)))

(assert (=> b!745546 (= lt!331254 lt!331248)))

(declare-fun b!745547 () Bool)

(declare-fun res!502525 () Bool)

(assert (=> b!745547 (=> (not res!502525) (not e!416411))))

(assert (=> b!745547 (= res!502525 (and (= (size!20329 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20329 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20329 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745548 () Bool)

(assert (=> b!745548 (= e!416410 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19908 a!3186) j!159) a!3186 mask!3328) lt!331249))))

(declare-fun b!745549 () Bool)

(declare-fun res!502537 () Bool)

(assert (=> b!745549 (=> (not res!502537) (not e!416415))))

(assert (=> b!745549 (= res!502537 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20329 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20329 a!3186))))))

(declare-fun b!745550 () Bool)

(assert (=> b!745550 (= e!416409 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19908 a!3186) j!159) a!3186 mask!3328) lt!331252))))

(assert (= (and start!65470 res!502529) b!745547))

(assert (= (and b!745547 res!502525) b!745545))

(assert (= (and b!745545 res!502526) b!745542))

(assert (= (and b!745542 res!502539) b!745537))

(assert (= (and b!745537 res!502530) b!745541))

(assert (= (and b!745541 res!502534) b!745533))

(assert (= (and b!745533 res!502533) b!745536))

(assert (= (and b!745536 res!502531) b!745549))

(assert (= (and b!745549 res!502537) b!745539))

(assert (= (and b!745539 res!502524) b!745540))

(assert (= (and b!745540 res!502528) b!745543))

(assert (= (and b!745543 c!81885) b!745548))

(assert (= (and b!745543 (not c!81885)) b!745538))

(assert (= (and b!745543 res!502535) b!745534))

(assert (= (and b!745534 res!502538) b!745535))

(assert (= (and b!745535 res!502536) b!745550))

(assert (= (and b!745535 (not res!502532)) b!745544))

(assert (= (and b!745544 (not res!502527)) b!745546))

(declare-fun m!695977 () Bool)

(assert (=> b!745535 m!695977))

(assert (=> b!745535 m!695977))

(declare-fun m!695979 () Bool)

(assert (=> b!745535 m!695979))

(declare-fun m!695981 () Bool)

(assert (=> b!745535 m!695981))

(declare-fun m!695983 () Bool)

(assert (=> b!745535 m!695983))

(assert (=> b!745548 m!695977))

(assert (=> b!745548 m!695977))

(declare-fun m!695985 () Bool)

(assert (=> b!745548 m!695985))

(declare-fun m!695987 () Bool)

(assert (=> b!745533 m!695987))

(declare-fun m!695989 () Bool)

(assert (=> b!745537 m!695989))

(declare-fun m!695991 () Bool)

(assert (=> b!745544 m!695991))

(declare-fun m!695993 () Bool)

(assert (=> b!745544 m!695993))

(assert (=> b!745544 m!695977))

(assert (=> b!745544 m!695977))

(declare-fun m!695995 () Bool)

(assert (=> b!745544 m!695995))

(declare-fun m!695997 () Bool)

(assert (=> b!745541 m!695997))

(declare-fun m!695999 () Bool)

(assert (=> b!745534 m!695999))

(declare-fun m!696001 () Bool)

(assert (=> b!745534 m!696001))

(assert (=> b!745534 m!695999))

(declare-fun m!696003 () Bool)

(assert (=> b!745534 m!696003))

(assert (=> b!745534 m!695991))

(declare-fun m!696005 () Bool)

(assert (=> b!745534 m!696005))

(assert (=> b!745539 m!695977))

(assert (=> b!745539 m!695977))

(declare-fun m!696007 () Bool)

(assert (=> b!745539 m!696007))

(assert (=> b!745539 m!696007))

(assert (=> b!745539 m!695977))

(declare-fun m!696009 () Bool)

(assert (=> b!745539 m!696009))

(assert (=> b!745550 m!695977))

(assert (=> b!745550 m!695977))

(declare-fun m!696011 () Bool)

(assert (=> b!745550 m!696011))

(declare-fun m!696013 () Bool)

(assert (=> start!65470 m!696013))

(declare-fun m!696015 () Bool)

(assert (=> start!65470 m!696015))

(assert (=> b!745538 m!695977))

(assert (=> b!745538 m!695977))

(assert (=> b!745538 m!695995))

(declare-fun m!696017 () Bool)

(assert (=> b!745542 m!696017))

(declare-fun m!696019 () Bool)

(assert (=> b!745540 m!696019))

(declare-fun m!696021 () Bool)

(assert (=> b!745536 m!696021))

(assert (=> b!745545 m!695977))

(assert (=> b!745545 m!695977))

(declare-fun m!696023 () Bool)

(assert (=> b!745545 m!696023))

(push 1)

