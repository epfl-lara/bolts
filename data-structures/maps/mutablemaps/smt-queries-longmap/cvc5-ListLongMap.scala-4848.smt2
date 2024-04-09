; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66802 () Bool)

(assert start!66802)

(declare-fun b!769805 () Bool)

(declare-datatypes ((Unit!26488 0))(
  ( (Unit!26489) )
))
(declare-fun e!428653 () Unit!26488)

(declare-fun Unit!26490 () Unit!26488)

(assert (=> b!769805 (= e!428653 Unit!26490)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42319 0))(
  ( (array!42320 (arr!20256 (Array (_ BitVec 32) (_ BitVec 64))) (size!20677 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42319)

(declare-datatypes ((SeekEntryResult!7863 0))(
  ( (MissingZero!7863 (index!33819 (_ BitVec 32))) (Found!7863 (index!33820 (_ BitVec 32))) (Intermediate!7863 (undefined!8675 Bool) (index!33821 (_ BitVec 32)) (x!64779 (_ BitVec 32))) (Undefined!7863) (MissingVacant!7863 (index!33822 (_ BitVec 32))) )
))
(declare-fun lt!342589 () SeekEntryResult!7863)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42319 (_ BitVec 32)) SeekEntryResult!7863)

(assert (=> b!769805 (= lt!342589 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20256 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342592 () (_ BitVec 32))

(assert (=> b!769805 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342592 resIntermediateIndex!5 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) (Found!7863 j!159))))

(declare-fun b!769806 () Bool)

(declare-fun e!428659 () Bool)

(declare-fun e!428657 () Bool)

(assert (=> b!769806 (= e!428659 (not e!428657))))

(declare-fun res!520787 () Bool)

(assert (=> b!769806 (=> res!520787 e!428657)))

(declare-fun lt!342594 () SeekEntryResult!7863)

(assert (=> b!769806 (= res!520787 (or (not (is-Intermediate!7863 lt!342594)) (bvsge x!1131 (x!64779 lt!342594))))))

(declare-fun e!428656 () Bool)

(assert (=> b!769806 e!428656))

(declare-fun res!520790 () Bool)

(assert (=> b!769806 (=> (not res!520790) (not e!428656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42319 (_ BitVec 32)) Bool)

(assert (=> b!769806 (= res!520790 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342587 () Unit!26488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26488)

(assert (=> b!769806 (= lt!342587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769807 () Bool)

(declare-fun res!520793 () Bool)

(declare-fun e!428655 () Bool)

(assert (=> b!769807 (=> (not res!520793) (not e!428655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769807 (= res!520793 (validKeyInArray!0 (select (arr!20256 a!3186) j!159)))))

(declare-fun b!769808 () Bool)

(declare-fun res!520781 () Bool)

(assert (=> b!769808 (=> (not res!520781) (not e!428655))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769808 (= res!520781 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!342593 () SeekEntryResult!7863)

(declare-fun b!769809 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!428658 () Bool)

(assert (=> b!769809 (= e!428658 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) lt!342593))))

(declare-fun b!769810 () Bool)

(declare-fun res!520794 () Bool)

(declare-fun e!428652 () Bool)

(assert (=> b!769810 (=> (not res!520794) (not e!428652))))

(assert (=> b!769810 (= res!520794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769811 () Bool)

(declare-fun e!428651 () Bool)

(assert (=> b!769811 (= e!428651 e!428659)))

(declare-fun res!520789 () Bool)

(assert (=> b!769811 (=> (not res!520789) (not e!428659))))

(declare-fun lt!342588 () SeekEntryResult!7863)

(assert (=> b!769811 (= res!520789 (= lt!342588 lt!342594))))

(declare-fun lt!342585 () (_ BitVec 64))

(declare-fun lt!342591 () array!42319)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42319 (_ BitVec 32)) SeekEntryResult!7863)

(assert (=> b!769811 (= lt!342594 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342585 lt!342591 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769811 (= lt!342588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342585 mask!3328) lt!342585 lt!342591 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769811 (= lt!342585 (select (store (arr!20256 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769811 (= lt!342591 (array!42320 (store (arr!20256 a!3186) i!1173 k!2102) (size!20677 a!3186)))))

(declare-fun b!769812 () Bool)

(declare-fun res!520785 () Bool)

(assert (=> b!769812 (=> (not res!520785) (not e!428651))))

(declare-fun e!428654 () Bool)

(assert (=> b!769812 (= res!520785 e!428654)))

(declare-fun c!84909 () Bool)

(assert (=> b!769812 (= c!84909 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769813 () Bool)

(assert (=> b!769813 (= e!428654 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) (Found!7863 j!159)))))

(declare-fun b!769814 () Bool)

(declare-fun res!520786 () Bool)

(assert (=> b!769814 (=> (not res!520786) (not e!428651))))

(assert (=> b!769814 (= res!520786 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20256 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!520792 () Bool)

(assert (=> start!66802 (=> (not res!520792) (not e!428655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66802 (= res!520792 (validMask!0 mask!3328))))

(assert (=> start!66802 e!428655))

(assert (=> start!66802 true))

(declare-fun array_inv!16030 (array!42319) Bool)

(assert (=> start!66802 (array_inv!16030 a!3186)))

(declare-fun b!769815 () Bool)

(declare-fun res!520782 () Bool)

(assert (=> b!769815 (=> (not res!520782) (not e!428655))))

(assert (=> b!769815 (= res!520782 (validKeyInArray!0 k!2102))))

(declare-fun b!769816 () Bool)

(assert (=> b!769816 (= e!428652 e!428651)))

(declare-fun res!520788 () Bool)

(assert (=> b!769816 (=> (not res!520788) (not e!428651))))

(declare-fun lt!342590 () SeekEntryResult!7863)

(assert (=> b!769816 (= res!520788 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20256 a!3186) j!159) mask!3328) (select (arr!20256 a!3186) j!159) a!3186 mask!3328) lt!342590))))

(assert (=> b!769816 (= lt!342590 (Intermediate!7863 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769817 () Bool)

(assert (=> b!769817 (= e!428656 e!428658)))

(declare-fun res!520783 () Bool)

(assert (=> b!769817 (=> (not res!520783) (not e!428658))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42319 (_ BitVec 32)) SeekEntryResult!7863)

(assert (=> b!769817 (= res!520783 (= (seekEntryOrOpen!0 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) lt!342593))))

(assert (=> b!769817 (= lt!342593 (Found!7863 j!159))))

(declare-fun b!769818 () Bool)

(declare-fun res!520780 () Bool)

(assert (=> b!769818 (=> (not res!520780) (not e!428652))))

(assert (=> b!769818 (= res!520780 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20677 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20677 a!3186))))))

(declare-fun b!769819 () Bool)

(declare-fun res!520784 () Bool)

(assert (=> b!769819 (=> (not res!520784) (not e!428652))))

(declare-datatypes ((List!14311 0))(
  ( (Nil!14308) (Cons!14307 (h!15406 (_ BitVec 64)) (t!20634 List!14311)) )
))
(declare-fun arrayNoDuplicates!0 (array!42319 (_ BitVec 32) List!14311) Bool)

(assert (=> b!769819 (= res!520784 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14308))))

(declare-fun b!769820 () Bool)

(declare-fun res!520795 () Bool)

(assert (=> b!769820 (=> (not res!520795) (not e!428655))))

(assert (=> b!769820 (= res!520795 (and (= (size!20677 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20677 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20677 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769821 () Bool)

(assert (=> b!769821 (= e!428654 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) lt!342590))))

(declare-fun b!769822 () Bool)

(assert (=> b!769822 (= e!428657 true)))

(declare-fun lt!342586 () Unit!26488)

(assert (=> b!769822 (= lt!342586 e!428653)))

(declare-fun c!84908 () Bool)

(assert (=> b!769822 (= c!84908 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769822 (= lt!342592 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769823 () Bool)

(assert (=> b!769823 (= e!428655 e!428652)))

(declare-fun res!520791 () Bool)

(assert (=> b!769823 (=> (not res!520791) (not e!428652))))

(declare-fun lt!342595 () SeekEntryResult!7863)

(assert (=> b!769823 (= res!520791 (or (= lt!342595 (MissingZero!7863 i!1173)) (= lt!342595 (MissingVacant!7863 i!1173))))))

(assert (=> b!769823 (= lt!342595 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769824 () Bool)

(declare-fun Unit!26491 () Unit!26488)

(assert (=> b!769824 (= e!428653 Unit!26491)))

(assert (=> b!769824 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342592 (select (arr!20256 a!3186) j!159) a!3186 mask!3328) lt!342590)))

(assert (= (and start!66802 res!520792) b!769820))

(assert (= (and b!769820 res!520795) b!769807))

(assert (= (and b!769807 res!520793) b!769815))

(assert (= (and b!769815 res!520782) b!769808))

(assert (= (and b!769808 res!520781) b!769823))

(assert (= (and b!769823 res!520791) b!769810))

(assert (= (and b!769810 res!520794) b!769819))

(assert (= (and b!769819 res!520784) b!769818))

(assert (= (and b!769818 res!520780) b!769816))

(assert (= (and b!769816 res!520788) b!769814))

(assert (= (and b!769814 res!520786) b!769812))

(assert (= (and b!769812 c!84909) b!769821))

(assert (= (and b!769812 (not c!84909)) b!769813))

(assert (= (and b!769812 res!520785) b!769811))

(assert (= (and b!769811 res!520789) b!769806))

(assert (= (and b!769806 res!520790) b!769817))

(assert (= (and b!769817 res!520783) b!769809))

(assert (= (and b!769806 (not res!520787)) b!769822))

(assert (= (and b!769822 c!84908) b!769824))

(assert (= (and b!769822 (not c!84908)) b!769805))

(declare-fun m!715231 () Bool)

(assert (=> b!769809 m!715231))

(assert (=> b!769809 m!715231))

(declare-fun m!715233 () Bool)

(assert (=> b!769809 m!715233))

(declare-fun m!715235 () Bool)

(assert (=> b!769815 m!715235))

(declare-fun m!715237 () Bool)

(assert (=> b!769806 m!715237))

(declare-fun m!715239 () Bool)

(assert (=> b!769806 m!715239))

(assert (=> b!769813 m!715231))

(assert (=> b!769813 m!715231))

(declare-fun m!715241 () Bool)

(assert (=> b!769813 m!715241))

(declare-fun m!715243 () Bool)

(assert (=> start!66802 m!715243))

(declare-fun m!715245 () Bool)

(assert (=> start!66802 m!715245))

(declare-fun m!715247 () Bool)

(assert (=> b!769819 m!715247))

(declare-fun m!715249 () Bool)

(assert (=> b!769810 m!715249))

(assert (=> b!769817 m!715231))

(assert (=> b!769817 m!715231))

(declare-fun m!715251 () Bool)

(assert (=> b!769817 m!715251))

(assert (=> b!769816 m!715231))

(assert (=> b!769816 m!715231))

(declare-fun m!715253 () Bool)

(assert (=> b!769816 m!715253))

(assert (=> b!769816 m!715253))

(assert (=> b!769816 m!715231))

(declare-fun m!715255 () Bool)

(assert (=> b!769816 m!715255))

(assert (=> b!769824 m!715231))

(assert (=> b!769824 m!715231))

(declare-fun m!715257 () Bool)

(assert (=> b!769824 m!715257))

(assert (=> b!769807 m!715231))

(assert (=> b!769807 m!715231))

(declare-fun m!715259 () Bool)

(assert (=> b!769807 m!715259))

(declare-fun m!715261 () Bool)

(assert (=> b!769814 m!715261))

(assert (=> b!769821 m!715231))

(assert (=> b!769821 m!715231))

(declare-fun m!715263 () Bool)

(assert (=> b!769821 m!715263))

(declare-fun m!715265 () Bool)

(assert (=> b!769811 m!715265))

(declare-fun m!715267 () Bool)

(assert (=> b!769811 m!715267))

(declare-fun m!715269 () Bool)

(assert (=> b!769811 m!715269))

(declare-fun m!715271 () Bool)

(assert (=> b!769811 m!715271))

(assert (=> b!769811 m!715267))

(declare-fun m!715273 () Bool)

(assert (=> b!769811 m!715273))

(declare-fun m!715275 () Bool)

(assert (=> b!769822 m!715275))

(assert (=> b!769805 m!715231))

(assert (=> b!769805 m!715231))

(assert (=> b!769805 m!715241))

(assert (=> b!769805 m!715231))

(declare-fun m!715277 () Bool)

(assert (=> b!769805 m!715277))

(declare-fun m!715279 () Bool)

(assert (=> b!769808 m!715279))

(declare-fun m!715281 () Bool)

(assert (=> b!769823 m!715281))

(push 1)

