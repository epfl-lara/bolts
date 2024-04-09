; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65126 () Bool)

(assert start!65126)

(declare-fun b!734632 () Bool)

(declare-fun res!493631 () Bool)

(declare-fun e!411085 () Bool)

(assert (=> b!734632 (=> (not res!493631) (not e!411085))))

(declare-datatypes ((array!41252 0))(
  ( (array!41253 (arr!19736 (Array (_ BitVec 32) (_ BitVec 64))) (size!20157 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41252)

(declare-datatypes ((List!13791 0))(
  ( (Nil!13788) (Cons!13787 (h!14859 (_ BitVec 64)) (t!20114 List!13791)) )
))
(declare-fun arrayNoDuplicates!0 (array!41252 (_ BitVec 32) List!13791) Bool)

(assert (=> b!734632 (= res!493631 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13788))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7343 0))(
  ( (MissingZero!7343 (index!31739 (_ BitVec 32))) (Found!7343 (index!31740 (_ BitVec 32))) (Intermediate!7343 (undefined!8155 Bool) (index!31741 (_ BitVec 32)) (x!62774 (_ BitVec 32))) (Undefined!7343) (MissingVacant!7343 (index!31742 (_ BitVec 32))) )
))
(declare-fun lt!325602 () SeekEntryResult!7343)

(declare-fun e!411082 () Bool)

(declare-fun b!734633 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41252 (_ BitVec 32)) SeekEntryResult!7343)

(assert (=> b!734633 (= e!411082 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19736 a!3186) j!159) a!3186 mask!3328) lt!325602))))

(declare-fun b!734634 () Bool)

(declare-fun res!493633 () Bool)

(declare-fun e!411079 () Bool)

(assert (=> b!734634 (=> (not res!493633) (not e!411079))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734634 (= res!493633 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734635 () Bool)

(declare-fun res!493635 () Bool)

(assert (=> b!734635 (=> (not res!493635) (not e!411079))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734635 (= res!493635 (and (= (size!20157 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20157 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20157 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734636 () Bool)

(declare-fun res!493629 () Bool)

(assert (=> b!734636 (=> (not res!493629) (not e!411085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41252 (_ BitVec 32)) Bool)

(assert (=> b!734636 (= res!493629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734637 () Bool)

(declare-fun e!411087 () Bool)

(declare-fun e!411078 () Bool)

(assert (=> b!734637 (= e!411087 e!411078)))

(declare-fun res!493637 () Bool)

(assert (=> b!734637 (=> (not res!493637) (not e!411078))))

(declare-fun lt!325605 () SeekEntryResult!7343)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41252 (_ BitVec 32)) SeekEntryResult!7343)

(assert (=> b!734637 (= res!493637 (= (seekEntryOrOpen!0 (select (arr!19736 a!3186) j!159) a!3186 mask!3328) lt!325605))))

(assert (=> b!734637 (= lt!325605 (Found!7343 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!734638 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41252 (_ BitVec 32)) SeekEntryResult!7343)

(assert (=> b!734638 (= e!411078 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19736 a!3186) j!159) a!3186 mask!3328) lt!325605))))

(declare-fun b!734639 () Bool)

(assert (=> b!734639 (= e!411079 e!411085)))

(declare-fun res!493636 () Bool)

(assert (=> b!734639 (=> (not res!493636) (not e!411085))))

(declare-fun lt!325609 () SeekEntryResult!7343)

(assert (=> b!734639 (= res!493636 (or (= lt!325609 (MissingZero!7343 i!1173)) (= lt!325609 (MissingVacant!7343 i!1173))))))

(assert (=> b!734639 (= lt!325609 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734640 () Bool)

(declare-fun res!493641 () Bool)

(declare-fun e!411080 () Bool)

(assert (=> b!734640 (=> (not res!493641) (not e!411080))))

(assert (=> b!734640 (= res!493641 e!411082)))

(declare-fun c!80883 () Bool)

(assert (=> b!734640 (= c!80883 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734642 () Bool)

(declare-fun e!411081 () Bool)

(assert (=> b!734642 (= e!411080 e!411081)))

(declare-fun res!493640 () Bool)

(assert (=> b!734642 (=> (not res!493640) (not e!411081))))

(declare-fun lt!325608 () SeekEntryResult!7343)

(declare-fun lt!325606 () SeekEntryResult!7343)

(assert (=> b!734642 (= res!493640 (= lt!325608 lt!325606))))

(declare-fun lt!325603 () array!41252)

(declare-fun lt!325610 () (_ BitVec 64))

(assert (=> b!734642 (= lt!325606 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325610 lt!325603 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734642 (= lt!325608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325610 mask!3328) lt!325610 lt!325603 mask!3328))))

(assert (=> b!734642 (= lt!325610 (select (store (arr!19736 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734642 (= lt!325603 (array!41253 (store (arr!19736 a!3186) i!1173 k!2102) (size!20157 a!3186)))))

(declare-fun b!734643 () Bool)

(declare-fun res!493630 () Bool)

(assert (=> b!734643 (=> (not res!493630) (not e!411085))))

(assert (=> b!734643 (= res!493630 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20157 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20157 a!3186))))))

(declare-fun b!734644 () Bool)

(assert (=> b!734644 (= e!411082 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19736 a!3186) j!159) a!3186 mask!3328) (Found!7343 j!159)))))

(declare-fun b!734645 () Bool)

(declare-fun res!493632 () Bool)

(assert (=> b!734645 (=> (not res!493632) (not e!411079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734645 (= res!493632 (validKeyInArray!0 (select (arr!19736 a!3186) j!159)))))

(declare-fun b!734646 () Bool)

(declare-fun res!493643 () Bool)

(assert (=> b!734646 (=> (not res!493643) (not e!411080))))

(assert (=> b!734646 (= res!493643 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19736 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!325604 () (_ BitVec 32))

(declare-fun e!411086 () Bool)

(declare-fun b!734647 () Bool)

(assert (=> b!734647 (= e!411086 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325604 #b00000000000000000000000000000000) (bvsge lt!325604 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!734648 () Bool)

(assert (=> b!734648 (= e!411085 e!411080)))

(declare-fun res!493642 () Bool)

(assert (=> b!734648 (=> (not res!493642) (not e!411080))))

(assert (=> b!734648 (= res!493642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19736 a!3186) j!159) mask!3328) (select (arr!19736 a!3186) j!159) a!3186 mask!3328) lt!325602))))

(assert (=> b!734648 (= lt!325602 (Intermediate!7343 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734649 () Bool)

(declare-fun e!411084 () Bool)

(assert (=> b!734649 (= e!411081 (not e!411084))))

(declare-fun res!493639 () Bool)

(assert (=> b!734649 (=> res!493639 e!411084)))

(assert (=> b!734649 (= res!493639 (or (not (is-Intermediate!7343 lt!325606)) (bvsge x!1131 (x!62774 lt!325606))))))

(assert (=> b!734649 e!411087))

(declare-fun res!493628 () Bool)

(assert (=> b!734649 (=> (not res!493628) (not e!411087))))

(assert (=> b!734649 (= res!493628 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25004 0))(
  ( (Unit!25005) )
))
(declare-fun lt!325607 () Unit!25004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25004)

(assert (=> b!734649 (= lt!325607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734650 () Bool)

(declare-fun res!493627 () Bool)

(assert (=> b!734650 (=> (not res!493627) (not e!411079))))

(assert (=> b!734650 (= res!493627 (validKeyInArray!0 k!2102))))

(declare-fun b!734651 () Bool)

(declare-fun res!493634 () Bool)

(assert (=> b!734651 (=> res!493634 e!411086)))

(assert (=> b!734651 (= res!493634 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19736 a!3186) j!159) a!3186 mask!3328) (Found!7343 j!159)))))

(declare-fun b!734641 () Bool)

(assert (=> b!734641 (= e!411084 e!411086)))

(declare-fun res!493644 () Bool)

(assert (=> b!734641 (=> res!493644 e!411086)))

(assert (=> b!734641 (= res!493644 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734641 (= lt!325604 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!493638 () Bool)

(assert (=> start!65126 (=> (not res!493638) (not e!411079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65126 (= res!493638 (validMask!0 mask!3328))))

(assert (=> start!65126 e!411079))

(assert (=> start!65126 true))

(declare-fun array_inv!15510 (array!41252) Bool)

(assert (=> start!65126 (array_inv!15510 a!3186)))

(assert (= (and start!65126 res!493638) b!734635))

(assert (= (and b!734635 res!493635) b!734645))

(assert (= (and b!734645 res!493632) b!734650))

(assert (= (and b!734650 res!493627) b!734634))

(assert (= (and b!734634 res!493633) b!734639))

(assert (= (and b!734639 res!493636) b!734636))

(assert (= (and b!734636 res!493629) b!734632))

(assert (= (and b!734632 res!493631) b!734643))

(assert (= (and b!734643 res!493630) b!734648))

(assert (= (and b!734648 res!493642) b!734646))

(assert (= (and b!734646 res!493643) b!734640))

(assert (= (and b!734640 c!80883) b!734633))

(assert (= (and b!734640 (not c!80883)) b!734644))

(assert (= (and b!734640 res!493641) b!734642))

(assert (= (and b!734642 res!493640) b!734649))

(assert (= (and b!734649 res!493628) b!734637))

(assert (= (and b!734637 res!493637) b!734638))

(assert (= (and b!734649 (not res!493639)) b!734641))

(assert (= (and b!734641 (not res!493644)) b!734651))

(assert (= (and b!734651 (not res!493634)) b!734647))

(declare-fun m!687253 () Bool)

(assert (=> b!734649 m!687253))

(declare-fun m!687255 () Bool)

(assert (=> b!734649 m!687255))

(declare-fun m!687257 () Bool)

(assert (=> b!734642 m!687257))

(declare-fun m!687259 () Bool)

(assert (=> b!734642 m!687259))

(assert (=> b!734642 m!687259))

(declare-fun m!687261 () Bool)

(assert (=> b!734642 m!687261))

(declare-fun m!687263 () Bool)

(assert (=> b!734642 m!687263))

(declare-fun m!687265 () Bool)

(assert (=> b!734642 m!687265))

(declare-fun m!687267 () Bool)

(assert (=> b!734639 m!687267))

(declare-fun m!687269 () Bool)

(assert (=> b!734636 m!687269))

(declare-fun m!687271 () Bool)

(assert (=> b!734651 m!687271))

(assert (=> b!734651 m!687271))

(declare-fun m!687273 () Bool)

(assert (=> b!734651 m!687273))

(assert (=> b!734637 m!687271))

(assert (=> b!734637 m!687271))

(declare-fun m!687275 () Bool)

(assert (=> b!734637 m!687275))

(assert (=> b!734638 m!687271))

(assert (=> b!734638 m!687271))

(declare-fun m!687277 () Bool)

(assert (=> b!734638 m!687277))

(assert (=> b!734633 m!687271))

(assert (=> b!734633 m!687271))

(declare-fun m!687279 () Bool)

(assert (=> b!734633 m!687279))

(assert (=> b!734648 m!687271))

(assert (=> b!734648 m!687271))

(declare-fun m!687281 () Bool)

(assert (=> b!734648 m!687281))

(assert (=> b!734648 m!687281))

(assert (=> b!734648 m!687271))

(declare-fun m!687283 () Bool)

(assert (=> b!734648 m!687283))

(assert (=> b!734644 m!687271))

(assert (=> b!734644 m!687271))

(assert (=> b!734644 m!687273))

(assert (=> b!734645 m!687271))

(assert (=> b!734645 m!687271))

(declare-fun m!687285 () Bool)

(assert (=> b!734645 m!687285))

(declare-fun m!687287 () Bool)

(assert (=> b!734632 m!687287))

(declare-fun m!687289 () Bool)

(assert (=> b!734634 m!687289))

(declare-fun m!687291 () Bool)

(assert (=> b!734641 m!687291))

(declare-fun m!687293 () Bool)

(assert (=> b!734646 m!687293))

(declare-fun m!687295 () Bool)

(assert (=> start!65126 m!687295))

(declare-fun m!687297 () Bool)

(assert (=> start!65126 m!687297))

(declare-fun m!687299 () Bool)

(assert (=> b!734650 m!687299))

(push 1)

(assert (not b!734633))

(assert (not b!734645))

(assert (not b!734642))

(assert (not b!734649))

(assert (not b!734634))

(assert (not b!734638))

(assert (not b!734632))

(assert (not b!734650))

(assert (not b!734648))

(assert (not start!65126))

(assert (not b!734637))

(assert (not b!734644))

(assert (not b!734636))

(assert (not b!734641))

(assert (not b!734651))

(assert (not b!734639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

