; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64760 () Bool)

(assert start!64760)

(declare-fun b!730670 () Bool)

(declare-fun e!408908 () Bool)

(assert (=> b!730670 (= e!408908 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41162 0))(
  ( (array!41163 (arr!19697 (Array (_ BitVec 32) (_ BitVec 64))) (size!20118 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41162)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7304 0))(
  ( (MissingZero!7304 (index!31583 (_ BitVec 32))) (Found!7304 (index!31584 (_ BitVec 32))) (Intermediate!7304 (undefined!8116 Bool) (index!31585 (_ BitVec 32)) (x!62583 (_ BitVec 32))) (Undefined!7304) (MissingVacant!7304 (index!31586 (_ BitVec 32))) )
))
(declare-fun lt!323816 () SeekEntryResult!7304)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41162 (_ BitVec 32)) SeekEntryResult!7304)

(assert (=> b!730670 (= lt!323816 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19697 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!730671 () Bool)

(declare-fun e!408905 () Bool)

(declare-fun e!408909 () Bool)

(assert (=> b!730671 (= e!408905 e!408909)))

(declare-fun res!491077 () Bool)

(assert (=> b!730671 (=> (not res!491077) (not e!408909))))

(declare-fun lt!323815 () SeekEntryResult!7304)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730671 (= res!491077 (or (= lt!323815 (MissingZero!7304 i!1173)) (= lt!323815 (MissingVacant!7304 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41162 (_ BitVec 32)) SeekEntryResult!7304)

(assert (=> b!730671 (= lt!323815 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!408906 () Bool)

(declare-fun b!730672 () Bool)

(assert (=> b!730672 (= e!408906 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19697 a!3186) j!159) a!3186 mask!3328) (Found!7304 j!159)))))

(declare-fun b!730673 () Bool)

(declare-fun e!408902 () Bool)

(assert (=> b!730673 (= e!408902 e!408908)))

(declare-fun res!491064 () Bool)

(assert (=> b!730673 (=> res!491064 e!408908)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730673 (= res!491064 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323811 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730673 (= lt!323811 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730674 () Bool)

(declare-fun res!491073 () Bool)

(assert (=> b!730674 (=> (not res!491073) (not e!408909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41162 (_ BitVec 32)) Bool)

(assert (=> b!730674 (= res!491073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730675 () Bool)

(declare-fun res!491066 () Bool)

(assert (=> b!730675 (=> (not res!491066) (not e!408905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730675 (= res!491066 (validKeyInArray!0 (select (arr!19697 a!3186) j!159)))))

(declare-fun b!730676 () Bool)

(declare-fun res!491063 () Bool)

(assert (=> b!730676 (=> (not res!491063) (not e!408905))))

(assert (=> b!730676 (= res!491063 (validKeyInArray!0 k!2102))))

(declare-fun b!730678 () Bool)

(declare-fun res!491071 () Bool)

(assert (=> b!730678 (=> (not res!491071) (not e!408905))))

(declare-fun arrayContainsKey!0 (array!41162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730678 (= res!491071 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730679 () Bool)

(declare-fun e!408904 () Bool)

(assert (=> b!730679 (= e!408904 (not e!408902))))

(declare-fun res!491070 () Bool)

(assert (=> b!730679 (=> res!491070 e!408902)))

(declare-fun lt!323812 () SeekEntryResult!7304)

(assert (=> b!730679 (= res!491070 (or (not (is-Intermediate!7304 lt!323812)) (bvsge x!1131 (x!62583 lt!323812))))))

(declare-fun e!408907 () Bool)

(assert (=> b!730679 e!408907))

(declare-fun res!491072 () Bool)

(assert (=> b!730679 (=> (not res!491072) (not e!408907))))

(assert (=> b!730679 (= res!491072 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24926 0))(
  ( (Unit!24927) )
))
(declare-fun lt!323808 () Unit!24926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24926)

(assert (=> b!730679 (= lt!323808 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730680 () Bool)

(declare-fun e!408900 () Bool)

(assert (=> b!730680 (= e!408907 e!408900)))

(declare-fun res!491079 () Bool)

(assert (=> b!730680 (=> (not res!491079) (not e!408900))))

(declare-fun lt!323813 () SeekEntryResult!7304)

(assert (=> b!730680 (= res!491079 (= (seekEntryOrOpen!0 (select (arr!19697 a!3186) j!159) a!3186 mask!3328) lt!323813))))

(assert (=> b!730680 (= lt!323813 (Found!7304 j!159))))

(declare-fun b!730681 () Bool)

(declare-fun res!491076 () Bool)

(declare-fun e!408901 () Bool)

(assert (=> b!730681 (=> (not res!491076) (not e!408901))))

(assert (=> b!730681 (= res!491076 e!408906)))

(declare-fun c!80178 () Bool)

(assert (=> b!730681 (= c!80178 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730682 () Bool)

(declare-fun res!491074 () Bool)

(assert (=> b!730682 (=> (not res!491074) (not e!408909))))

(assert (=> b!730682 (= res!491074 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20118 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20118 a!3186))))))

(declare-fun b!730683 () Bool)

(declare-fun res!491078 () Bool)

(assert (=> b!730683 (=> (not res!491078) (not e!408901))))

(assert (=> b!730683 (= res!491078 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19697 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730684 () Bool)

(declare-fun res!491069 () Bool)

(assert (=> b!730684 (=> (not res!491069) (not e!408905))))

(assert (=> b!730684 (= res!491069 (and (= (size!20118 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20118 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20118 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730685 () Bool)

(assert (=> b!730685 (= e!408909 e!408901)))

(declare-fun res!491068 () Bool)

(assert (=> b!730685 (=> (not res!491068) (not e!408901))))

(declare-fun lt!323814 () SeekEntryResult!7304)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41162 (_ BitVec 32)) SeekEntryResult!7304)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730685 (= res!491068 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19697 a!3186) j!159) mask!3328) (select (arr!19697 a!3186) j!159) a!3186 mask!3328) lt!323814))))

(assert (=> b!730685 (= lt!323814 (Intermediate!7304 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730686 () Bool)

(assert (=> b!730686 (= e!408906 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19697 a!3186) j!159) a!3186 mask!3328) lt!323814))))

(declare-fun b!730687 () Bool)

(declare-fun res!491067 () Bool)

(assert (=> b!730687 (=> (not res!491067) (not e!408909))))

(declare-datatypes ((List!13752 0))(
  ( (Nil!13749) (Cons!13748 (h!14808 (_ BitVec 64)) (t!20075 List!13752)) )
))
(declare-fun arrayNoDuplicates!0 (array!41162 (_ BitVec 32) List!13752) Bool)

(assert (=> b!730687 (= res!491067 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13749))))

(declare-fun b!730688 () Bool)

(assert (=> b!730688 (= e!408901 e!408904)))

(declare-fun res!491075 () Bool)

(assert (=> b!730688 (=> (not res!491075) (not e!408904))))

(declare-fun lt!323810 () SeekEntryResult!7304)

(assert (=> b!730688 (= res!491075 (= lt!323810 lt!323812))))

(declare-fun lt!323807 () array!41162)

(declare-fun lt!323809 () (_ BitVec 64))

(assert (=> b!730688 (= lt!323812 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323809 lt!323807 mask!3328))))

(assert (=> b!730688 (= lt!323810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323809 mask!3328) lt!323809 lt!323807 mask!3328))))

(assert (=> b!730688 (= lt!323809 (select (store (arr!19697 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730688 (= lt!323807 (array!41163 (store (arr!19697 a!3186) i!1173 k!2102) (size!20118 a!3186)))))

(declare-fun b!730677 () Bool)

(assert (=> b!730677 (= e!408900 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19697 a!3186) j!159) a!3186 mask!3328) lt!323813))))

(declare-fun res!491065 () Bool)

(assert (=> start!64760 (=> (not res!491065) (not e!408905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64760 (= res!491065 (validMask!0 mask!3328))))

(assert (=> start!64760 e!408905))

(assert (=> start!64760 true))

(declare-fun array_inv!15471 (array!41162) Bool)

(assert (=> start!64760 (array_inv!15471 a!3186)))

(assert (= (and start!64760 res!491065) b!730684))

(assert (= (and b!730684 res!491069) b!730675))

(assert (= (and b!730675 res!491066) b!730676))

(assert (= (and b!730676 res!491063) b!730678))

(assert (= (and b!730678 res!491071) b!730671))

(assert (= (and b!730671 res!491077) b!730674))

(assert (= (and b!730674 res!491073) b!730687))

(assert (= (and b!730687 res!491067) b!730682))

(assert (= (and b!730682 res!491074) b!730685))

(assert (= (and b!730685 res!491068) b!730683))

(assert (= (and b!730683 res!491078) b!730681))

(assert (= (and b!730681 c!80178) b!730686))

(assert (= (and b!730681 (not c!80178)) b!730672))

(assert (= (and b!730681 res!491076) b!730688))

(assert (= (and b!730688 res!491075) b!730679))

(assert (= (and b!730679 res!491072) b!730680))

(assert (= (and b!730680 res!491079) b!730677))

(assert (= (and b!730679 (not res!491070)) b!730673))

(assert (= (and b!730673 (not res!491064)) b!730670))

(declare-fun m!684253 () Bool)

(assert (=> b!730670 m!684253))

(assert (=> b!730670 m!684253))

(declare-fun m!684255 () Bool)

(assert (=> b!730670 m!684255))

(assert (=> b!730675 m!684253))

(assert (=> b!730675 m!684253))

(declare-fun m!684257 () Bool)

(assert (=> b!730675 m!684257))

(declare-fun m!684259 () Bool)

(assert (=> b!730687 m!684259))

(assert (=> b!730686 m!684253))

(assert (=> b!730686 m!684253))

(declare-fun m!684261 () Bool)

(assert (=> b!730686 m!684261))

(assert (=> b!730680 m!684253))

(assert (=> b!730680 m!684253))

(declare-fun m!684263 () Bool)

(assert (=> b!730680 m!684263))

(assert (=> b!730685 m!684253))

(assert (=> b!730685 m!684253))

(declare-fun m!684265 () Bool)

(assert (=> b!730685 m!684265))

(assert (=> b!730685 m!684265))

(assert (=> b!730685 m!684253))

(declare-fun m!684267 () Bool)

(assert (=> b!730685 m!684267))

(declare-fun m!684269 () Bool)

(assert (=> b!730676 m!684269))

(assert (=> b!730672 m!684253))

(assert (=> b!730672 m!684253))

(assert (=> b!730672 m!684255))

(declare-fun m!684271 () Bool)

(assert (=> b!730678 m!684271))

(declare-fun m!684273 () Bool)

(assert (=> b!730679 m!684273))

(declare-fun m!684275 () Bool)

(assert (=> b!730679 m!684275))

(declare-fun m!684277 () Bool)

(assert (=> b!730673 m!684277))

(declare-fun m!684279 () Bool)

(assert (=> b!730688 m!684279))

(declare-fun m!684281 () Bool)

(assert (=> b!730688 m!684281))

(declare-fun m!684283 () Bool)

(assert (=> b!730688 m!684283))

(declare-fun m!684285 () Bool)

(assert (=> b!730688 m!684285))

(assert (=> b!730688 m!684281))

(declare-fun m!684287 () Bool)

(assert (=> b!730688 m!684287))

(declare-fun m!684289 () Bool)

(assert (=> b!730674 m!684289))

(declare-fun m!684291 () Bool)

(assert (=> b!730671 m!684291))

(declare-fun m!684293 () Bool)

(assert (=> b!730683 m!684293))

(declare-fun m!684295 () Bool)

(assert (=> start!64760 m!684295))

(declare-fun m!684297 () Bool)

(assert (=> start!64760 m!684297))

(assert (=> b!730677 m!684253))

(assert (=> b!730677 m!684253))

(declare-fun m!684299 () Bool)

(assert (=> b!730677 m!684299))

(push 1)

