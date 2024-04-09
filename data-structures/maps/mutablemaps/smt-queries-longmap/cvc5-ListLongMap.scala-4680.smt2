; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65158 () Bool)

(assert start!65158)

(declare-fun b!735690 () Bool)

(declare-fun res!494486 () Bool)

(declare-fun e!411619 () Bool)

(assert (=> b!735690 (=> (not res!494486) (not e!411619))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735690 (= res!494486 (validKeyInArray!0 k!2102))))

(declare-fun b!735691 () Bool)

(declare-fun res!494485 () Bool)

(assert (=> b!735691 (=> (not res!494485) (not e!411619))))

(declare-datatypes ((array!41284 0))(
  ( (array!41285 (arr!19752 (Array (_ BitVec 32) (_ BitVec 64))) (size!20173 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41284)

(declare-fun arrayContainsKey!0 (array!41284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735691 (= res!494485 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735692 () Bool)

(declare-fun res!494479 () Bool)

(declare-fun e!411623 () Bool)

(assert (=> b!735692 (=> res!494479 e!411623)))

(declare-fun e!411622 () Bool)

(assert (=> b!735692 (= res!494479 e!411622)))

(declare-fun c!80991 () Bool)

(declare-fun lt!326197 () Bool)

(assert (=> b!735692 (= c!80991 lt!326197)))

(declare-fun b!735693 () Bool)

(declare-fun res!494489 () Bool)

(declare-fun e!411621 () Bool)

(assert (=> b!735693 (=> (not res!494489) (not e!411621))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41284 (_ BitVec 32)) Bool)

(assert (=> b!735693 (= res!494489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!411618 () Bool)

(declare-datatypes ((SeekEntryResult!7359 0))(
  ( (MissingZero!7359 (index!31803 (_ BitVec 32))) (Found!7359 (index!31804 (_ BitVec 32))) (Intermediate!7359 (undefined!8171 Bool) (index!31805 (_ BitVec 32)) (x!62838 (_ BitVec 32))) (Undefined!7359) (MissingVacant!7359 (index!31806 (_ BitVec 32))) )
))
(declare-fun lt!326200 () SeekEntryResult!7359)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!735694 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41284 (_ BitVec 32)) SeekEntryResult!7359)

(assert (=> b!735694 (= e!411618 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326200))))

(declare-fun b!735695 () Bool)

(declare-fun res!494475 () Bool)

(assert (=> b!735695 (=> (not res!494475) (not e!411621))))

(declare-datatypes ((List!13807 0))(
  ( (Nil!13804) (Cons!13803 (h!14875 (_ BitVec 64)) (t!20130 List!13807)) )
))
(declare-fun arrayNoDuplicates!0 (array!41284 (_ BitVec 32) List!13807) Bool)

(assert (=> b!735695 (= res!494475 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13804))))

(declare-fun b!735696 () Bool)

(declare-fun e!411624 () Bool)

(declare-fun e!411627 () Bool)

(assert (=> b!735696 (= e!411624 e!411627)))

(declare-fun res!494473 () Bool)

(assert (=> b!735696 (=> (not res!494473) (not e!411627))))

(declare-fun lt!326198 () SeekEntryResult!7359)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41284 (_ BitVec 32)) SeekEntryResult!7359)

(assert (=> b!735696 (= res!494473 (= (seekEntryOrOpen!0 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326198))))

(assert (=> b!735696 (= lt!326198 (Found!7359 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!326210 () SeekEntryResult!7359)

(declare-fun lt!326208 () (_ BitVec 32))

(declare-fun b!735697 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41284 (_ BitVec 32)) SeekEntryResult!7359)

(assert (=> b!735697 (= e!411622 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326208 resIntermediateIndex!5 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326210)))))

(declare-fun b!735698 () Bool)

(declare-fun res!494481 () Bool)

(assert (=> b!735698 (=> (not res!494481) (not e!411619))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735698 (= res!494481 (and (= (size!20173 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20173 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20173 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735699 () Bool)

(declare-fun res!494488 () Bool)

(assert (=> b!735699 (=> (not res!494488) (not e!411621))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735699 (= res!494488 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20173 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20173 a!3186))))))

(declare-fun b!735700 () Bool)

(declare-fun res!494480 () Bool)

(assert (=> b!735700 (=> (not res!494480) (not e!411619))))

(assert (=> b!735700 (= res!494480 (validKeyInArray!0 (select (arr!19752 a!3186) j!159)))))

(declare-fun b!735701 () Bool)

(declare-fun res!494474 () Bool)

(declare-fun e!411626 () Bool)

(assert (=> b!735701 (=> (not res!494474) (not e!411626))))

(assert (=> b!735701 (= res!494474 e!411618)))

(declare-fun c!80990 () Bool)

(assert (=> b!735701 (= c!80990 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735702 () Bool)

(assert (=> b!735702 (= e!411627 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326198))))

(declare-fun b!735703 () Bool)

(declare-fun e!411620 () Bool)

(assert (=> b!735703 (= e!411626 e!411620)))

(declare-fun res!494478 () Bool)

(assert (=> b!735703 (=> (not res!494478) (not e!411620))))

(declare-fun lt!326206 () SeekEntryResult!7359)

(declare-fun lt!326202 () SeekEntryResult!7359)

(assert (=> b!735703 (= res!494478 (= lt!326206 lt!326202))))

(declare-fun lt!326201 () (_ BitVec 64))

(declare-fun lt!326199 () array!41284)

(assert (=> b!735703 (= lt!326202 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326201 lt!326199 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735703 (= lt!326206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326201 mask!3328) lt!326201 lt!326199 mask!3328))))

(assert (=> b!735703 (= lt!326201 (select (store (arr!19752 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735703 (= lt!326199 (array!41285 (store (arr!19752 a!3186) i!1173 k!2102) (size!20173 a!3186)))))

(declare-fun b!735704 () Bool)

(assert (=> b!735704 (= e!411623 true)))

(declare-fun lt!326207 () SeekEntryResult!7359)

(assert (=> b!735704 (= lt!326207 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326208 lt!326201 lt!326199 mask!3328))))

(declare-fun b!735705 () Bool)

(assert (=> b!735705 (= e!411622 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326208 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326200)))))

(declare-fun b!735706 () Bool)

(assert (=> b!735706 (= e!411618 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) (Found!7359 j!159)))))

(declare-fun b!735707 () Bool)

(declare-datatypes ((Unit!25054 0))(
  ( (Unit!25055) )
))
(declare-fun e!411617 () Unit!25054)

(declare-fun Unit!25056 () Unit!25054)

(assert (=> b!735707 (= e!411617 Unit!25056)))

(assert (=> b!735707 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326208 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326200)))

(declare-fun b!735708 () Bool)

(declare-fun Unit!25057 () Unit!25054)

(assert (=> b!735708 (= e!411617 Unit!25057)))

(declare-fun lt!326205 () SeekEntryResult!7359)

(assert (=> b!735708 (= lt!326205 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19752 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735708 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326208 resIntermediateIndex!5 (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326210)))

(declare-fun b!735709 () Bool)

(assert (=> b!735709 (= e!411621 e!411626)))

(declare-fun res!494490 () Bool)

(assert (=> b!735709 (=> (not res!494490) (not e!411626))))

(assert (=> b!735709 (= res!494490 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19752 a!3186) j!159) mask!3328) (select (arr!19752 a!3186) j!159) a!3186 mask!3328) lt!326200))))

(assert (=> b!735709 (= lt!326200 (Intermediate!7359 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735710 () Bool)

(declare-fun e!411616 () Bool)

(assert (=> b!735710 (= e!411616 e!411623)))

(declare-fun res!494487 () Bool)

(assert (=> b!735710 (=> res!494487 e!411623)))

(assert (=> b!735710 (= res!494487 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326208 #b00000000000000000000000000000000) (bvsge lt!326208 (size!20173 a!3186))))))

(declare-fun lt!326204 () Unit!25054)

(assert (=> b!735710 (= lt!326204 e!411617)))

(declare-fun c!80989 () Bool)

(assert (=> b!735710 (= c!80989 lt!326197)))

(assert (=> b!735710 (= lt!326197 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735710 (= lt!326208 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!494476 () Bool)

(assert (=> start!65158 (=> (not res!494476) (not e!411619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65158 (= res!494476 (validMask!0 mask!3328))))

(assert (=> start!65158 e!411619))

(assert (=> start!65158 true))

(declare-fun array_inv!15526 (array!41284) Bool)

(assert (=> start!65158 (array_inv!15526 a!3186)))

(declare-fun b!735711 () Bool)

(assert (=> b!735711 (= e!411620 (not e!411616))))

(declare-fun res!494484 () Bool)

(assert (=> b!735711 (=> res!494484 e!411616)))

(assert (=> b!735711 (= res!494484 (or (not (is-Intermediate!7359 lt!326202)) (bvsge x!1131 (x!62838 lt!326202))))))

(assert (=> b!735711 (= lt!326210 (Found!7359 j!159))))

(assert (=> b!735711 e!411624))

(declare-fun res!494482 () Bool)

(assert (=> b!735711 (=> (not res!494482) (not e!411624))))

(assert (=> b!735711 (= res!494482 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326203 () Unit!25054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25054)

(assert (=> b!735711 (= lt!326203 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735712 () Bool)

(declare-fun res!494483 () Bool)

(assert (=> b!735712 (=> (not res!494483) (not e!411626))))

(assert (=> b!735712 (= res!494483 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19752 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735713 () Bool)

(assert (=> b!735713 (= e!411619 e!411621)))

(declare-fun res!494477 () Bool)

(assert (=> b!735713 (=> (not res!494477) (not e!411621))))

(declare-fun lt!326209 () SeekEntryResult!7359)

(assert (=> b!735713 (= res!494477 (or (= lt!326209 (MissingZero!7359 i!1173)) (= lt!326209 (MissingVacant!7359 i!1173))))))

(assert (=> b!735713 (= lt!326209 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65158 res!494476) b!735698))

(assert (= (and b!735698 res!494481) b!735700))

(assert (= (and b!735700 res!494480) b!735690))

(assert (= (and b!735690 res!494486) b!735691))

(assert (= (and b!735691 res!494485) b!735713))

(assert (= (and b!735713 res!494477) b!735693))

(assert (= (and b!735693 res!494489) b!735695))

(assert (= (and b!735695 res!494475) b!735699))

(assert (= (and b!735699 res!494488) b!735709))

(assert (= (and b!735709 res!494490) b!735712))

(assert (= (and b!735712 res!494483) b!735701))

(assert (= (and b!735701 c!80990) b!735694))

(assert (= (and b!735701 (not c!80990)) b!735706))

(assert (= (and b!735701 res!494474) b!735703))

(assert (= (and b!735703 res!494478) b!735711))

(assert (= (and b!735711 res!494482) b!735696))

(assert (= (and b!735696 res!494473) b!735702))

(assert (= (and b!735711 (not res!494484)) b!735710))

(assert (= (and b!735710 c!80989) b!735707))

(assert (= (and b!735710 (not c!80989)) b!735708))

(assert (= (and b!735710 (not res!494487)) b!735692))

(assert (= (and b!735692 c!80991) b!735705))

(assert (= (and b!735692 (not c!80991)) b!735697))

(assert (= (and b!735692 (not res!494479)) b!735704))

(declare-fun m!688075 () Bool)

(assert (=> b!735704 m!688075))

(declare-fun m!688077 () Bool)

(assert (=> b!735709 m!688077))

(assert (=> b!735709 m!688077))

(declare-fun m!688079 () Bool)

(assert (=> b!735709 m!688079))

(assert (=> b!735709 m!688079))

(assert (=> b!735709 m!688077))

(declare-fun m!688081 () Bool)

(assert (=> b!735709 m!688081))

(assert (=> b!735702 m!688077))

(assert (=> b!735702 m!688077))

(declare-fun m!688083 () Bool)

(assert (=> b!735702 m!688083))

(declare-fun m!688085 () Bool)

(assert (=> b!735691 m!688085))

(declare-fun m!688087 () Bool)

(assert (=> b!735703 m!688087))

(declare-fun m!688089 () Bool)

(assert (=> b!735703 m!688089))

(declare-fun m!688091 () Bool)

(assert (=> b!735703 m!688091))

(declare-fun m!688093 () Bool)

(assert (=> b!735703 m!688093))

(declare-fun m!688095 () Bool)

(assert (=> b!735703 m!688095))

(assert (=> b!735703 m!688091))

(declare-fun m!688097 () Bool)

(assert (=> b!735695 m!688097))

(assert (=> b!735700 m!688077))

(assert (=> b!735700 m!688077))

(declare-fun m!688099 () Bool)

(assert (=> b!735700 m!688099))

(assert (=> b!735705 m!688077))

(assert (=> b!735705 m!688077))

(declare-fun m!688101 () Bool)

(assert (=> b!735705 m!688101))

(declare-fun m!688103 () Bool)

(assert (=> b!735713 m!688103))

(declare-fun m!688105 () Bool)

(assert (=> b!735693 m!688105))

(declare-fun m!688107 () Bool)

(assert (=> b!735711 m!688107))

(declare-fun m!688109 () Bool)

(assert (=> b!735711 m!688109))

(assert (=> b!735707 m!688077))

(assert (=> b!735707 m!688077))

(assert (=> b!735707 m!688101))

(declare-fun m!688111 () Bool)

(assert (=> b!735710 m!688111))

(declare-fun m!688113 () Bool)

(assert (=> start!65158 m!688113))

(declare-fun m!688115 () Bool)

(assert (=> start!65158 m!688115))

(declare-fun m!688117 () Bool)

(assert (=> b!735690 m!688117))

(assert (=> b!735706 m!688077))

(assert (=> b!735706 m!688077))

(declare-fun m!688119 () Bool)

(assert (=> b!735706 m!688119))

(assert (=> b!735694 m!688077))

(assert (=> b!735694 m!688077))

(declare-fun m!688121 () Bool)

(assert (=> b!735694 m!688121))

(assert (=> b!735696 m!688077))

(assert (=> b!735696 m!688077))

(declare-fun m!688123 () Bool)

(assert (=> b!735696 m!688123))

(assert (=> b!735697 m!688077))

(assert (=> b!735697 m!688077))

(declare-fun m!688125 () Bool)

(assert (=> b!735697 m!688125))

(assert (=> b!735708 m!688077))

(assert (=> b!735708 m!688077))

(assert (=> b!735708 m!688119))

(assert (=> b!735708 m!688077))

(assert (=> b!735708 m!688125))

(declare-fun m!688127 () Bool)

(assert (=> b!735712 m!688127))

(push 1)

