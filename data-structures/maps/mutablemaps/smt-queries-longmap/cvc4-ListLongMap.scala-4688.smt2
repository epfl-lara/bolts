; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65210 () Bool)

(assert start!65210)

(declare-fun b!737562 () Bool)

(declare-fun res!495889 () Bool)

(declare-fun e!412560 () Bool)

(assert (=> b!737562 (=> (not res!495889) (not e!412560))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41336 0))(
  ( (array!41337 (arr!19778 (Array (_ BitVec 32) (_ BitVec 64))) (size!20199 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41336)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737562 (= res!495889 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20199 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20199 a!3186))))))

(declare-fun b!737563 () Bool)

(declare-fun res!495879 () Bool)

(declare-fun e!412553 () Bool)

(assert (=> b!737563 (=> (not res!495879) (not e!412553))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!737563 (= res!495879 (and (= (size!20199 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20199 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20199 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!495886 () Bool)

(assert (=> start!65210 (=> (not res!495886) (not e!412553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65210 (= res!495886 (validMask!0 mask!3328))))

(assert (=> start!65210 e!412553))

(assert (=> start!65210 true))

(declare-fun array_inv!15552 (array!41336) Bool)

(assert (=> start!65210 (array_inv!15552 a!3186)))

(declare-fun b!737564 () Bool)

(declare-fun res!495884 () Bool)

(assert (=> b!737564 (=> (not res!495884) (not e!412560))))

(declare-datatypes ((List!13833 0))(
  ( (Nil!13830) (Cons!13829 (h!14901 (_ BitVec 64)) (t!20156 List!13833)) )
))
(declare-fun arrayNoDuplicates!0 (array!41336 (_ BitVec 32) List!13833) Bool)

(assert (=> b!737564 (= res!495884 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13830))))

(declare-fun b!737565 () Bool)

(declare-fun e!412556 () Bool)

(declare-fun e!412555 () Bool)

(assert (=> b!737565 (= e!412556 (not e!412555))))

(declare-fun res!495894 () Bool)

(assert (=> b!737565 (=> res!495894 e!412555)))

(declare-datatypes ((SeekEntryResult!7385 0))(
  ( (MissingZero!7385 (index!31907 (_ BitVec 32))) (Found!7385 (index!31908 (_ BitVec 32))) (Intermediate!7385 (undefined!8197 Bool) (index!31909 (_ BitVec 32)) (x!62928 (_ BitVec 32))) (Undefined!7385) (MissingVacant!7385 (index!31910 (_ BitVec 32))) )
))
(declare-fun lt!327298 () SeekEntryResult!7385)

(assert (=> b!737565 (= res!495894 (or (not (is-Intermediate!7385 lt!327298)) (bvsge x!1131 (x!62928 lt!327298))))))

(declare-fun lt!327290 () SeekEntryResult!7385)

(assert (=> b!737565 (= lt!327290 (Found!7385 j!159))))

(declare-fun e!412561 () Bool)

(assert (=> b!737565 e!412561))

(declare-fun res!495880 () Bool)

(assert (=> b!737565 (=> (not res!495880) (not e!412561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41336 (_ BitVec 32)) Bool)

(assert (=> b!737565 (= res!495880 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25158 0))(
  ( (Unit!25159) )
))
(declare-fun lt!327294 () Unit!25158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25158)

(assert (=> b!737565 (= lt!327294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737566 () Bool)

(declare-fun res!495878 () Bool)

(assert (=> b!737566 (=> (not res!495878) (not e!412560))))

(assert (=> b!737566 (= res!495878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737567 () Bool)

(declare-fun e!412552 () Unit!25158)

(declare-fun Unit!25160 () Unit!25158)

(assert (=> b!737567 (= e!412552 Unit!25160)))

(declare-fun lt!327301 () SeekEntryResult!7385)

(declare-fun lt!327293 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41336 (_ BitVec 32)) SeekEntryResult!7385)

(assert (=> b!737567 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327293 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327301)))

(declare-fun e!412554 () Bool)

(declare-fun b!737568 () Bool)

(assert (=> b!737568 (= e!412554 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327293 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327301)))))

(declare-fun b!737569 () Bool)

(declare-fun res!495882 () Bool)

(declare-fun e!412557 () Bool)

(assert (=> b!737569 (=> res!495882 e!412557)))

(assert (=> b!737569 (= res!495882 e!412554)))

(declare-fun c!81223 () Bool)

(declare-fun lt!327302 () Bool)

(assert (=> b!737569 (= c!81223 lt!327302)))

(declare-fun b!737570 () Bool)

(declare-fun e!412563 () Bool)

(assert (=> b!737570 (= e!412563 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327301))))

(declare-fun b!737571 () Bool)

(assert (=> b!737571 (= e!412557 true)))

(declare-fun lt!327295 () (_ BitVec 64))

(declare-fun lt!327292 () array!41336)

(declare-fun lt!327299 () SeekEntryResult!7385)

(assert (=> b!737571 (= lt!327299 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327293 lt!327295 lt!327292 mask!3328))))

(declare-fun b!737572 () Bool)

(declare-fun res!495887 () Bool)

(declare-fun e!412559 () Bool)

(assert (=> b!737572 (=> (not res!495887) (not e!412559))))

(assert (=> b!737572 (= res!495887 e!412563)))

(declare-fun c!81224 () Bool)

(assert (=> b!737572 (= c!81224 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737573 () Bool)

(assert (=> b!737573 (= e!412553 e!412560)))

(declare-fun res!495893 () Bool)

(assert (=> b!737573 (=> (not res!495893) (not e!412560))))

(declare-fun lt!327300 () SeekEntryResult!7385)

(assert (=> b!737573 (= res!495893 (or (= lt!327300 (MissingZero!7385 i!1173)) (= lt!327300 (MissingVacant!7385 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41336 (_ BitVec 32)) SeekEntryResult!7385)

(assert (=> b!737573 (= lt!327300 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737574 () Bool)

(assert (=> b!737574 (= e!412555 e!412557)))

(declare-fun res!495881 () Bool)

(assert (=> b!737574 (=> res!495881 e!412557)))

(assert (=> b!737574 (= res!495881 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327293 #b00000000000000000000000000000000) (bvsge lt!327293 (size!20199 a!3186))))))

(declare-fun lt!327297 () Unit!25158)

(assert (=> b!737574 (= lt!327297 e!412552)))

(declare-fun c!81225 () Bool)

(assert (=> b!737574 (= c!81225 lt!327302)))

(assert (=> b!737574 (= lt!327302 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737574 (= lt!327293 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737575 () Bool)

(declare-fun res!495885 () Bool)

(assert (=> b!737575 (=> (not res!495885) (not e!412553))))

(declare-fun arrayContainsKey!0 (array!41336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737575 (= res!495885 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737576 () Bool)

(declare-fun res!495890 () Bool)

(assert (=> b!737576 (=> (not res!495890) (not e!412559))))

(assert (=> b!737576 (= res!495890 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19778 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!327289 () SeekEntryResult!7385)

(declare-fun e!412558 () Bool)

(declare-fun b!737577 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41336 (_ BitVec 32)) SeekEntryResult!7385)

(assert (=> b!737577 (= e!412558 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327289))))

(declare-fun b!737578 () Bool)

(assert (=> b!737578 (= e!412559 e!412556)))

(declare-fun res!495891 () Bool)

(assert (=> b!737578 (=> (not res!495891) (not e!412556))))

(declare-fun lt!327291 () SeekEntryResult!7385)

(assert (=> b!737578 (= res!495891 (= lt!327291 lt!327298))))

(assert (=> b!737578 (= lt!327298 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327295 lt!327292 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737578 (= lt!327291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327295 mask!3328) lt!327295 lt!327292 mask!3328))))

(assert (=> b!737578 (= lt!327295 (select (store (arr!19778 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737578 (= lt!327292 (array!41337 (store (arr!19778 a!3186) i!1173 k!2102) (size!20199 a!3186)))))

(declare-fun b!737579 () Bool)

(declare-fun res!495888 () Bool)

(assert (=> b!737579 (=> (not res!495888) (not e!412553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737579 (= res!495888 (validKeyInArray!0 k!2102))))

(declare-fun b!737580 () Bool)

(assert (=> b!737580 (= e!412554 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327293 resIntermediateIndex!5 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327290)))))

(declare-fun b!737581 () Bool)

(assert (=> b!737581 (= e!412563 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) (Found!7385 j!159)))))

(declare-fun b!737582 () Bool)

(declare-fun res!495883 () Bool)

(assert (=> b!737582 (=> (not res!495883) (not e!412553))))

(assert (=> b!737582 (= res!495883 (validKeyInArray!0 (select (arr!19778 a!3186) j!159)))))

(declare-fun b!737583 () Bool)

(declare-fun Unit!25161 () Unit!25158)

(assert (=> b!737583 (= e!412552 Unit!25161)))

(declare-fun lt!327296 () SeekEntryResult!7385)

(assert (=> b!737583 (= lt!327296 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19778 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737583 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327293 resIntermediateIndex!5 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327290)))

(declare-fun b!737584 () Bool)

(assert (=> b!737584 (= e!412560 e!412559)))

(declare-fun res!495877 () Bool)

(assert (=> b!737584 (=> (not res!495877) (not e!412559))))

(assert (=> b!737584 (= res!495877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19778 a!3186) j!159) mask!3328) (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327301))))

(assert (=> b!737584 (= lt!327301 (Intermediate!7385 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737585 () Bool)

(assert (=> b!737585 (= e!412561 e!412558)))

(declare-fun res!495892 () Bool)

(assert (=> b!737585 (=> (not res!495892) (not e!412558))))

(assert (=> b!737585 (= res!495892 (= (seekEntryOrOpen!0 (select (arr!19778 a!3186) j!159) a!3186 mask!3328) lt!327289))))

(assert (=> b!737585 (= lt!327289 (Found!7385 j!159))))

(assert (= (and start!65210 res!495886) b!737563))

(assert (= (and b!737563 res!495879) b!737582))

(assert (= (and b!737582 res!495883) b!737579))

(assert (= (and b!737579 res!495888) b!737575))

(assert (= (and b!737575 res!495885) b!737573))

(assert (= (and b!737573 res!495893) b!737566))

(assert (= (and b!737566 res!495878) b!737564))

(assert (= (and b!737564 res!495884) b!737562))

(assert (= (and b!737562 res!495889) b!737584))

(assert (= (and b!737584 res!495877) b!737576))

(assert (= (and b!737576 res!495890) b!737572))

(assert (= (and b!737572 c!81224) b!737570))

(assert (= (and b!737572 (not c!81224)) b!737581))

(assert (= (and b!737572 res!495887) b!737578))

(assert (= (and b!737578 res!495891) b!737565))

(assert (= (and b!737565 res!495880) b!737585))

(assert (= (and b!737585 res!495892) b!737577))

(assert (= (and b!737565 (not res!495894)) b!737574))

(assert (= (and b!737574 c!81225) b!737567))

(assert (= (and b!737574 (not c!81225)) b!737583))

(assert (= (and b!737574 (not res!495881)) b!737569))

(assert (= (and b!737569 c!81223) b!737568))

(assert (= (and b!737569 (not c!81223)) b!737580))

(assert (= (and b!737569 (not res!495882)) b!737571))

(declare-fun m!689479 () Bool)

(assert (=> b!737584 m!689479))

(assert (=> b!737584 m!689479))

(declare-fun m!689481 () Bool)

(assert (=> b!737584 m!689481))

(assert (=> b!737584 m!689481))

(assert (=> b!737584 m!689479))

(declare-fun m!689483 () Bool)

(assert (=> b!737584 m!689483))

(assert (=> b!737582 m!689479))

(assert (=> b!737582 m!689479))

(declare-fun m!689485 () Bool)

(assert (=> b!737582 m!689485))

(assert (=> b!737583 m!689479))

(assert (=> b!737583 m!689479))

(declare-fun m!689487 () Bool)

(assert (=> b!737583 m!689487))

(assert (=> b!737583 m!689479))

(declare-fun m!689489 () Bool)

(assert (=> b!737583 m!689489))

(assert (=> b!737567 m!689479))

(assert (=> b!737567 m!689479))

(declare-fun m!689491 () Bool)

(assert (=> b!737567 m!689491))

(declare-fun m!689493 () Bool)

(assert (=> b!737573 m!689493))

(declare-fun m!689495 () Bool)

(assert (=> b!737566 m!689495))

(assert (=> b!737568 m!689479))

(assert (=> b!737568 m!689479))

(assert (=> b!737568 m!689491))

(assert (=> b!737585 m!689479))

(assert (=> b!737585 m!689479))

(declare-fun m!689497 () Bool)

(assert (=> b!737585 m!689497))

(declare-fun m!689499 () Bool)

(assert (=> b!737571 m!689499))

(assert (=> b!737581 m!689479))

(assert (=> b!737581 m!689479))

(assert (=> b!737581 m!689487))

(declare-fun m!689501 () Bool)

(assert (=> b!737576 m!689501))

(declare-fun m!689503 () Bool)

(assert (=> b!737575 m!689503))

(declare-fun m!689505 () Bool)

(assert (=> b!737578 m!689505))

(declare-fun m!689507 () Bool)

(assert (=> b!737578 m!689507))

(declare-fun m!689509 () Bool)

(assert (=> b!737578 m!689509))

(declare-fun m!689511 () Bool)

(assert (=> b!737578 m!689511))

(assert (=> b!737578 m!689507))

(declare-fun m!689513 () Bool)

(assert (=> b!737578 m!689513))

(declare-fun m!689515 () Bool)

(assert (=> b!737579 m!689515))

(declare-fun m!689517 () Bool)

(assert (=> start!65210 m!689517))

(declare-fun m!689519 () Bool)

(assert (=> start!65210 m!689519))

(declare-fun m!689521 () Bool)

(assert (=> b!737565 m!689521))

(declare-fun m!689523 () Bool)

(assert (=> b!737565 m!689523))

(assert (=> b!737580 m!689479))

(assert (=> b!737580 m!689479))

(assert (=> b!737580 m!689489))

(assert (=> b!737577 m!689479))

(assert (=> b!737577 m!689479))

(declare-fun m!689525 () Bool)

(assert (=> b!737577 m!689525))

(declare-fun m!689527 () Bool)

(assert (=> b!737574 m!689527))

(assert (=> b!737570 m!689479))

(assert (=> b!737570 m!689479))

(declare-fun m!689529 () Bool)

(assert (=> b!737570 m!689529))

(declare-fun m!689531 () Bool)

(assert (=> b!737564 m!689531))

(push 1)

