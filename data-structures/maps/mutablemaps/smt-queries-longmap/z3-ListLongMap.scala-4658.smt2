; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64740 () Bool)

(assert start!64740)

(declare-fun b!730122 () Bool)

(declare-fun res!490576 () Bool)

(declare-fun e!408623 () Bool)

(assert (=> b!730122 (=> (not res!490576) (not e!408623))))

(declare-datatypes ((array!41142 0))(
  ( (array!41143 (arr!19687 (Array (_ BitVec 32) (_ BitVec 64))) (size!20108 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41142)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730122 (= res!490576 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730124 () Bool)

(declare-fun res!490587 () Bool)

(declare-fun e!408630 () Bool)

(assert (=> b!730124 (=> (not res!490587) (not e!408630))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41142 (_ BitVec 32)) Bool)

(assert (=> b!730124 (= res!490587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730125 () Bool)

(declare-fun e!408628 () Bool)

(assert (=> b!730125 (= e!408630 e!408628)))

(declare-fun res!490590 () Bool)

(assert (=> b!730125 (=> (not res!490590) (not e!408628))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7294 0))(
  ( (MissingZero!7294 (index!31543 (_ BitVec 32))) (Found!7294 (index!31544 (_ BitVec 32))) (Intermediate!7294 (undefined!8106 Bool) (index!31545 (_ BitVec 32)) (x!62549 (_ BitVec 32))) (Undefined!7294) (MissingVacant!7294 (index!31546 (_ BitVec 32))) )
))
(declare-fun lt!323537 () SeekEntryResult!7294)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41142 (_ BitVec 32)) SeekEntryResult!7294)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730125 (= res!490590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19687 a!3186) j!159) mask!3328) (select (arr!19687 a!3186) j!159) a!3186 mask!3328) lt!323537))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730125 (= lt!323537 (Intermediate!7294 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730126 () Bool)

(declare-fun e!408625 () Bool)

(declare-fun e!408629 () Bool)

(assert (=> b!730126 (= e!408625 (not e!408629))))

(declare-fun res!490588 () Bool)

(assert (=> b!730126 (=> res!490588 e!408629)))

(declare-fun lt!323536 () SeekEntryResult!7294)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!730126 (= res!490588 (or (not ((_ is Intermediate!7294) lt!323536)) (bvsge x!1131 (x!62549 lt!323536))))))

(declare-fun e!408627 () Bool)

(assert (=> b!730126 e!408627))

(declare-fun res!490583 () Bool)

(assert (=> b!730126 (=> (not res!490583) (not e!408627))))

(assert (=> b!730126 (= res!490583 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24906 0))(
  ( (Unit!24907) )
))
(declare-fun lt!323531 () Unit!24906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24906)

(assert (=> b!730126 (= lt!323531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!408622 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!730127 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41142 (_ BitVec 32)) SeekEntryResult!7294)

(assert (=> b!730127 (= e!408622 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19687 a!3186) j!159) a!3186 mask!3328) (Found!7294 j!159)))))

(declare-fun b!730128 () Bool)

(declare-fun res!490585 () Bool)

(assert (=> b!730128 (=> (not res!490585) (not e!408630))))

(assert (=> b!730128 (= res!490585 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20108 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20108 a!3186))))))

(declare-fun b!730129 () Bool)

(declare-fun res!490579 () Bool)

(assert (=> b!730129 (=> (not res!490579) (not e!408628))))

(assert (=> b!730129 (= res!490579 e!408622)))

(declare-fun c!80148 () Bool)

(assert (=> b!730129 (= c!80148 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730130 () Bool)

(assert (=> b!730130 (= e!408623 e!408630)))

(declare-fun res!490589 () Bool)

(assert (=> b!730130 (=> (not res!490589) (not e!408630))))

(declare-fun lt!323534 () SeekEntryResult!7294)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730130 (= res!490589 (or (= lt!323534 (MissingZero!7294 i!1173)) (= lt!323534 (MissingVacant!7294 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41142 (_ BitVec 32)) SeekEntryResult!7294)

(assert (=> b!730130 (= lt!323534 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!730131 () Bool)

(assert (=> b!730131 (= e!408628 e!408625)))

(declare-fun res!490582 () Bool)

(assert (=> b!730131 (=> (not res!490582) (not e!408625))))

(declare-fun lt!323535 () SeekEntryResult!7294)

(assert (=> b!730131 (= res!490582 (= lt!323535 lt!323536))))

(declare-fun lt!323530 () array!41142)

(declare-fun lt!323529 () (_ BitVec 64))

(assert (=> b!730131 (= lt!323536 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323529 lt!323530 mask!3328))))

(assert (=> b!730131 (= lt!323535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323529 mask!3328) lt!323529 lt!323530 mask!3328))))

(assert (=> b!730131 (= lt!323529 (select (store (arr!19687 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730131 (= lt!323530 (array!41143 (store (arr!19687 a!3186) i!1173 k0!2102) (size!20108 a!3186)))))

(declare-fun b!730132 () Bool)

(declare-fun res!490577 () Bool)

(assert (=> b!730132 (=> (not res!490577) (not e!408630))))

(declare-datatypes ((List!13742 0))(
  ( (Nil!13739) (Cons!13738 (h!14798 (_ BitVec 64)) (t!20065 List!13742)) )
))
(declare-fun arrayNoDuplicates!0 (array!41142 (_ BitVec 32) List!13742) Bool)

(assert (=> b!730132 (= res!490577 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13739))))

(declare-fun b!730133 () Bool)

(assert (=> b!730133 (= e!408629 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323533 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730133 (= lt!323533 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730134 () Bool)

(declare-fun e!408626 () Bool)

(assert (=> b!730134 (= e!408627 e!408626)))

(declare-fun res!490580 () Bool)

(assert (=> b!730134 (=> (not res!490580) (not e!408626))))

(declare-fun lt!323532 () SeekEntryResult!7294)

(assert (=> b!730134 (= res!490580 (= (seekEntryOrOpen!0 (select (arr!19687 a!3186) j!159) a!3186 mask!3328) lt!323532))))

(assert (=> b!730134 (= lt!323532 (Found!7294 j!159))))

(declare-fun b!730123 () Bool)

(declare-fun res!490578 () Bool)

(assert (=> b!730123 (=> (not res!490578) (not e!408628))))

(assert (=> b!730123 (= res!490578 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19687 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!490581 () Bool)

(assert (=> start!64740 (=> (not res!490581) (not e!408623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64740 (= res!490581 (validMask!0 mask!3328))))

(assert (=> start!64740 e!408623))

(assert (=> start!64740 true))

(declare-fun array_inv!15461 (array!41142) Bool)

(assert (=> start!64740 (array_inv!15461 a!3186)))

(declare-fun b!730135 () Bool)

(assert (=> b!730135 (= e!408626 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19687 a!3186) j!159) a!3186 mask!3328) lt!323532))))

(declare-fun b!730136 () Bool)

(declare-fun res!490586 () Bool)

(assert (=> b!730136 (=> (not res!490586) (not e!408623))))

(assert (=> b!730136 (= res!490586 (and (= (size!20108 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20108 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20108 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730137 () Bool)

(assert (=> b!730137 (= e!408622 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19687 a!3186) j!159) a!3186 mask!3328) lt!323537))))

(declare-fun b!730138 () Bool)

(declare-fun res!490575 () Bool)

(assert (=> b!730138 (=> (not res!490575) (not e!408623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730138 (= res!490575 (validKeyInArray!0 k0!2102))))

(declare-fun b!730139 () Bool)

(declare-fun res!490584 () Bool)

(assert (=> b!730139 (=> (not res!490584) (not e!408623))))

(assert (=> b!730139 (= res!490584 (validKeyInArray!0 (select (arr!19687 a!3186) j!159)))))

(assert (= (and start!64740 res!490581) b!730136))

(assert (= (and b!730136 res!490586) b!730139))

(assert (= (and b!730139 res!490584) b!730138))

(assert (= (and b!730138 res!490575) b!730122))

(assert (= (and b!730122 res!490576) b!730130))

(assert (= (and b!730130 res!490589) b!730124))

(assert (= (and b!730124 res!490587) b!730132))

(assert (= (and b!730132 res!490577) b!730128))

(assert (= (and b!730128 res!490585) b!730125))

(assert (= (and b!730125 res!490590) b!730123))

(assert (= (and b!730123 res!490578) b!730129))

(assert (= (and b!730129 c!80148) b!730137))

(assert (= (and b!730129 (not c!80148)) b!730127))

(assert (= (and b!730129 res!490579) b!730131))

(assert (= (and b!730131 res!490582) b!730126))

(assert (= (and b!730126 res!490583) b!730134))

(assert (= (and b!730134 res!490580) b!730135))

(assert (= (and b!730126 (not res!490588)) b!730133))

(declare-fun m!683773 () Bool)

(assert (=> b!730137 m!683773))

(assert (=> b!730137 m!683773))

(declare-fun m!683775 () Bool)

(assert (=> b!730137 m!683775))

(declare-fun m!683777 () Bool)

(assert (=> b!730130 m!683777))

(declare-fun m!683779 () Bool)

(assert (=> b!730123 m!683779))

(assert (=> b!730127 m!683773))

(assert (=> b!730127 m!683773))

(declare-fun m!683781 () Bool)

(assert (=> b!730127 m!683781))

(declare-fun m!683783 () Bool)

(assert (=> b!730122 m!683783))

(declare-fun m!683785 () Bool)

(assert (=> b!730132 m!683785))

(declare-fun m!683787 () Bool)

(assert (=> b!730133 m!683787))

(assert (=> b!730139 m!683773))

(assert (=> b!730139 m!683773))

(declare-fun m!683789 () Bool)

(assert (=> b!730139 m!683789))

(declare-fun m!683791 () Bool)

(assert (=> b!730124 m!683791))

(assert (=> b!730125 m!683773))

(assert (=> b!730125 m!683773))

(declare-fun m!683793 () Bool)

(assert (=> b!730125 m!683793))

(assert (=> b!730125 m!683793))

(assert (=> b!730125 m!683773))

(declare-fun m!683795 () Bool)

(assert (=> b!730125 m!683795))

(declare-fun m!683797 () Bool)

(assert (=> b!730138 m!683797))

(assert (=> b!730135 m!683773))

(assert (=> b!730135 m!683773))

(declare-fun m!683799 () Bool)

(assert (=> b!730135 m!683799))

(declare-fun m!683801 () Bool)

(assert (=> b!730126 m!683801))

(declare-fun m!683803 () Bool)

(assert (=> b!730126 m!683803))

(declare-fun m!683805 () Bool)

(assert (=> start!64740 m!683805))

(declare-fun m!683807 () Bool)

(assert (=> start!64740 m!683807))

(assert (=> b!730134 m!683773))

(assert (=> b!730134 m!683773))

(declare-fun m!683809 () Bool)

(assert (=> b!730134 m!683809))

(declare-fun m!683811 () Bool)

(assert (=> b!730131 m!683811))

(declare-fun m!683813 () Bool)

(assert (=> b!730131 m!683813))

(declare-fun m!683815 () Bool)

(assert (=> b!730131 m!683815))

(declare-fun m!683817 () Bool)

(assert (=> b!730131 m!683817))

(declare-fun m!683819 () Bool)

(assert (=> b!730131 m!683819))

(assert (=> b!730131 m!683811))

(check-sat (not b!730122) (not b!730134) (not b!730133) (not b!730132) (not b!730125) (not b!730138) (not b!730127) (not b!730139) (not b!730137) (not b!730135) (not start!64740) (not b!730131) (not b!730126) (not b!730130) (not b!730124))
(check-sat)
