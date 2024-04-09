; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65292 () Bool)

(assert start!65292)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41418 0))(
  ( (array!41419 (arr!19819 (Array (_ BitVec 32) (_ BitVec 64))) (size!20240 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41418)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7426 0))(
  ( (MissingZero!7426 (index!32071 (_ BitVec 32))) (Found!7426 (index!32072 (_ BitVec 32))) (Intermediate!7426 (undefined!8238 Bool) (index!32073 (_ BitVec 32)) (x!63081 (_ BitVec 32))) (Undefined!7426) (MissingVacant!7426 (index!32074 (_ BitVec 32))) )
))
(declare-fun lt!329012 () SeekEntryResult!7426)

(declare-fun e!414031 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!740537 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41418 (_ BitVec 32)) SeekEntryResult!7426)

(assert (=> b!740537 (= e!414031 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329012))))

(declare-fun b!740538 () Bool)

(declare-datatypes ((Unit!25322 0))(
  ( (Unit!25323) )
))
(declare-fun e!414028 () Unit!25322)

(declare-fun Unit!25324 () Unit!25322)

(assert (=> b!740538 (= e!414028 Unit!25324)))

(declare-fun lt!329014 () (_ BitVec 32))

(declare-fun lt!329016 () SeekEntryResult!7426)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41418 (_ BitVec 32)) SeekEntryResult!7426)

(assert (=> b!740538 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329014 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329016)))

(declare-fun b!740539 () Bool)

(declare-fun e!414038 () Bool)

(declare-fun e!414033 () Bool)

(assert (=> b!740539 (= e!414038 (not e!414033))))

(declare-fun res!498121 () Bool)

(assert (=> b!740539 (=> res!498121 e!414033)))

(declare-fun lt!329015 () SeekEntryResult!7426)

(get-info :version)

(assert (=> b!740539 (= res!498121 (or (not ((_ is Intermediate!7426) lt!329015)) (bvsge x!1131 (x!63081 lt!329015))))))

(declare-fun lt!329011 () SeekEntryResult!7426)

(assert (=> b!740539 (= lt!329011 (Found!7426 j!159))))

(declare-fun e!414034 () Bool)

(assert (=> b!740539 e!414034))

(declare-fun res!498132 () Bool)

(assert (=> b!740539 (=> (not res!498132) (not e!414034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41418 (_ BitVec 32)) Bool)

(assert (=> b!740539 (= res!498132 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!329018 () Unit!25322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25322)

(assert (=> b!740539 (= lt!329018 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740540 () Bool)

(declare-fun res!498125 () Bool)

(declare-fun e!414029 () Bool)

(assert (=> b!740540 (=> (not res!498125) (not e!414029))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!740540 (= res!498125 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20240 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20240 a!3186))))))

(declare-fun res!498127 () Bool)

(declare-fun e!414039 () Bool)

(assert (=> start!65292 (=> (not res!498127) (not e!414039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65292 (= res!498127 (validMask!0 mask!3328))))

(assert (=> start!65292 e!414039))

(assert (=> start!65292 true))

(declare-fun array_inv!15593 (array!41418) Bool)

(assert (=> start!65292 (array_inv!15593 a!3186)))

(declare-fun b!740541 () Bool)

(declare-fun res!498128 () Bool)

(assert (=> b!740541 (=> (not res!498128) (not e!414039))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740541 (= res!498128 (validKeyInArray!0 k0!2102))))

(declare-fun b!740542 () Bool)

(declare-fun e!414036 () Bool)

(assert (=> b!740542 (= e!414036 true)))

(declare-fun lt!329020 () array!41418)

(declare-fun lt!329019 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41418 (_ BitVec 32)) SeekEntryResult!7426)

(assert (=> b!740542 (= (seekEntryOrOpen!0 lt!329019 lt!329020 mask!3328) lt!329011)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!329023 () Unit!25322)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41418 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25322)

(assert (=> b!740542 (= lt!329023 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!329014 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740543 () Bool)

(declare-fun res!498122 () Bool)

(declare-fun e!414037 () Bool)

(assert (=> b!740543 (=> (not res!498122) (not e!414037))))

(assert (=> b!740543 (= res!498122 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19819 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740544 () Bool)

(declare-fun res!498115 () Bool)

(assert (=> b!740544 (=> (not res!498115) (not e!414029))))

(assert (=> b!740544 (= res!498115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740545 () Bool)

(declare-fun res!498117 () Bool)

(assert (=> b!740545 (=> (not res!498117) (not e!414039))))

(assert (=> b!740545 (= res!498117 (and (= (size!20240 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20240 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20240 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740546 () Bool)

(declare-fun e!414032 () Bool)

(assert (=> b!740546 (= e!414032 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) (Found!7426 j!159)))))

(declare-fun b!740547 () Bool)

(assert (=> b!740547 (= e!414029 e!414037)))

(declare-fun res!498123 () Bool)

(assert (=> b!740547 (=> (not res!498123) (not e!414037))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740547 (= res!498123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19819 a!3186) j!159) mask!3328) (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329016))))

(assert (=> b!740547 (= lt!329016 (Intermediate!7426 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740548 () Bool)

(declare-fun res!498120 () Bool)

(assert (=> b!740548 (=> res!498120 e!414036)))

(declare-fun e!414035 () Bool)

(assert (=> b!740548 (= res!498120 e!414035)))

(declare-fun c!81593 () Bool)

(declare-fun lt!329024 () Bool)

(assert (=> b!740548 (= c!81593 lt!329024)))

(declare-fun b!740549 () Bool)

(declare-fun res!498126 () Bool)

(assert (=> b!740549 (=> (not res!498126) (not e!414029))))

(declare-datatypes ((List!13874 0))(
  ( (Nil!13871) (Cons!13870 (h!14942 (_ BitVec 64)) (t!20197 List!13874)) )
))
(declare-fun arrayNoDuplicates!0 (array!41418 (_ BitVec 32) List!13874) Bool)

(assert (=> b!740549 (= res!498126 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13871))))

(declare-fun b!740550 () Bool)

(declare-fun res!498116 () Bool)

(assert (=> b!740550 (=> (not res!498116) (not e!414037))))

(assert (=> b!740550 (= res!498116 e!414032)))

(declare-fun c!81592 () Bool)

(assert (=> b!740550 (= c!81592 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740551 () Bool)

(assert (=> b!740551 (= e!414033 e!414036)))

(declare-fun res!498129 () Bool)

(assert (=> b!740551 (=> res!498129 e!414036)))

(assert (=> b!740551 (= res!498129 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!329014 #b00000000000000000000000000000000) (bvsge lt!329014 (size!20240 a!3186))))))

(declare-fun lt!329013 () Unit!25322)

(assert (=> b!740551 (= lt!329013 e!414028)))

(declare-fun c!81594 () Bool)

(assert (=> b!740551 (= c!81594 lt!329024)))

(assert (=> b!740551 (= lt!329024 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740551 (= lt!329014 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740552 () Bool)

(assert (=> b!740552 (= e!414035 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329014 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329016)))))

(declare-fun b!740553 () Bool)

(declare-fun res!498131 () Bool)

(assert (=> b!740553 (=> res!498131 e!414036)))

(declare-fun lt!329021 () SeekEntryResult!7426)

(assert (=> b!740553 (= res!498131 (not (= lt!329021 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329014 lt!329019 lt!329020 mask!3328))))))

(declare-fun b!740554 () Bool)

(declare-fun Unit!25325 () Unit!25322)

(assert (=> b!740554 (= e!414028 Unit!25325)))

(declare-fun lt!329017 () SeekEntryResult!7426)

(assert (=> b!740554 (= lt!329017 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19819 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740554 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329014 resIntermediateIndex!5 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329011)))

(declare-fun b!740555 () Bool)

(assert (=> b!740555 (= e!414037 e!414038)))

(declare-fun res!498119 () Bool)

(assert (=> b!740555 (=> (not res!498119) (not e!414038))))

(assert (=> b!740555 (= res!498119 (= lt!329021 lt!329015))))

(assert (=> b!740555 (= lt!329015 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329019 lt!329020 mask!3328))))

(assert (=> b!740555 (= lt!329021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329019 mask!3328) lt!329019 lt!329020 mask!3328))))

(assert (=> b!740555 (= lt!329019 (select (store (arr!19819 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!740555 (= lt!329020 (array!41419 (store (arr!19819 a!3186) i!1173 k0!2102) (size!20240 a!3186)))))

(declare-fun b!740556 () Bool)

(declare-fun res!498130 () Bool)

(assert (=> b!740556 (=> (not res!498130) (not e!414039))))

(assert (=> b!740556 (= res!498130 (validKeyInArray!0 (select (arr!19819 a!3186) j!159)))))

(declare-fun b!740557 () Bool)

(assert (=> b!740557 (= e!414035 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329014 resIntermediateIndex!5 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329011)))))

(declare-fun b!740558 () Bool)

(assert (=> b!740558 (= e!414032 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329016))))

(declare-fun b!740559 () Bool)

(assert (=> b!740559 (= e!414034 e!414031)))

(declare-fun res!498118 () Bool)

(assert (=> b!740559 (=> (not res!498118) (not e!414031))))

(assert (=> b!740559 (= res!498118 (= (seekEntryOrOpen!0 (select (arr!19819 a!3186) j!159) a!3186 mask!3328) lt!329012))))

(assert (=> b!740559 (= lt!329012 (Found!7426 j!159))))

(declare-fun b!740560 () Bool)

(declare-fun res!498124 () Bool)

(assert (=> b!740560 (=> (not res!498124) (not e!414039))))

(declare-fun arrayContainsKey!0 (array!41418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740560 (= res!498124 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740561 () Bool)

(assert (=> b!740561 (= e!414039 e!414029)))

(declare-fun res!498114 () Bool)

(assert (=> b!740561 (=> (not res!498114) (not e!414029))))

(declare-fun lt!329022 () SeekEntryResult!7426)

(assert (=> b!740561 (= res!498114 (or (= lt!329022 (MissingZero!7426 i!1173)) (= lt!329022 (MissingVacant!7426 i!1173))))))

(assert (=> b!740561 (= lt!329022 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65292 res!498127) b!740545))

(assert (= (and b!740545 res!498117) b!740556))

(assert (= (and b!740556 res!498130) b!740541))

(assert (= (and b!740541 res!498128) b!740560))

(assert (= (and b!740560 res!498124) b!740561))

(assert (= (and b!740561 res!498114) b!740544))

(assert (= (and b!740544 res!498115) b!740549))

(assert (= (and b!740549 res!498126) b!740540))

(assert (= (and b!740540 res!498125) b!740547))

(assert (= (and b!740547 res!498123) b!740543))

(assert (= (and b!740543 res!498122) b!740550))

(assert (= (and b!740550 c!81592) b!740558))

(assert (= (and b!740550 (not c!81592)) b!740546))

(assert (= (and b!740550 res!498116) b!740555))

(assert (= (and b!740555 res!498119) b!740539))

(assert (= (and b!740539 res!498132) b!740559))

(assert (= (and b!740559 res!498118) b!740537))

(assert (= (and b!740539 (not res!498121)) b!740551))

(assert (= (and b!740551 c!81594) b!740538))

(assert (= (and b!740551 (not c!81594)) b!740554))

(assert (= (and b!740551 (not res!498129)) b!740548))

(assert (= (and b!740548 c!81593) b!740552))

(assert (= (and b!740548 (not c!81593)) b!740557))

(assert (= (and b!740548 (not res!498120)) b!740553))

(assert (= (and b!740553 (not res!498131)) b!740542))

(declare-fun m!691721 () Bool)

(assert (=> b!740557 m!691721))

(assert (=> b!740557 m!691721))

(declare-fun m!691723 () Bool)

(assert (=> b!740557 m!691723))

(declare-fun m!691725 () Bool)

(assert (=> b!740553 m!691725))

(declare-fun m!691727 () Bool)

(assert (=> b!740543 m!691727))

(declare-fun m!691729 () Bool)

(assert (=> b!740544 m!691729))

(assert (=> b!740547 m!691721))

(assert (=> b!740547 m!691721))

(declare-fun m!691731 () Bool)

(assert (=> b!740547 m!691731))

(assert (=> b!740547 m!691731))

(assert (=> b!740547 m!691721))

(declare-fun m!691733 () Bool)

(assert (=> b!740547 m!691733))

(assert (=> b!740537 m!691721))

(assert (=> b!740537 m!691721))

(declare-fun m!691735 () Bool)

(assert (=> b!740537 m!691735))

(declare-fun m!691737 () Bool)

(assert (=> start!65292 m!691737))

(declare-fun m!691739 () Bool)

(assert (=> start!65292 m!691739))

(assert (=> b!740558 m!691721))

(assert (=> b!740558 m!691721))

(declare-fun m!691741 () Bool)

(assert (=> b!740558 m!691741))

(declare-fun m!691743 () Bool)

(assert (=> b!740541 m!691743))

(assert (=> b!740554 m!691721))

(assert (=> b!740554 m!691721))

(declare-fun m!691745 () Bool)

(assert (=> b!740554 m!691745))

(assert (=> b!740554 m!691721))

(assert (=> b!740554 m!691723))

(assert (=> b!740552 m!691721))

(assert (=> b!740552 m!691721))

(declare-fun m!691747 () Bool)

(assert (=> b!740552 m!691747))

(assert (=> b!740546 m!691721))

(assert (=> b!740546 m!691721))

(assert (=> b!740546 m!691745))

(assert (=> b!740559 m!691721))

(assert (=> b!740559 m!691721))

(declare-fun m!691749 () Bool)

(assert (=> b!740559 m!691749))

(assert (=> b!740556 m!691721))

(assert (=> b!740556 m!691721))

(declare-fun m!691751 () Bool)

(assert (=> b!740556 m!691751))

(assert (=> b!740538 m!691721))

(assert (=> b!740538 m!691721))

(assert (=> b!740538 m!691747))

(declare-fun m!691753 () Bool)

(assert (=> b!740551 m!691753))

(declare-fun m!691755 () Bool)

(assert (=> b!740539 m!691755))

(declare-fun m!691757 () Bool)

(assert (=> b!740539 m!691757))

(declare-fun m!691759 () Bool)

(assert (=> b!740549 m!691759))

(declare-fun m!691761 () Bool)

(assert (=> b!740542 m!691761))

(declare-fun m!691763 () Bool)

(assert (=> b!740542 m!691763))

(declare-fun m!691765 () Bool)

(assert (=> b!740560 m!691765))

(declare-fun m!691767 () Bool)

(assert (=> b!740555 m!691767))

(declare-fun m!691769 () Bool)

(assert (=> b!740555 m!691769))

(declare-fun m!691771 () Bool)

(assert (=> b!740555 m!691771))

(declare-fun m!691773 () Bool)

(assert (=> b!740555 m!691773))

(declare-fun m!691775 () Bool)

(assert (=> b!740555 m!691775))

(assert (=> b!740555 m!691767))

(declare-fun m!691777 () Bool)

(assert (=> b!740561 m!691777))

(check-sat (not b!740539) (not b!740542) (not b!740559) (not b!740554) (not b!740546) (not b!740544) (not b!740558) (not b!740538) (not b!740551) (not b!740549) (not b!740537) (not start!65292) (not b!740541) (not b!740555) (not b!740556) (not b!740557) (not b!740553) (not b!740561) (not b!740547) (not b!740560) (not b!740552))
(check-sat)
