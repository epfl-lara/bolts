; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65270 () Bool)

(assert start!65270)

(declare-datatypes ((array!41396 0))(
  ( (array!41397 (arr!19808 (Array (_ BitVec 32) (_ BitVec 64))) (size!20229 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41396)

(declare-fun e!413640 () Bool)

(declare-datatypes ((SeekEntryResult!7415 0))(
  ( (MissingZero!7415 (index!32027 (_ BitVec 32))) (Found!7415 (index!32028 (_ BitVec 32))) (Intermediate!7415 (undefined!8227 Bool) (index!32029 (_ BitVec 32)) (x!63038 (_ BitVec 32))) (Undefined!7415) (MissingVacant!7415 (index!32030 (_ BitVec 32))) )
))
(declare-fun lt!328561 () SeekEntryResult!7415)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!739722 () Bool)

(declare-fun lt!328562 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41396 (_ BitVec 32)) SeekEntryResult!7415)

(assert (=> b!739722 (= e!413640 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328562 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328561)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!739723 () Bool)

(declare-fun e!413632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41396 (_ BitVec 32)) SeekEntryResult!7415)

(assert (=> b!739723 (= e!413632 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) (Found!7415 j!159)))))

(declare-fun res!497505 () Bool)

(declare-fun e!413633 () Bool)

(assert (=> start!65270 (=> (not res!497505) (not e!413633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65270 (= res!497505 (validMask!0 mask!3328))))

(assert (=> start!65270 e!413633))

(assert (=> start!65270 true))

(declare-fun array_inv!15582 (array!41396) Bool)

(assert (=> start!65270 (array_inv!15582 a!3186)))

(declare-fun b!739724 () Bool)

(declare-fun res!497500 () Bool)

(declare-fun e!413634 () Bool)

(assert (=> b!739724 (=> (not res!497500) (not e!413634))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739724 (= res!497500 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19808 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739725 () Bool)

(declare-fun res!497499 () Bool)

(assert (=> b!739725 (=> (not res!497499) (not e!413633))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739725 (= res!497499 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739726 () Bool)

(declare-fun e!413643 () Bool)

(assert (=> b!739726 (= e!413643 e!413634)))

(declare-fun res!497507 () Bool)

(assert (=> b!739726 (=> (not res!497507) (not e!413634))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739726 (= res!497507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19808 a!3186) j!159) mask!3328) (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328561))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739726 (= lt!328561 (Intermediate!7415 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739727 () Bool)

(declare-fun res!497503 () Bool)

(assert (=> b!739727 (=> (not res!497503) (not e!413633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739727 (= res!497503 (validKeyInArray!0 (select (arr!19808 a!3186) j!159)))))

(declare-fun e!413637 () Bool)

(declare-fun b!739728 () Bool)

(declare-fun lt!328559 () SeekEntryResult!7415)

(assert (=> b!739728 (= e!413637 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328559))))

(declare-fun b!739729 () Bool)

(declare-fun res!497510 () Bool)

(assert (=> b!739729 (=> (not res!497510) (not e!413643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41396 (_ BitVec 32)) Bool)

(assert (=> b!739729 (= res!497510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739730 () Bool)

(declare-fun e!413635 () Bool)

(assert (=> b!739730 (= e!413635 true)))

(declare-fun lt!328560 () (_ BitVec 64))

(declare-fun lt!328554 () SeekEntryResult!7415)

(declare-fun lt!328553 () array!41396)

(assert (=> b!739730 (= lt!328554 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328562 lt!328560 lt!328553 mask!3328))))

(declare-fun b!739731 () Bool)

(declare-fun res!497504 () Bool)

(assert (=> b!739731 (=> (not res!497504) (not e!413634))))

(assert (=> b!739731 (= res!497504 e!413632)))

(declare-fun c!81493 () Bool)

(assert (=> b!739731 (= c!81493 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739732 () Bool)

(declare-fun e!413639 () Bool)

(assert (=> b!739732 (= e!413639 e!413637)))

(declare-fun res!497502 () Bool)

(assert (=> b!739732 (=> (not res!497502) (not e!413637))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41396 (_ BitVec 32)) SeekEntryResult!7415)

(assert (=> b!739732 (= res!497502 (= (seekEntryOrOpen!0 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328559))))

(assert (=> b!739732 (= lt!328559 (Found!7415 j!159))))

(declare-fun b!739733 () Bool)

(declare-datatypes ((Unit!25278 0))(
  ( (Unit!25279) )
))
(declare-fun e!413636 () Unit!25278)

(declare-fun Unit!25280 () Unit!25278)

(assert (=> b!739733 (= e!413636 Unit!25280)))

(declare-fun lt!328549 () SeekEntryResult!7415)

(assert (=> b!739733 (= lt!328549 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19808 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328550 () SeekEntryResult!7415)

(assert (=> b!739733 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328562 resIntermediateIndex!5 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328550)))

(declare-fun b!739734 () Bool)

(assert (=> b!739734 (= e!413633 e!413643)))

(declare-fun res!497508 () Bool)

(assert (=> b!739734 (=> (not res!497508) (not e!413643))))

(declare-fun lt!328552 () SeekEntryResult!7415)

(assert (=> b!739734 (= res!497508 (or (= lt!328552 (MissingZero!7415 i!1173)) (= lt!328552 (MissingVacant!7415 i!1173))))))

(assert (=> b!739734 (= lt!328552 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739735 () Bool)

(declare-fun res!497497 () Bool)

(assert (=> b!739735 (=> (not res!497497) (not e!413643))))

(assert (=> b!739735 (= res!497497 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20229 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20229 a!3186))))))

(declare-fun b!739736 () Bool)

(assert (=> b!739736 (= e!413632 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328561))))

(declare-fun b!739737 () Bool)

(declare-fun res!497509 () Bool)

(assert (=> b!739737 (=> (not res!497509) (not e!413633))))

(assert (=> b!739737 (= res!497509 (validKeyInArray!0 k!2102))))

(declare-fun b!739738 () Bool)

(declare-fun res!497506 () Bool)

(assert (=> b!739738 (=> (not res!497506) (not e!413643))))

(declare-datatypes ((List!13863 0))(
  ( (Nil!13860) (Cons!13859 (h!14931 (_ BitVec 64)) (t!20186 List!13863)) )
))
(declare-fun arrayNoDuplicates!0 (array!41396 (_ BitVec 32) List!13863) Bool)

(assert (=> b!739738 (= res!497506 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13860))))

(declare-fun b!739739 () Bool)

(declare-fun e!413642 () Bool)

(assert (=> b!739739 (= e!413642 e!413635)))

(declare-fun res!497501 () Bool)

(assert (=> b!739739 (=> res!497501 e!413635)))

(assert (=> b!739739 (= res!497501 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328562 #b00000000000000000000000000000000) (bvsge lt!328562 (size!20229 a!3186))))))

(declare-fun lt!328551 () Unit!25278)

(assert (=> b!739739 (= lt!328551 e!413636)))

(declare-fun c!81495 () Bool)

(declare-fun lt!328558 () Bool)

(assert (=> b!739739 (= c!81495 lt!328558)))

(assert (=> b!739739 (= lt!328558 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739739 (= lt!328562 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739740 () Bool)

(declare-fun e!413638 () Bool)

(assert (=> b!739740 (= e!413634 e!413638)))

(declare-fun res!497513 () Bool)

(assert (=> b!739740 (=> (not res!497513) (not e!413638))))

(declare-fun lt!328557 () SeekEntryResult!7415)

(declare-fun lt!328555 () SeekEntryResult!7415)

(assert (=> b!739740 (= res!497513 (= lt!328557 lt!328555))))

(assert (=> b!739740 (= lt!328555 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328560 lt!328553 mask!3328))))

(assert (=> b!739740 (= lt!328557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328560 mask!3328) lt!328560 lt!328553 mask!3328))))

(assert (=> b!739740 (= lt!328560 (select (store (arr!19808 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739740 (= lt!328553 (array!41397 (store (arr!19808 a!3186) i!1173 k!2102) (size!20229 a!3186)))))

(declare-fun b!739741 () Bool)

(declare-fun Unit!25281 () Unit!25278)

(assert (=> b!739741 (= e!413636 Unit!25281)))

(assert (=> b!739741 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328562 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328561)))

(declare-fun b!739742 () Bool)

(assert (=> b!739742 (= e!413640 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328562 resIntermediateIndex!5 (select (arr!19808 a!3186) j!159) a!3186 mask!3328) lt!328550)))))

(declare-fun b!739743 () Bool)

(declare-fun res!497512 () Bool)

(assert (=> b!739743 (=> (not res!497512) (not e!413633))))

(assert (=> b!739743 (= res!497512 (and (= (size!20229 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20229 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20229 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739744 () Bool)

(declare-fun res!497511 () Bool)

(assert (=> b!739744 (=> res!497511 e!413635)))

(assert (=> b!739744 (= res!497511 e!413640)))

(declare-fun c!81494 () Bool)

(assert (=> b!739744 (= c!81494 lt!328558)))

(declare-fun b!739745 () Bool)

(assert (=> b!739745 (= e!413638 (not e!413642))))

(declare-fun res!497498 () Bool)

(assert (=> b!739745 (=> res!497498 e!413642)))

(assert (=> b!739745 (= res!497498 (or (not (is-Intermediate!7415 lt!328555)) (bvsge x!1131 (x!63038 lt!328555))))))

(assert (=> b!739745 (= lt!328550 (Found!7415 j!159))))

(assert (=> b!739745 e!413639))

(declare-fun res!497514 () Bool)

(assert (=> b!739745 (=> (not res!497514) (not e!413639))))

(assert (=> b!739745 (= res!497514 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328556 () Unit!25278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41396 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25278)

(assert (=> b!739745 (= lt!328556 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65270 res!497505) b!739743))

(assert (= (and b!739743 res!497512) b!739727))

(assert (= (and b!739727 res!497503) b!739737))

(assert (= (and b!739737 res!497509) b!739725))

(assert (= (and b!739725 res!497499) b!739734))

(assert (= (and b!739734 res!497508) b!739729))

(assert (= (and b!739729 res!497510) b!739738))

(assert (= (and b!739738 res!497506) b!739735))

(assert (= (and b!739735 res!497497) b!739726))

(assert (= (and b!739726 res!497507) b!739724))

(assert (= (and b!739724 res!497500) b!739731))

(assert (= (and b!739731 c!81493) b!739736))

(assert (= (and b!739731 (not c!81493)) b!739723))

(assert (= (and b!739731 res!497504) b!739740))

(assert (= (and b!739740 res!497513) b!739745))

(assert (= (and b!739745 res!497514) b!739732))

(assert (= (and b!739732 res!497502) b!739728))

(assert (= (and b!739745 (not res!497498)) b!739739))

(assert (= (and b!739739 c!81495) b!739741))

(assert (= (and b!739739 (not c!81495)) b!739733))

(assert (= (and b!739739 (not res!497501)) b!739744))

(assert (= (and b!739744 c!81494) b!739722))

(assert (= (and b!739744 (not c!81494)) b!739742))

(assert (= (and b!739744 (not res!497511)) b!739730))

(declare-fun m!691099 () Bool)

(assert (=> b!739722 m!691099))

(assert (=> b!739722 m!691099))

(declare-fun m!691101 () Bool)

(assert (=> b!739722 m!691101))

(assert (=> b!739742 m!691099))

(assert (=> b!739742 m!691099))

(declare-fun m!691103 () Bool)

(assert (=> b!739742 m!691103))

(declare-fun m!691105 () Bool)

(assert (=> b!739745 m!691105))

(declare-fun m!691107 () Bool)

(assert (=> b!739745 m!691107))

(declare-fun m!691109 () Bool)

(assert (=> b!739738 m!691109))

(declare-fun m!691111 () Bool)

(assert (=> b!739739 m!691111))

(assert (=> b!739728 m!691099))

(assert (=> b!739728 m!691099))

(declare-fun m!691113 () Bool)

(assert (=> b!739728 m!691113))

(assert (=> b!739726 m!691099))

(assert (=> b!739726 m!691099))

(declare-fun m!691115 () Bool)

(assert (=> b!739726 m!691115))

(assert (=> b!739726 m!691115))

(assert (=> b!739726 m!691099))

(declare-fun m!691117 () Bool)

(assert (=> b!739726 m!691117))

(declare-fun m!691119 () Bool)

(assert (=> b!739730 m!691119))

(assert (=> b!739741 m!691099))

(assert (=> b!739741 m!691099))

(assert (=> b!739741 m!691101))

(declare-fun m!691121 () Bool)

(assert (=> b!739734 m!691121))

(assert (=> b!739727 m!691099))

(assert (=> b!739727 m!691099))

(declare-fun m!691123 () Bool)

(assert (=> b!739727 m!691123))

(assert (=> b!739736 m!691099))

(assert (=> b!739736 m!691099))

(declare-fun m!691125 () Bool)

(assert (=> b!739736 m!691125))

(declare-fun m!691127 () Bool)

(assert (=> start!65270 m!691127))

(declare-fun m!691129 () Bool)

(assert (=> start!65270 m!691129))

(declare-fun m!691131 () Bool)

(assert (=> b!739737 m!691131))

(declare-fun m!691133 () Bool)

(assert (=> b!739740 m!691133))

(declare-fun m!691135 () Bool)

(assert (=> b!739740 m!691135))

(assert (=> b!739740 m!691133))

(declare-fun m!691137 () Bool)

(assert (=> b!739740 m!691137))

(declare-fun m!691139 () Bool)

(assert (=> b!739740 m!691139))

(declare-fun m!691141 () Bool)

(assert (=> b!739740 m!691141))

(declare-fun m!691143 () Bool)

(assert (=> b!739724 m!691143))

(assert (=> b!739732 m!691099))

(assert (=> b!739732 m!691099))

(declare-fun m!691145 () Bool)

(assert (=> b!739732 m!691145))

(assert (=> b!739733 m!691099))

(assert (=> b!739733 m!691099))

(declare-fun m!691147 () Bool)

(assert (=> b!739733 m!691147))

(assert (=> b!739733 m!691099))

(assert (=> b!739733 m!691103))

(declare-fun m!691149 () Bool)

(assert (=> b!739725 m!691149))

(assert (=> b!739723 m!691099))

(assert (=> b!739723 m!691099))

(assert (=> b!739723 m!691147))

(declare-fun m!691151 () Bool)

(assert (=> b!739729 m!691151))

(push 1)

