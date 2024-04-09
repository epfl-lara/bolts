; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65268 () Bool)

(assert start!65268)

(declare-fun b!739650 () Bool)

(declare-fun res!497443 () Bool)

(declare-fun e!413597 () Bool)

(assert (=> b!739650 (=> (not res!497443) (not e!413597))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41394 0))(
  ( (array!41395 (arr!19807 (Array (_ BitVec 32) (_ BitVec 64))) (size!20228 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41394)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739650 (= res!497443 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19807 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!739651 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!413606 () Bool)

(declare-datatypes ((SeekEntryResult!7414 0))(
  ( (MissingZero!7414 (index!32023 (_ BitVec 32))) (Found!7414 (index!32024 (_ BitVec 32))) (Intermediate!7414 (undefined!8226 Bool) (index!32025 (_ BitVec 32)) (x!63037 (_ BitVec 32))) (Undefined!7414) (MissingVacant!7414 (index!32026 (_ BitVec 32))) )
))
(declare-fun lt!328515 () SeekEntryResult!7414)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41394 (_ BitVec 32)) SeekEntryResult!7414)

(assert (=> b!739651 (= e!413606 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328515))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!413605 () Bool)

(declare-fun b!739652 () Bool)

(declare-fun lt!328520 () SeekEntryResult!7414)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41394 (_ BitVec 32)) SeekEntryResult!7414)

(assert (=> b!739652 (= e!413605 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328520))))

(declare-fun b!739653 () Bool)

(declare-fun res!497460 () Bool)

(assert (=> b!739653 (=> (not res!497460) (not e!413597))))

(assert (=> b!739653 (= res!497460 e!413606)))

(declare-fun c!81484 () Bool)

(assert (=> b!739653 (= c!81484 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739654 () Bool)

(declare-fun e!413599 () Bool)

(declare-fun e!413607 () Bool)

(assert (=> b!739654 (= e!413599 e!413607)))

(declare-fun res!497453 () Bool)

(assert (=> b!739654 (=> (not res!497453) (not e!413607))))

(declare-fun lt!328512 () SeekEntryResult!7414)

(assert (=> b!739654 (= res!497453 (or (= lt!328512 (MissingZero!7414 i!1173)) (= lt!328512 (MissingVacant!7414 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41394 (_ BitVec 32)) SeekEntryResult!7414)

(assert (=> b!739654 (= lt!328512 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun lt!328510 () (_ BitVec 32))

(declare-fun b!739655 () Bool)

(declare-fun e!413601 () Bool)

(declare-fun lt!328509 () SeekEntryResult!7414)

(assert (=> b!739655 (= e!413601 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328510 resIntermediateIndex!5 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328509)))))

(declare-fun b!739656 () Bool)

(declare-datatypes ((Unit!25274 0))(
  ( (Unit!25275) )
))
(declare-fun e!413596 () Unit!25274)

(declare-fun Unit!25276 () Unit!25274)

(assert (=> b!739656 (= e!413596 Unit!25276)))

(declare-fun lt!328513 () SeekEntryResult!7414)

(assert (=> b!739656 (= lt!328513 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19807 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739656 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328510 resIntermediateIndex!5 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328509)))

(declare-fun b!739657 () Bool)

(declare-fun res!497455 () Bool)

(assert (=> b!739657 (=> (not res!497455) (not e!413607))))

(assert (=> b!739657 (= res!497455 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20228 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20228 a!3186))))))

(declare-fun b!739658 () Bool)

(assert (=> b!739658 (= e!413607 e!413597)))

(declare-fun res!497446 () Bool)

(assert (=> b!739658 (=> (not res!497446) (not e!413597))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739658 (= res!497446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19807 a!3186) j!159) mask!3328) (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328515))))

(assert (=> b!739658 (= lt!328515 (Intermediate!7414 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739659 () Bool)

(declare-fun res!497454 () Bool)

(assert (=> b!739659 (=> (not res!497454) (not e!413599))))

(assert (=> b!739659 (= res!497454 (and (= (size!20228 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20228 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20228 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739660 () Bool)

(declare-fun e!413600 () Bool)

(assert (=> b!739660 (= e!413600 e!413605)))

(declare-fun res!497448 () Bool)

(assert (=> b!739660 (=> (not res!497448) (not e!413605))))

(assert (=> b!739660 (= res!497448 (= (seekEntryOrOpen!0 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328520))))

(assert (=> b!739660 (= lt!328520 (Found!7414 j!159))))

(declare-fun b!739661 () Bool)

(declare-fun res!497451 () Bool)

(assert (=> b!739661 (=> (not res!497451) (not e!413607))))

(declare-datatypes ((List!13862 0))(
  ( (Nil!13859) (Cons!13858 (h!14930 (_ BitVec 64)) (t!20185 List!13862)) )
))
(declare-fun arrayNoDuplicates!0 (array!41394 (_ BitVec 32) List!13862) Bool)

(assert (=> b!739661 (= res!497451 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13859))))

(declare-fun b!739662 () Bool)

(declare-fun e!413602 () Bool)

(assert (=> b!739662 (= e!413597 e!413602)))

(declare-fun res!497456 () Bool)

(assert (=> b!739662 (=> (not res!497456) (not e!413602))))

(declare-fun lt!328511 () SeekEntryResult!7414)

(declare-fun lt!328514 () SeekEntryResult!7414)

(assert (=> b!739662 (= res!497456 (= lt!328511 lt!328514))))

(declare-fun lt!328508 () array!41394)

(declare-fun lt!328518 () (_ BitVec 64))

(assert (=> b!739662 (= lt!328514 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328518 lt!328508 mask!3328))))

(assert (=> b!739662 (= lt!328511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328518 mask!3328) lt!328518 lt!328508 mask!3328))))

(assert (=> b!739662 (= lt!328518 (select (store (arr!19807 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!739662 (= lt!328508 (array!41395 (store (arr!19807 a!3186) i!1173 k0!2102) (size!20228 a!3186)))))

(declare-fun b!739663 () Bool)

(declare-fun e!413603 () Bool)

(declare-fun e!413598 () Bool)

(assert (=> b!739663 (= e!413603 e!413598)))

(declare-fun res!497457 () Bool)

(assert (=> b!739663 (=> res!497457 e!413598)))

(assert (=> b!739663 (= res!497457 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328510 #b00000000000000000000000000000000) (bvsge lt!328510 (size!20228 a!3186))))))

(declare-fun lt!328507 () Unit!25274)

(assert (=> b!739663 (= lt!328507 e!413596)))

(declare-fun c!81486 () Bool)

(declare-fun lt!328517 () Bool)

(assert (=> b!739663 (= c!81486 lt!328517)))

(assert (=> b!739663 (= lt!328517 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739663 (= lt!328510 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739664 () Bool)

(assert (=> b!739664 (= e!413598 true)))

(declare-fun lt!328519 () SeekEntryResult!7414)

(assert (=> b!739664 (= lt!328519 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328510 lt!328518 lt!328508 mask!3328))))

(declare-fun b!739665 () Bool)

(declare-fun res!497459 () Bool)

(assert (=> b!739665 (=> res!497459 e!413598)))

(assert (=> b!739665 (= res!497459 e!413601)))

(declare-fun c!81485 () Bool)

(assert (=> b!739665 (= c!81485 lt!328517)))

(declare-fun b!739666 () Bool)

(declare-fun res!497445 () Bool)

(assert (=> b!739666 (=> (not res!497445) (not e!413607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41394 (_ BitVec 32)) Bool)

(assert (=> b!739666 (= res!497445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739667 () Bool)

(declare-fun Unit!25277 () Unit!25274)

(assert (=> b!739667 (= e!413596 Unit!25277)))

(assert (=> b!739667 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328510 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328515)))

(declare-fun b!739668 () Bool)

(assert (=> b!739668 (= e!413602 (not e!413603))))

(declare-fun res!497452 () Bool)

(assert (=> b!739668 (=> res!497452 e!413603)))

(get-info :version)

(assert (=> b!739668 (= res!497452 (or (not ((_ is Intermediate!7414) lt!328514)) (bvsge x!1131 (x!63037 lt!328514))))))

(assert (=> b!739668 (= lt!328509 (Found!7414 j!159))))

(assert (=> b!739668 e!413600))

(declare-fun res!497450 () Bool)

(assert (=> b!739668 (=> (not res!497450) (not e!413600))))

(assert (=> b!739668 (= res!497450 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328516 () Unit!25274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41394 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25274)

(assert (=> b!739668 (= lt!328516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739669 () Bool)

(declare-fun res!497447 () Bool)

(assert (=> b!739669 (=> (not res!497447) (not e!413599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739669 (= res!497447 (validKeyInArray!0 k0!2102))))

(declare-fun b!739670 () Bool)

(declare-fun res!497449 () Bool)

(assert (=> b!739670 (=> (not res!497449) (not e!413599))))

(assert (=> b!739670 (= res!497449 (validKeyInArray!0 (select (arr!19807 a!3186) j!159)))))

(declare-fun res!497458 () Bool)

(assert (=> start!65268 (=> (not res!497458) (not e!413599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65268 (= res!497458 (validMask!0 mask!3328))))

(assert (=> start!65268 e!413599))

(assert (=> start!65268 true))

(declare-fun array_inv!15581 (array!41394) Bool)

(assert (=> start!65268 (array_inv!15581 a!3186)))

(declare-fun b!739671 () Bool)

(declare-fun res!497444 () Bool)

(assert (=> b!739671 (=> (not res!497444) (not e!413599))))

(declare-fun arrayContainsKey!0 (array!41394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739671 (= res!497444 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739672 () Bool)

(assert (=> b!739672 (= e!413606 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) (Found!7414 j!159)))))

(declare-fun b!739673 () Bool)

(assert (=> b!739673 (= e!413601 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328510 (select (arr!19807 a!3186) j!159) a!3186 mask!3328) lt!328515)))))

(assert (= (and start!65268 res!497458) b!739659))

(assert (= (and b!739659 res!497454) b!739670))

(assert (= (and b!739670 res!497449) b!739669))

(assert (= (and b!739669 res!497447) b!739671))

(assert (= (and b!739671 res!497444) b!739654))

(assert (= (and b!739654 res!497453) b!739666))

(assert (= (and b!739666 res!497445) b!739661))

(assert (= (and b!739661 res!497451) b!739657))

(assert (= (and b!739657 res!497455) b!739658))

(assert (= (and b!739658 res!497446) b!739650))

(assert (= (and b!739650 res!497443) b!739653))

(assert (= (and b!739653 c!81484) b!739651))

(assert (= (and b!739653 (not c!81484)) b!739672))

(assert (= (and b!739653 res!497460) b!739662))

(assert (= (and b!739662 res!497456) b!739668))

(assert (= (and b!739668 res!497450) b!739660))

(assert (= (and b!739660 res!497448) b!739652))

(assert (= (and b!739668 (not res!497452)) b!739663))

(assert (= (and b!739663 c!81486) b!739667))

(assert (= (and b!739663 (not c!81486)) b!739656))

(assert (= (and b!739663 (not res!497457)) b!739665))

(assert (= (and b!739665 c!81485) b!739673))

(assert (= (and b!739665 (not c!81485)) b!739655))

(assert (= (and b!739665 (not res!497459)) b!739664))

(declare-fun m!691045 () Bool)

(assert (=> b!739671 m!691045))

(declare-fun m!691047 () Bool)

(assert (=> b!739662 m!691047))

(declare-fun m!691049 () Bool)

(assert (=> b!739662 m!691049))

(declare-fun m!691051 () Bool)

(assert (=> b!739662 m!691051))

(declare-fun m!691053 () Bool)

(assert (=> b!739662 m!691053))

(declare-fun m!691055 () Bool)

(assert (=> b!739662 m!691055))

(assert (=> b!739662 m!691051))

(declare-fun m!691057 () Bool)

(assert (=> b!739663 m!691057))

(declare-fun m!691059 () Bool)

(assert (=> b!739660 m!691059))

(assert (=> b!739660 m!691059))

(declare-fun m!691061 () Bool)

(assert (=> b!739660 m!691061))

(assert (=> b!739670 m!691059))

(assert (=> b!739670 m!691059))

(declare-fun m!691063 () Bool)

(assert (=> b!739670 m!691063))

(declare-fun m!691065 () Bool)

(assert (=> b!739668 m!691065))

(declare-fun m!691067 () Bool)

(assert (=> b!739668 m!691067))

(declare-fun m!691069 () Bool)

(assert (=> b!739650 m!691069))

(declare-fun m!691071 () Bool)

(assert (=> b!739664 m!691071))

(assert (=> b!739655 m!691059))

(assert (=> b!739655 m!691059))

(declare-fun m!691073 () Bool)

(assert (=> b!739655 m!691073))

(declare-fun m!691075 () Bool)

(assert (=> b!739654 m!691075))

(assert (=> b!739673 m!691059))

(assert (=> b!739673 m!691059))

(declare-fun m!691077 () Bool)

(assert (=> b!739673 m!691077))

(declare-fun m!691079 () Bool)

(assert (=> b!739669 m!691079))

(assert (=> b!739651 m!691059))

(assert (=> b!739651 m!691059))

(declare-fun m!691081 () Bool)

(assert (=> b!739651 m!691081))

(assert (=> b!739672 m!691059))

(assert (=> b!739672 m!691059))

(declare-fun m!691083 () Bool)

(assert (=> b!739672 m!691083))

(assert (=> b!739658 m!691059))

(assert (=> b!739658 m!691059))

(declare-fun m!691085 () Bool)

(assert (=> b!739658 m!691085))

(assert (=> b!739658 m!691085))

(assert (=> b!739658 m!691059))

(declare-fun m!691087 () Bool)

(assert (=> b!739658 m!691087))

(declare-fun m!691089 () Bool)

(assert (=> b!739666 m!691089))

(assert (=> b!739656 m!691059))

(assert (=> b!739656 m!691059))

(assert (=> b!739656 m!691083))

(assert (=> b!739656 m!691059))

(assert (=> b!739656 m!691073))

(declare-fun m!691091 () Bool)

(assert (=> start!65268 m!691091))

(declare-fun m!691093 () Bool)

(assert (=> start!65268 m!691093))

(assert (=> b!739652 m!691059))

(assert (=> b!739652 m!691059))

(declare-fun m!691095 () Bool)

(assert (=> b!739652 m!691095))

(declare-fun m!691097 () Bool)

(assert (=> b!739661 m!691097))

(assert (=> b!739667 m!691059))

(assert (=> b!739667 m!691059))

(assert (=> b!739667 m!691077))

(check-sat (not b!739663) (not b!739668) (not b!739664) (not b!739661) (not b!739658) (not b!739673) (not start!65268) (not b!739656) (not b!739654) (not b!739670) (not b!739662) (not b!739651) (not b!739655) (not b!739652) (not b!739669) (not b!739667) (not b!739672) (not b!739666) (not b!739660) (not b!739671))
(check-sat)
