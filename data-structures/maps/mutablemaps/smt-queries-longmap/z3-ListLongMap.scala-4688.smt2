; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65208 () Bool)

(assert start!65208)

(declare-fun b!737490 () Bool)

(declare-fun e!412523 () Bool)

(declare-fun e!412516 () Bool)

(assert (=> b!737490 (= e!412523 e!412516)))

(declare-fun res!495831 () Bool)

(assert (=> b!737490 (=> (not res!495831) (not e!412516))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41334 0))(
  ( (array!41335 (arr!19777 (Array (_ BitVec 32) (_ BitVec 64))) (size!20198 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41334)

(declare-datatypes ((SeekEntryResult!7384 0))(
  ( (MissingZero!7384 (index!31903 (_ BitVec 32))) (Found!7384 (index!31904 (_ BitVec 32))) (Intermediate!7384 (undefined!8196 Bool) (index!31905 (_ BitVec 32)) (x!62927 (_ BitVec 32))) (Undefined!7384) (MissingVacant!7384 (index!31906 (_ BitVec 32))) )
))
(declare-fun lt!327260 () SeekEntryResult!7384)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41334 (_ BitVec 32)) SeekEntryResult!7384)

(assert (=> b!737490 (= res!495831 (= (seekEntryOrOpen!0 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327260))))

(assert (=> b!737490 (= lt!327260 (Found!7384 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!737491 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41334 (_ BitVec 32)) SeekEntryResult!7384)

(assert (=> b!737491 (= e!412516 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327260))))

(declare-fun b!737492 () Bool)

(declare-fun e!412517 () Bool)

(declare-fun e!412525 () Bool)

(assert (=> b!737492 (= e!412517 e!412525)))

(declare-fun res!495832 () Bool)

(assert (=> b!737492 (=> (not res!495832) (not e!412525))))

(declare-fun lt!327253 () SeekEntryResult!7384)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41334 (_ BitVec 32)) SeekEntryResult!7384)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737492 (= res!495832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19777 a!3186) j!159) mask!3328) (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327253))))

(assert (=> b!737492 (= lt!327253 (Intermediate!7384 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!412526 () Bool)

(declare-fun b!737493 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!737493 (= e!412526 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) (Found!7384 j!159)))))

(declare-fun res!495824 () Bool)

(declare-fun e!412518 () Bool)

(assert (=> start!65208 (=> (not res!495824) (not e!412518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65208 (= res!495824 (validMask!0 mask!3328))))

(assert (=> start!65208 e!412518))

(assert (=> start!65208 true))

(declare-fun array_inv!15551 (array!41334) Bool)

(assert (=> start!65208 (array_inv!15551 a!3186)))

(declare-fun lt!327249 () (_ BitVec 32))

(declare-fun b!737494 () Bool)

(declare-fun e!412522 () Bool)

(declare-fun lt!327247 () SeekEntryResult!7384)

(assert (=> b!737494 (= e!412522 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327249 resIntermediateIndex!5 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327247)))))

(declare-fun b!737495 () Bool)

(declare-fun e!412524 () Bool)

(declare-fun e!412520 () Bool)

(assert (=> b!737495 (= e!412524 (not e!412520))))

(declare-fun res!495835 () Bool)

(assert (=> b!737495 (=> res!495835 e!412520)))

(declare-fun lt!327250 () SeekEntryResult!7384)

(get-info :version)

(assert (=> b!737495 (= res!495835 (or (not ((_ is Intermediate!7384) lt!327250)) (bvsge x!1131 (x!62927 lt!327250))))))

(assert (=> b!737495 (= lt!327247 (Found!7384 j!159))))

(assert (=> b!737495 e!412523))

(declare-fun res!495838 () Bool)

(assert (=> b!737495 (=> (not res!495838) (not e!412523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41334 (_ BitVec 32)) Bool)

(assert (=> b!737495 (= res!495838 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25154 0))(
  ( (Unit!25155) )
))
(declare-fun lt!327254 () Unit!25154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25154)

(assert (=> b!737495 (= lt!327254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737496 () Bool)

(assert (=> b!737496 (= e!412522 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327249 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327253)))))

(declare-fun b!737497 () Bool)

(declare-fun res!495834 () Bool)

(assert (=> b!737497 (=> (not res!495834) (not e!412525))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737497 (= res!495834 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19777 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737498 () Bool)

(declare-fun res!495836 () Bool)

(declare-fun e!412527 () Bool)

(assert (=> b!737498 (=> res!495836 e!412527)))

(assert (=> b!737498 (= res!495836 e!412522)))

(declare-fun c!81215 () Bool)

(declare-fun lt!327258 () Bool)

(assert (=> b!737498 (= c!81215 lt!327258)))

(declare-fun b!737499 () Bool)

(assert (=> b!737499 (= e!412525 e!412524)))

(declare-fun res!495837 () Bool)

(assert (=> b!737499 (=> (not res!495837) (not e!412524))))

(declare-fun lt!327255 () SeekEntryResult!7384)

(assert (=> b!737499 (= res!495837 (= lt!327255 lt!327250))))

(declare-fun lt!327248 () array!41334)

(declare-fun lt!327259 () (_ BitVec 64))

(assert (=> b!737499 (= lt!327250 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327259 lt!327248 mask!3328))))

(assert (=> b!737499 (= lt!327255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327259 mask!3328) lt!327259 lt!327248 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!737499 (= lt!327259 (select (store (arr!19777 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!737499 (= lt!327248 (array!41335 (store (arr!19777 a!3186) i!1173 k0!2102) (size!20198 a!3186)))))

(declare-fun b!737500 () Bool)

(declare-fun res!495829 () Bool)

(assert (=> b!737500 (=> (not res!495829) (not e!412525))))

(assert (=> b!737500 (= res!495829 e!412526)))

(declare-fun c!81214 () Bool)

(assert (=> b!737500 (= c!81214 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737501 () Bool)

(declare-fun res!495826 () Bool)

(assert (=> b!737501 (=> (not res!495826) (not e!412517))))

(assert (=> b!737501 (= res!495826 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20198 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20198 a!3186))))))

(declare-fun b!737502 () Bool)

(declare-fun e!412519 () Unit!25154)

(declare-fun Unit!25156 () Unit!25154)

(assert (=> b!737502 (= e!412519 Unit!25156)))

(assert (=> b!737502 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327249 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327253)))

(declare-fun b!737503 () Bool)

(declare-fun res!495827 () Bool)

(assert (=> b!737503 (=> (not res!495827) (not e!412518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737503 (= res!495827 (validKeyInArray!0 (select (arr!19777 a!3186) j!159)))))

(declare-fun b!737504 () Bool)

(declare-fun res!495839 () Bool)

(assert (=> b!737504 (=> (not res!495839) (not e!412517))))

(assert (=> b!737504 (= res!495839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737505 () Bool)

(declare-fun res!495833 () Bool)

(assert (=> b!737505 (=> (not res!495833) (not e!412518))))

(assert (=> b!737505 (= res!495833 (and (= (size!20198 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20198 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20198 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737506 () Bool)

(declare-fun res!495823 () Bool)

(assert (=> b!737506 (=> (not res!495823) (not e!412518))))

(assert (=> b!737506 (= res!495823 (validKeyInArray!0 k0!2102))))

(declare-fun b!737507 () Bool)

(assert (=> b!737507 (= e!412518 e!412517)))

(declare-fun res!495840 () Bool)

(assert (=> b!737507 (=> (not res!495840) (not e!412517))))

(declare-fun lt!327257 () SeekEntryResult!7384)

(assert (=> b!737507 (= res!495840 (or (= lt!327257 (MissingZero!7384 i!1173)) (= lt!327257 (MissingVacant!7384 i!1173))))))

(assert (=> b!737507 (= lt!327257 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!737508 () Bool)

(declare-fun res!495825 () Bool)

(assert (=> b!737508 (=> (not res!495825) (not e!412517))))

(declare-datatypes ((List!13832 0))(
  ( (Nil!13829) (Cons!13828 (h!14900 (_ BitVec 64)) (t!20155 List!13832)) )
))
(declare-fun arrayNoDuplicates!0 (array!41334 (_ BitVec 32) List!13832) Bool)

(assert (=> b!737508 (= res!495825 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13829))))

(declare-fun b!737509 () Bool)

(assert (=> b!737509 (= e!412526 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327253))))

(declare-fun b!737510 () Bool)

(assert (=> b!737510 (= e!412527 true)))

(declare-fun lt!327256 () SeekEntryResult!7384)

(assert (=> b!737510 (= lt!327256 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327249 lt!327259 lt!327248 mask!3328))))

(declare-fun b!737511 () Bool)

(assert (=> b!737511 (= e!412520 e!412527)))

(declare-fun res!495830 () Bool)

(assert (=> b!737511 (=> res!495830 e!412527)))

(assert (=> b!737511 (= res!495830 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327249 #b00000000000000000000000000000000) (bvsge lt!327249 (size!20198 a!3186))))))

(declare-fun lt!327252 () Unit!25154)

(assert (=> b!737511 (= lt!327252 e!412519)))

(declare-fun c!81216 () Bool)

(assert (=> b!737511 (= c!81216 lt!327258)))

(assert (=> b!737511 (= lt!327258 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737511 (= lt!327249 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737512 () Bool)

(declare-fun Unit!25157 () Unit!25154)

(assert (=> b!737512 (= e!412519 Unit!25157)))

(declare-fun lt!327251 () SeekEntryResult!7384)

(assert (=> b!737512 (= lt!327251 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19777 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737512 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327249 resIntermediateIndex!5 (select (arr!19777 a!3186) j!159) a!3186 mask!3328) lt!327247)))

(declare-fun b!737513 () Bool)

(declare-fun res!495828 () Bool)

(assert (=> b!737513 (=> (not res!495828) (not e!412518))))

(declare-fun arrayContainsKey!0 (array!41334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737513 (= res!495828 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65208 res!495824) b!737505))

(assert (= (and b!737505 res!495833) b!737503))

(assert (= (and b!737503 res!495827) b!737506))

(assert (= (and b!737506 res!495823) b!737513))

(assert (= (and b!737513 res!495828) b!737507))

(assert (= (and b!737507 res!495840) b!737504))

(assert (= (and b!737504 res!495839) b!737508))

(assert (= (and b!737508 res!495825) b!737501))

(assert (= (and b!737501 res!495826) b!737492))

(assert (= (and b!737492 res!495832) b!737497))

(assert (= (and b!737497 res!495834) b!737500))

(assert (= (and b!737500 c!81214) b!737509))

(assert (= (and b!737500 (not c!81214)) b!737493))

(assert (= (and b!737500 res!495829) b!737499))

(assert (= (and b!737499 res!495837) b!737495))

(assert (= (and b!737495 res!495838) b!737490))

(assert (= (and b!737490 res!495831) b!737491))

(assert (= (and b!737495 (not res!495835)) b!737511))

(assert (= (and b!737511 c!81216) b!737502))

(assert (= (and b!737511 (not c!81216)) b!737512))

(assert (= (and b!737511 (not res!495830)) b!737498))

(assert (= (and b!737498 c!81215) b!737496))

(assert (= (and b!737498 (not c!81215)) b!737494))

(assert (= (and b!737498 (not res!495836)) b!737510))

(declare-fun m!689425 () Bool)

(assert (=> b!737509 m!689425))

(assert (=> b!737509 m!689425))

(declare-fun m!689427 () Bool)

(assert (=> b!737509 m!689427))

(assert (=> b!737512 m!689425))

(assert (=> b!737512 m!689425))

(declare-fun m!689429 () Bool)

(assert (=> b!737512 m!689429))

(assert (=> b!737512 m!689425))

(declare-fun m!689431 () Bool)

(assert (=> b!737512 m!689431))

(declare-fun m!689433 () Bool)

(assert (=> b!737510 m!689433))

(assert (=> b!737491 m!689425))

(assert (=> b!737491 m!689425))

(declare-fun m!689435 () Bool)

(assert (=> b!737491 m!689435))

(declare-fun m!689437 () Bool)

(assert (=> b!737508 m!689437))

(declare-fun m!689439 () Bool)

(assert (=> b!737495 m!689439))

(declare-fun m!689441 () Bool)

(assert (=> b!737495 m!689441))

(assert (=> b!737496 m!689425))

(assert (=> b!737496 m!689425))

(declare-fun m!689443 () Bool)

(assert (=> b!737496 m!689443))

(assert (=> b!737494 m!689425))

(assert (=> b!737494 m!689425))

(assert (=> b!737494 m!689431))

(declare-fun m!689445 () Bool)

(assert (=> b!737504 m!689445))

(declare-fun m!689447 () Bool)

(assert (=> b!737513 m!689447))

(declare-fun m!689449 () Bool)

(assert (=> b!737507 m!689449))

(assert (=> b!737493 m!689425))

(assert (=> b!737493 m!689425))

(assert (=> b!737493 m!689429))

(assert (=> b!737492 m!689425))

(assert (=> b!737492 m!689425))

(declare-fun m!689451 () Bool)

(assert (=> b!737492 m!689451))

(assert (=> b!737492 m!689451))

(assert (=> b!737492 m!689425))

(declare-fun m!689453 () Bool)

(assert (=> b!737492 m!689453))

(assert (=> b!737490 m!689425))

(assert (=> b!737490 m!689425))

(declare-fun m!689455 () Bool)

(assert (=> b!737490 m!689455))

(declare-fun m!689457 () Bool)

(assert (=> b!737506 m!689457))

(declare-fun m!689459 () Bool)

(assert (=> b!737499 m!689459))

(declare-fun m!689461 () Bool)

(assert (=> b!737499 m!689461))

(declare-fun m!689463 () Bool)

(assert (=> b!737499 m!689463))

(declare-fun m!689465 () Bool)

(assert (=> b!737499 m!689465))

(declare-fun m!689467 () Bool)

(assert (=> b!737499 m!689467))

(assert (=> b!737499 m!689465))

(declare-fun m!689469 () Bool)

(assert (=> start!65208 m!689469))

(declare-fun m!689471 () Bool)

(assert (=> start!65208 m!689471))

(declare-fun m!689473 () Bool)

(assert (=> b!737511 m!689473))

(assert (=> b!737502 m!689425))

(assert (=> b!737502 m!689425))

(assert (=> b!737502 m!689443))

(assert (=> b!737503 m!689425))

(assert (=> b!737503 m!689425))

(declare-fun m!689475 () Bool)

(assert (=> b!737503 m!689475))

(declare-fun m!689477 () Bool)

(assert (=> b!737497 m!689477))

(check-sat (not b!737493) (not b!737492) (not b!737508) (not b!737499) (not b!737491) (not b!737504) (not start!65208) (not b!737506) (not b!737502) (not b!737495) (not b!737512) (not b!737490) (not b!737511) (not b!737503) (not b!737509) (not b!737510) (not b!737496) (not b!737494) (not b!737513) (not b!737507))
(check-sat)
