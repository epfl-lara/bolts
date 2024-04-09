; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67148 () Bool)

(assert start!67148)

(declare-fun b!775401 () Bool)

(declare-fun res!524482 () Bool)

(declare-fun e!431574 () Bool)

(assert (=> b!775401 (=> (not res!524482) (not e!431574))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42458 0))(
  ( (array!42459 (arr!20321 (Array (_ BitVec 32) (_ BitVec 64))) (size!20742 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42458)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775401 (= res!524482 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20742 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20742 a!3186))))))

(declare-fun b!775402 () Bool)

(declare-fun res!524479 () Bool)

(declare-fun e!431576 () Bool)

(assert (=> b!775402 (=> (not res!524479) (not e!431576))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775402 (= res!524479 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!431575 () Bool)

(declare-fun b!775403 () Bool)

(declare-datatypes ((SeekEntryResult!7928 0))(
  ( (MissingZero!7928 (index!34079 (_ BitVec 32))) (Found!7928 (index!34080 (_ BitVec 32))) (Intermediate!7928 (undefined!8740 Bool) (index!34081 (_ BitVec 32)) (x!65048 (_ BitVec 32))) (Undefined!7928) (MissingVacant!7928 (index!34082 (_ BitVec 32))) )
))
(declare-fun lt!345458 () SeekEntryResult!7928)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42458 (_ BitVec 32)) SeekEntryResult!7928)

(assert (=> b!775403 (= e!431575 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345458))))

(declare-fun b!775404 () Bool)

(declare-fun res!524480 () Bool)

(declare-fun e!431567 () Bool)

(assert (=> b!775404 (=> (not res!524480) (not e!431567))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775404 (= res!524480 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20321 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775405 () Bool)

(assert (=> b!775405 (= e!431574 e!431567)))

(declare-fun res!524488 () Bool)

(assert (=> b!775405 (=> (not res!524488) (not e!431567))))

(declare-fun lt!345462 () SeekEntryResult!7928)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42458 (_ BitVec 32)) SeekEntryResult!7928)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775405 (= res!524488 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20321 a!3186) j!159) mask!3328) (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345462))))

(assert (=> b!775405 (= lt!345462 (Intermediate!7928 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775406 () Bool)

(declare-fun res!524487 () Bool)

(assert (=> b!775406 (=> (not res!524487) (not e!431567))))

(declare-fun e!431570 () Bool)

(assert (=> b!775406 (= res!524487 e!431570)))

(declare-fun c!85864 () Bool)

(assert (=> b!775406 (= c!85864 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775407 () Bool)

(declare-fun res!524484 () Bool)

(assert (=> b!775407 (=> (not res!524484) (not e!431576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775407 (= res!524484 (validKeyInArray!0 (select (arr!20321 a!3186) j!159)))))

(declare-fun b!775408 () Bool)

(declare-fun e!431577 () Bool)

(assert (=> b!775408 (= e!431577 true)))

(declare-fun lt!345466 () array!42458)

(declare-fun lt!345461 () SeekEntryResult!7928)

(declare-fun lt!345457 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42458 (_ BitVec 32)) SeekEntryResult!7928)

(assert (=> b!775408 (= (seekEntryOrOpen!0 lt!345457 lt!345466 mask!3328) lt!345461)))

(declare-datatypes ((Unit!26748 0))(
  ( (Unit!26749) )
))
(declare-fun lt!345453 () Unit!26748)

(declare-fun lt!345456 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26748)

(assert (=> b!775408 (= lt!345453 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345456 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775409 () Bool)

(declare-fun res!524481 () Bool)

(assert (=> b!775409 (=> (not res!524481) (not e!431576))))

(assert (=> b!775409 (= res!524481 (validKeyInArray!0 k!2102))))

(declare-fun b!775410 () Bool)

(declare-fun res!524486 () Bool)

(assert (=> b!775410 (=> res!524486 e!431577)))

(declare-fun e!431572 () Bool)

(assert (=> b!775410 (= res!524486 e!431572)))

(declare-fun c!85865 () Bool)

(declare-fun lt!345460 () Bool)

(assert (=> b!775410 (= c!85865 lt!345460)))

(declare-fun b!775411 () Bool)

(declare-fun res!524475 () Bool)

(assert (=> b!775411 (=> (not res!524475) (not e!431574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42458 (_ BitVec 32)) Bool)

(assert (=> b!775411 (= res!524475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775412 () Bool)

(declare-fun e!431573 () Bool)

(assert (=> b!775412 (= e!431573 e!431575)))

(declare-fun res!524477 () Bool)

(assert (=> b!775412 (=> (not res!524477) (not e!431575))))

(assert (=> b!775412 (= res!524477 (= (seekEntryOrOpen!0 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345458))))

(assert (=> b!775412 (= lt!345458 (Found!7928 j!159))))

(declare-fun b!775413 () Bool)

(declare-fun e!431571 () Unit!26748)

(declare-fun Unit!26750 () Unit!26748)

(assert (=> b!775413 (= e!431571 Unit!26750)))

(declare-fun lt!345465 () SeekEntryResult!7928)

(assert (=> b!775413 (= lt!345465 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20321 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!775413 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345456 resIntermediateIndex!5 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345461)))

(declare-fun b!775414 () Bool)

(declare-fun res!524485 () Bool)

(assert (=> b!775414 (=> (not res!524485) (not e!431576))))

(assert (=> b!775414 (= res!524485 (and (= (size!20742 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20742 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20742 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775415 () Bool)

(declare-fun e!431568 () Bool)

(assert (=> b!775415 (= e!431567 e!431568)))

(declare-fun res!524478 () Bool)

(assert (=> b!775415 (=> (not res!524478) (not e!431568))))

(declare-fun lt!345463 () SeekEntryResult!7928)

(declare-fun lt!345454 () SeekEntryResult!7928)

(assert (=> b!775415 (= res!524478 (= lt!345463 lt!345454))))

(assert (=> b!775415 (= lt!345454 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345457 lt!345466 mask!3328))))

(assert (=> b!775415 (= lt!345463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345457 mask!3328) lt!345457 lt!345466 mask!3328))))

(assert (=> b!775415 (= lt!345457 (select (store (arr!20321 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775415 (= lt!345466 (array!42459 (store (arr!20321 a!3186) i!1173 k!2102) (size!20742 a!3186)))))

(declare-fun b!775416 () Bool)

(declare-fun e!431569 () Bool)

(assert (=> b!775416 (= e!431568 (not e!431569))))

(declare-fun res!524474 () Bool)

(assert (=> b!775416 (=> res!524474 e!431569)))

(assert (=> b!775416 (= res!524474 (or (not (is-Intermediate!7928 lt!345454)) (bvsge x!1131 (x!65048 lt!345454))))))

(assert (=> b!775416 (= lt!345461 (Found!7928 j!159))))

(assert (=> b!775416 e!431573))

(declare-fun res!524490 () Bool)

(assert (=> b!775416 (=> (not res!524490) (not e!431573))))

(assert (=> b!775416 (= res!524490 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345459 () Unit!26748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26748)

(assert (=> b!775416 (= lt!345459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775417 () Bool)

(assert (=> b!775417 (= e!431570 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) (Found!7928 j!159)))))

(declare-fun b!775418 () Bool)

(declare-fun res!524489 () Bool)

(assert (=> b!775418 (=> (not res!524489) (not e!431574))))

(declare-datatypes ((List!14376 0))(
  ( (Nil!14373) (Cons!14372 (h!15480 (_ BitVec 64)) (t!20699 List!14376)) )
))
(declare-fun arrayNoDuplicates!0 (array!42458 (_ BitVec 32) List!14376) Bool)

(assert (=> b!775418 (= res!524489 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14373))))

(declare-fun b!775419 () Bool)

(assert (=> b!775419 (= e!431576 e!431574)))

(declare-fun res!524491 () Bool)

(assert (=> b!775419 (=> (not res!524491) (not e!431574))))

(declare-fun lt!345464 () SeekEntryResult!7928)

(assert (=> b!775419 (= res!524491 (or (= lt!345464 (MissingZero!7928 i!1173)) (= lt!345464 (MissingVacant!7928 i!1173))))))

(assert (=> b!775419 (= lt!345464 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775420 () Bool)

(assert (=> b!775420 (= e!431569 e!431577)))

(declare-fun res!524483 () Bool)

(assert (=> b!775420 (=> res!524483 e!431577)))

(assert (=> b!775420 (= res!524483 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345456 #b00000000000000000000000000000000) (bvsge lt!345456 (size!20742 a!3186))))))

(declare-fun lt!345455 () Unit!26748)

(assert (=> b!775420 (= lt!345455 e!431571)))

(declare-fun c!85866 () Bool)

(assert (=> b!775420 (= c!85866 lt!345460)))

(assert (=> b!775420 (= lt!345460 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775420 (= lt!345456 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!524476 () Bool)

(assert (=> start!67148 (=> (not res!524476) (not e!431576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67148 (= res!524476 (validMask!0 mask!3328))))

(assert (=> start!67148 e!431576))

(assert (=> start!67148 true))

(declare-fun array_inv!16095 (array!42458) Bool)

(assert (=> start!67148 (array_inv!16095 a!3186)))

(declare-fun b!775421 () Bool)

(declare-fun Unit!26751 () Unit!26748)

(assert (=> b!775421 (= e!431571 Unit!26751)))

(assert (=> b!775421 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345456 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345462)))

(declare-fun b!775422 () Bool)

(assert (=> b!775422 (= e!431570 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345462))))

(declare-fun b!775423 () Bool)

(assert (=> b!775423 (= e!431572 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345456 resIntermediateIndex!5 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345461)))))

(declare-fun b!775424 () Bool)

(assert (=> b!775424 (= e!431572 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345456 (select (arr!20321 a!3186) j!159) a!3186 mask!3328) lt!345462)))))

(declare-fun b!775425 () Bool)

(declare-fun res!524473 () Bool)

(assert (=> b!775425 (=> res!524473 e!431577)))

(assert (=> b!775425 (= res!524473 (not (= lt!345463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345456 lt!345457 lt!345466 mask!3328))))))

(assert (= (and start!67148 res!524476) b!775414))

(assert (= (and b!775414 res!524485) b!775407))

(assert (= (and b!775407 res!524484) b!775409))

(assert (= (and b!775409 res!524481) b!775402))

(assert (= (and b!775402 res!524479) b!775419))

(assert (= (and b!775419 res!524491) b!775411))

(assert (= (and b!775411 res!524475) b!775418))

(assert (= (and b!775418 res!524489) b!775401))

(assert (= (and b!775401 res!524482) b!775405))

(assert (= (and b!775405 res!524488) b!775404))

(assert (= (and b!775404 res!524480) b!775406))

(assert (= (and b!775406 c!85864) b!775422))

(assert (= (and b!775406 (not c!85864)) b!775417))

(assert (= (and b!775406 res!524487) b!775415))

(assert (= (and b!775415 res!524478) b!775416))

(assert (= (and b!775416 res!524490) b!775412))

(assert (= (and b!775412 res!524477) b!775403))

(assert (= (and b!775416 (not res!524474)) b!775420))

(assert (= (and b!775420 c!85866) b!775421))

(assert (= (and b!775420 (not c!85866)) b!775413))

(assert (= (and b!775420 (not res!524483)) b!775410))

(assert (= (and b!775410 c!85865) b!775424))

(assert (= (and b!775410 (not c!85865)) b!775423))

(assert (= (and b!775410 (not res!524486)) b!775425))

(assert (= (and b!775425 (not res!524473)) b!775408))

(declare-fun m!719679 () Bool)

(assert (=> b!775421 m!719679))

(assert (=> b!775421 m!719679))

(declare-fun m!719681 () Bool)

(assert (=> b!775421 m!719681))

(declare-fun m!719683 () Bool)

(assert (=> b!775416 m!719683))

(declare-fun m!719685 () Bool)

(assert (=> b!775416 m!719685))

(declare-fun m!719687 () Bool)

(assert (=> b!775415 m!719687))

(declare-fun m!719689 () Bool)

(assert (=> b!775415 m!719689))

(declare-fun m!719691 () Bool)

(assert (=> b!775415 m!719691))

(declare-fun m!719693 () Bool)

(assert (=> b!775415 m!719693))

(assert (=> b!775415 m!719687))

(declare-fun m!719695 () Bool)

(assert (=> b!775415 m!719695))

(assert (=> b!775412 m!719679))

(assert (=> b!775412 m!719679))

(declare-fun m!719697 () Bool)

(assert (=> b!775412 m!719697))

(assert (=> b!775405 m!719679))

(assert (=> b!775405 m!719679))

(declare-fun m!719699 () Bool)

(assert (=> b!775405 m!719699))

(assert (=> b!775405 m!719699))

(assert (=> b!775405 m!719679))

(declare-fun m!719701 () Bool)

(assert (=> b!775405 m!719701))

(declare-fun m!719703 () Bool)

(assert (=> b!775411 m!719703))

(assert (=> b!775413 m!719679))

(assert (=> b!775413 m!719679))

(declare-fun m!719705 () Bool)

(assert (=> b!775413 m!719705))

(assert (=> b!775413 m!719679))

(declare-fun m!719707 () Bool)

(assert (=> b!775413 m!719707))

(assert (=> b!775403 m!719679))

(assert (=> b!775403 m!719679))

(declare-fun m!719709 () Bool)

(assert (=> b!775403 m!719709))

(declare-fun m!719711 () Bool)

(assert (=> b!775402 m!719711))

(declare-fun m!719713 () Bool)

(assert (=> b!775408 m!719713))

(declare-fun m!719715 () Bool)

(assert (=> b!775408 m!719715))

(declare-fun m!719717 () Bool)

(assert (=> b!775419 m!719717))

(assert (=> b!775423 m!719679))

(assert (=> b!775423 m!719679))

(assert (=> b!775423 m!719707))

(assert (=> b!775424 m!719679))

(assert (=> b!775424 m!719679))

(assert (=> b!775424 m!719681))

(declare-fun m!719719 () Bool)

(assert (=> b!775418 m!719719))

(declare-fun m!719721 () Bool)

(assert (=> b!775425 m!719721))

(declare-fun m!719723 () Bool)

(assert (=> start!67148 m!719723))

(declare-fun m!719725 () Bool)

(assert (=> start!67148 m!719725))

(declare-fun m!719727 () Bool)

(assert (=> b!775409 m!719727))

(declare-fun m!719729 () Bool)

(assert (=> b!775404 m!719729))

(assert (=> b!775417 m!719679))

(assert (=> b!775417 m!719679))

(assert (=> b!775417 m!719705))

(assert (=> b!775422 m!719679))

(assert (=> b!775422 m!719679))

(declare-fun m!719731 () Bool)

(assert (=> b!775422 m!719731))

(assert (=> b!775407 m!719679))

(assert (=> b!775407 m!719679))

(declare-fun m!719733 () Bool)

(assert (=> b!775407 m!719733))

(declare-fun m!719735 () Bool)

(assert (=> b!775420 m!719735))

(push 1)

