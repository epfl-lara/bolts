; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67802 () Bool)

(assert start!67802)

(declare-fun b!787658 () Bool)

(declare-fun res!533636 () Bool)

(declare-fun e!437837 () Bool)

(assert (=> b!787658 (=> (not res!533636) (not e!437837))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!351404 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42797 0))(
  ( (array!42798 (arr!20483 (Array (_ BitVec 32) (_ BitVec 64))) (size!20904 (_ BitVec 32))) )
))
(declare-fun lt!351399 () array!42797)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8090 0))(
  ( (MissingZero!8090 (index!34727 (_ BitVec 32))) (Found!8090 (index!34728 (_ BitVec 32))) (Intermediate!8090 (undefined!8902 Bool) (index!34729 (_ BitVec 32)) (x!65687 (_ BitVec 32))) (Undefined!8090) (MissingVacant!8090 (index!34730 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42797 (_ BitVec 32)) SeekEntryResult!8090)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42797 (_ BitVec 32)) SeekEntryResult!8090)

(assert (=> b!787658 (= res!533636 (= (seekEntryOrOpen!0 lt!351404 lt!351399 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351404 lt!351399 mask!3328)))))

(declare-fun b!787659 () Bool)

(declare-fun res!533641 () Bool)

(declare-fun e!437835 () Bool)

(assert (=> b!787659 (=> (not res!533641) (not e!437835))))

(declare-fun e!437833 () Bool)

(assert (=> b!787659 (= res!533641 e!437833)))

(declare-fun c!87419 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787659 (= c!87419 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787660 () Bool)

(declare-fun res!533640 () Bool)

(declare-fun e!437836 () Bool)

(assert (=> b!787660 (=> (not res!533640) (not e!437836))))

(declare-fun a!3186 () array!42797)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42797 (_ BitVec 32)) Bool)

(assert (=> b!787660 (= res!533640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787661 () Bool)

(declare-fun res!533652 () Bool)

(declare-fun e!437841 () Bool)

(assert (=> b!787661 (=> (not res!533652) (not e!437841))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787661 (= res!533652 (validKeyInArray!0 (select (arr!20483 a!3186) j!159)))))

(declare-fun b!787662 () Bool)

(declare-datatypes ((Unit!27270 0))(
  ( (Unit!27271) )
))
(declare-fun e!437832 () Unit!27270)

(declare-fun Unit!27272 () Unit!27270)

(assert (=> b!787662 (= e!437832 Unit!27272)))

(assert (=> b!787662 false))

(declare-fun b!787663 () Bool)

(declare-fun res!533647 () Bool)

(assert (=> b!787663 (=> (not res!533647) (not e!437836))))

(declare-datatypes ((List!14538 0))(
  ( (Nil!14535) (Cons!14534 (h!15657 (_ BitVec 64)) (t!20861 List!14538)) )
))
(declare-fun arrayNoDuplicates!0 (array!42797 (_ BitVec 32) List!14538) Bool)

(assert (=> b!787663 (= res!533647 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14535))))

(declare-fun b!787664 () Bool)

(declare-fun e!437839 () Bool)

(assert (=> b!787664 (= e!437835 e!437839)))

(declare-fun res!533646 () Bool)

(assert (=> b!787664 (=> (not res!533646) (not e!437839))))

(declare-fun lt!351407 () SeekEntryResult!8090)

(declare-fun lt!351405 () SeekEntryResult!8090)

(assert (=> b!787664 (= res!533646 (= lt!351407 lt!351405))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42797 (_ BitVec 32)) SeekEntryResult!8090)

(assert (=> b!787664 (= lt!351405 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351404 lt!351399 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787664 (= lt!351407 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351404 mask!3328) lt!351404 lt!351399 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!787664 (= lt!351404 (select (store (arr!20483 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787664 (= lt!351399 (array!42798 (store (arr!20483 a!3186) i!1173 k!2102) (size!20904 a!3186)))))

(declare-fun b!787665 () Bool)

(assert (=> b!787665 (= e!437841 e!437836)))

(declare-fun res!533642 () Bool)

(assert (=> b!787665 (=> (not res!533642) (not e!437836))))

(declare-fun lt!351402 () SeekEntryResult!8090)

(assert (=> b!787665 (= res!533642 (or (= lt!351402 (MissingZero!8090 i!1173)) (= lt!351402 (MissingVacant!8090 i!1173))))))

(assert (=> b!787665 (= lt!351402 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787666 () Bool)

(declare-fun res!533645 () Bool)

(assert (=> b!787666 (=> (not res!533645) (not e!437841))))

(assert (=> b!787666 (= res!533645 (validKeyInArray!0 k!2102))))

(declare-fun b!787667 () Bool)

(declare-fun e!437831 () Bool)

(declare-fun e!437842 () Bool)

(assert (=> b!787667 (= e!437831 e!437842)))

(declare-fun res!533635 () Bool)

(assert (=> b!787667 (=> res!533635 e!437842)))

(declare-fun lt!351403 () (_ BitVec 64))

(assert (=> b!787667 (= res!533635 (= lt!351403 lt!351404))))

(assert (=> b!787667 (= lt!351403 (select (store (arr!20483 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787668 () Bool)

(assert (=> b!787668 (= e!437836 e!437835)))

(declare-fun res!533637 () Bool)

(assert (=> b!787668 (=> (not res!533637) (not e!437835))))

(declare-fun lt!351401 () SeekEntryResult!8090)

(assert (=> b!787668 (= res!533637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20483 a!3186) j!159) mask!3328) (select (arr!20483 a!3186) j!159) a!3186 mask!3328) lt!351401))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!787668 (= lt!351401 (Intermediate!8090 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787669 () Bool)

(declare-fun lt!351400 () SeekEntryResult!8090)

(declare-fun lt!351409 () SeekEntryResult!8090)

(assert (=> b!787669 (= e!437837 (= lt!351400 lt!351409))))

(declare-fun res!533648 () Bool)

(assert (=> start!67802 (=> (not res!533648) (not e!437841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67802 (= res!533648 (validMask!0 mask!3328))))

(assert (=> start!67802 e!437841))

(assert (=> start!67802 true))

(declare-fun array_inv!16257 (array!42797) Bool)

(assert (=> start!67802 (array_inv!16257 a!3186)))

(declare-fun b!787670 () Bool)

(assert (=> b!787670 (= e!437833 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20483 a!3186) j!159) a!3186 mask!3328) lt!351401))))

(declare-fun b!787671 () Bool)

(declare-fun res!533639 () Bool)

(assert (=> b!787671 (=> (not res!533639) (not e!437835))))

(assert (=> b!787671 (= res!533639 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20483 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787672 () Bool)

(declare-fun e!437840 () Bool)

(assert (=> b!787672 (= e!437839 (not e!437840))))

(declare-fun res!533644 () Bool)

(assert (=> b!787672 (=> res!533644 e!437840)))

(assert (=> b!787672 (= res!533644 (or (not (is-Intermediate!8090 lt!351405)) (bvslt x!1131 (x!65687 lt!351405)) (not (= x!1131 (x!65687 lt!351405))) (not (= index!1321 (index!34729 lt!351405)))))))

(declare-fun e!437834 () Bool)

(assert (=> b!787672 e!437834))

(declare-fun res!533643 () Bool)

(assert (=> b!787672 (=> (not res!533643) (not e!437834))))

(declare-fun lt!351398 () SeekEntryResult!8090)

(assert (=> b!787672 (= res!533643 (= lt!351400 lt!351398))))

(assert (=> b!787672 (= lt!351398 (Found!8090 j!159))))

(assert (=> b!787672 (= lt!351400 (seekEntryOrOpen!0 (select (arr!20483 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787672 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351406 () Unit!27270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27270)

(assert (=> b!787672 (= lt!351406 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787673 () Bool)

(assert (=> b!787673 (= e!437840 e!437831)))

(declare-fun res!533638 () Bool)

(assert (=> b!787673 (=> res!533638 e!437831)))

(assert (=> b!787673 (= res!533638 (not (= lt!351409 lt!351398)))))

(assert (=> b!787673 (= lt!351409 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20483 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787674 () Bool)

(declare-fun res!533650 () Bool)

(assert (=> b!787674 (=> (not res!533650) (not e!437841))))

(declare-fun arrayContainsKey!0 (array!42797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787674 (= res!533650 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787675 () Bool)

(declare-fun res!533651 () Bool)

(assert (=> b!787675 (=> (not res!533651) (not e!437836))))

(assert (=> b!787675 (= res!533651 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20904 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20904 a!3186))))))

(declare-fun b!787676 () Bool)

(assert (=> b!787676 (= e!437842 true)))

(assert (=> b!787676 e!437837))

(declare-fun res!533649 () Bool)

(assert (=> b!787676 (=> (not res!533649) (not e!437837))))

(assert (=> b!787676 (= res!533649 (= lt!351403 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351408 () Unit!27270)

(assert (=> b!787676 (= lt!351408 e!437832)))

(declare-fun c!87420 () Bool)

(assert (=> b!787676 (= c!87420 (= lt!351403 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787677 () Bool)

(declare-fun res!533653 () Bool)

(assert (=> b!787677 (=> (not res!533653) (not e!437841))))

(assert (=> b!787677 (= res!533653 (and (= (size!20904 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20904 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20904 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787678 () Bool)

(declare-fun Unit!27273 () Unit!27270)

(assert (=> b!787678 (= e!437832 Unit!27273)))

(declare-fun b!787679 () Bool)

(assert (=> b!787679 (= e!437833 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20483 a!3186) j!159) a!3186 mask!3328) (Found!8090 j!159)))))

(declare-fun b!787680 () Bool)

(assert (=> b!787680 (= e!437834 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20483 a!3186) j!159) a!3186 mask!3328) lt!351398))))

(assert (= (and start!67802 res!533648) b!787677))

(assert (= (and b!787677 res!533653) b!787661))

(assert (= (and b!787661 res!533652) b!787666))

(assert (= (and b!787666 res!533645) b!787674))

(assert (= (and b!787674 res!533650) b!787665))

(assert (= (and b!787665 res!533642) b!787660))

(assert (= (and b!787660 res!533640) b!787663))

(assert (= (and b!787663 res!533647) b!787675))

(assert (= (and b!787675 res!533651) b!787668))

(assert (= (and b!787668 res!533637) b!787671))

(assert (= (and b!787671 res!533639) b!787659))

(assert (= (and b!787659 c!87419) b!787670))

(assert (= (and b!787659 (not c!87419)) b!787679))

(assert (= (and b!787659 res!533641) b!787664))

(assert (= (and b!787664 res!533646) b!787672))

(assert (= (and b!787672 res!533643) b!787680))

(assert (= (and b!787672 (not res!533644)) b!787673))

(assert (= (and b!787673 (not res!533638)) b!787667))

(assert (= (and b!787667 (not res!533635)) b!787676))

(assert (= (and b!787676 c!87420) b!787662))

(assert (= (and b!787676 (not c!87420)) b!787678))

(assert (= (and b!787676 res!533649) b!787658))

(assert (= (and b!787658 res!533636) b!787669))

(declare-fun m!729225 () Bool)

(assert (=> b!787674 m!729225))

(declare-fun m!729227 () Bool)

(assert (=> b!787672 m!729227))

(assert (=> b!787672 m!729227))

(declare-fun m!729229 () Bool)

(assert (=> b!787672 m!729229))

(declare-fun m!729231 () Bool)

(assert (=> b!787672 m!729231))

(declare-fun m!729233 () Bool)

(assert (=> b!787672 m!729233))

(assert (=> b!787670 m!729227))

(assert (=> b!787670 m!729227))

(declare-fun m!729235 () Bool)

(assert (=> b!787670 m!729235))

(declare-fun m!729237 () Bool)

(assert (=> start!67802 m!729237))

(declare-fun m!729239 () Bool)

(assert (=> start!67802 m!729239))

(declare-fun m!729241 () Bool)

(assert (=> b!787665 m!729241))

(declare-fun m!729243 () Bool)

(assert (=> b!787658 m!729243))

(declare-fun m!729245 () Bool)

(assert (=> b!787658 m!729245))

(declare-fun m!729247 () Bool)

(assert (=> b!787664 m!729247))

(declare-fun m!729249 () Bool)

(assert (=> b!787664 m!729249))

(declare-fun m!729251 () Bool)

(assert (=> b!787664 m!729251))

(assert (=> b!787664 m!729247))

(declare-fun m!729253 () Bool)

(assert (=> b!787664 m!729253))

(declare-fun m!729255 () Bool)

(assert (=> b!787664 m!729255))

(assert (=> b!787668 m!729227))

(assert (=> b!787668 m!729227))

(declare-fun m!729257 () Bool)

(assert (=> b!787668 m!729257))

(assert (=> b!787668 m!729257))

(assert (=> b!787668 m!729227))

(declare-fun m!729259 () Bool)

(assert (=> b!787668 m!729259))

(declare-fun m!729261 () Bool)

(assert (=> b!787666 m!729261))

(declare-fun m!729263 () Bool)

(assert (=> b!787663 m!729263))

(assert (=> b!787661 m!729227))

(assert (=> b!787661 m!729227))

(declare-fun m!729265 () Bool)

(assert (=> b!787661 m!729265))

(declare-fun m!729267 () Bool)

(assert (=> b!787671 m!729267))

(assert (=> b!787680 m!729227))

(assert (=> b!787680 m!729227))

(declare-fun m!729269 () Bool)

(assert (=> b!787680 m!729269))

(assert (=> b!787667 m!729253))

(declare-fun m!729271 () Bool)

(assert (=> b!787667 m!729271))

(assert (=> b!787679 m!729227))

(assert (=> b!787679 m!729227))

(declare-fun m!729273 () Bool)

(assert (=> b!787679 m!729273))

(declare-fun m!729275 () Bool)

(assert (=> b!787660 m!729275))

(assert (=> b!787673 m!729227))

(assert (=> b!787673 m!729227))

(assert (=> b!787673 m!729273))

(push 1)

