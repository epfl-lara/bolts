; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64556 () Bool)

(assert start!64556)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41027 0))(
  ( (array!41028 (arr!19631 (Array (_ BitVec 32) (_ BitVec 64))) (size!20052 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41027)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7238 0))(
  ( (MissingZero!7238 (index!31319 (_ BitVec 32))) (Found!7238 (index!31320 (_ BitVec 32))) (Intermediate!7238 (undefined!8050 Bool) (index!31321 (_ BitVec 32)) (x!62329 (_ BitVec 32))) (Undefined!7238) (MissingVacant!7238 (index!31322 (_ BitVec 32))) )
))
(declare-fun lt!321847 () SeekEntryResult!7238)

(declare-fun e!406862 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!726681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41027 (_ BitVec 32)) SeekEntryResult!7238)

(assert (=> b!726681 (= e!406862 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19631 a!3186) j!159) a!3186 mask!3328) lt!321847))))

(declare-fun b!726682 () Bool)

(declare-fun res!487771 () Bool)

(declare-fun e!406863 () Bool)

(assert (=> b!726682 (=> (not res!487771) (not e!406863))))

(declare-fun e!406866 () Bool)

(assert (=> b!726682 (= res!487771 e!406866)))

(declare-fun c!79833 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!726682 (= c!79833 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726683 () Bool)

(declare-fun e!406864 () Bool)

(assert (=> b!726683 (= e!406863 e!406864)))

(declare-fun res!487764 () Bool)

(assert (=> b!726683 (=> (not res!487764) (not e!406864))))

(declare-fun lt!321843 () SeekEntryResult!7238)

(declare-fun lt!321850 () SeekEntryResult!7238)

(assert (=> b!726683 (= res!487764 (= lt!321843 lt!321850))))

(declare-fun lt!321844 () (_ BitVec 64))

(declare-fun lt!321848 () array!41027)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41027 (_ BitVec 32)) SeekEntryResult!7238)

(assert (=> b!726683 (= lt!321850 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321844 lt!321848 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726683 (= lt!321843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321844 mask!3328) lt!321844 lt!321848 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!726683 (= lt!321844 (select (store (arr!19631 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726683 (= lt!321848 (array!41028 (store (arr!19631 a!3186) i!1173 k!2102) (size!20052 a!3186)))))

(declare-fun b!726684 () Bool)

(declare-fun e!406860 () Bool)

(assert (=> b!726684 (= e!406860 true)))

(declare-fun lt!321849 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726684 (= lt!321849 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726685 () Bool)

(declare-fun lt!321851 () SeekEntryResult!7238)

(assert (=> b!726685 (= e!406866 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19631 a!3186) j!159) a!3186 mask!3328) lt!321851))))

(declare-fun b!726686 () Bool)

(declare-fun e!406859 () Bool)

(assert (=> b!726686 (= e!406859 e!406863)))

(declare-fun res!487768 () Bool)

(assert (=> b!726686 (=> (not res!487768) (not e!406863))))

(assert (=> b!726686 (= res!487768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19631 a!3186) j!159) mask!3328) (select (arr!19631 a!3186) j!159) a!3186 mask!3328) lt!321851))))

(assert (=> b!726686 (= lt!321851 (Intermediate!7238 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726687 () Bool)

(assert (=> b!726687 (= e!406866 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19631 a!3186) j!159) a!3186 mask!3328) (Found!7238 j!159)))))

(declare-fun b!726688 () Bool)

(declare-fun res!487776 () Bool)

(assert (=> b!726688 (=> (not res!487776) (not e!406859))))

(declare-datatypes ((List!13686 0))(
  ( (Nil!13683) (Cons!13682 (h!14739 (_ BitVec 64)) (t!20009 List!13686)) )
))
(declare-fun arrayNoDuplicates!0 (array!41027 (_ BitVec 32) List!13686) Bool)

(assert (=> b!726688 (= res!487776 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13683))))

(declare-fun b!726689 () Bool)

(declare-fun res!487762 () Bool)

(assert (=> b!726689 (=> (not res!487762) (not e!406863))))

(assert (=> b!726689 (= res!487762 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19631 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726690 () Bool)

(declare-fun res!487767 () Bool)

(declare-fun e!406865 () Bool)

(assert (=> b!726690 (=> (not res!487767) (not e!406865))))

(declare-fun arrayContainsKey!0 (array!41027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726690 (= res!487767 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!487770 () Bool)

(assert (=> start!64556 (=> (not res!487770) (not e!406865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64556 (= res!487770 (validMask!0 mask!3328))))

(assert (=> start!64556 e!406865))

(assert (=> start!64556 true))

(declare-fun array_inv!15405 (array!41027) Bool)

(assert (=> start!64556 (array_inv!15405 a!3186)))

(declare-fun b!726691 () Bool)

(declare-fun e!406858 () Bool)

(assert (=> b!726691 (= e!406858 e!406862)))

(declare-fun res!487763 () Bool)

(assert (=> b!726691 (=> (not res!487763) (not e!406862))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41027 (_ BitVec 32)) SeekEntryResult!7238)

(assert (=> b!726691 (= res!487763 (= (seekEntryOrOpen!0 (select (arr!19631 a!3186) j!159) a!3186 mask!3328) lt!321847))))

(assert (=> b!726691 (= lt!321847 (Found!7238 j!159))))

(declare-fun b!726692 () Bool)

(declare-fun res!487773 () Bool)

(assert (=> b!726692 (=> (not res!487773) (not e!406865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726692 (= res!487773 (validKeyInArray!0 (select (arr!19631 a!3186) j!159)))))

(declare-fun b!726693 () Bool)

(declare-fun res!487766 () Bool)

(assert (=> b!726693 (=> (not res!487766) (not e!406859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41027 (_ BitVec 32)) Bool)

(assert (=> b!726693 (= res!487766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726694 () Bool)

(assert (=> b!726694 (= e!406865 e!406859)))

(declare-fun res!487775 () Bool)

(assert (=> b!726694 (=> (not res!487775) (not e!406859))))

(declare-fun lt!321846 () SeekEntryResult!7238)

(assert (=> b!726694 (= res!487775 (or (= lt!321846 (MissingZero!7238 i!1173)) (= lt!321846 (MissingVacant!7238 i!1173))))))

(assert (=> b!726694 (= lt!321846 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726695 () Bool)

(assert (=> b!726695 (= e!406864 (not e!406860))))

(declare-fun res!487769 () Bool)

(assert (=> b!726695 (=> res!487769 e!406860)))

(assert (=> b!726695 (= res!487769 (or (not (is-Intermediate!7238 lt!321850)) (bvsge x!1131 (x!62329 lt!321850))))))

(assert (=> b!726695 e!406858))

(declare-fun res!487772 () Bool)

(assert (=> b!726695 (=> (not res!487772) (not e!406858))))

(assert (=> b!726695 (= res!487772 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24794 0))(
  ( (Unit!24795) )
))
(declare-fun lt!321845 () Unit!24794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24794)

(assert (=> b!726695 (= lt!321845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726696 () Bool)

(declare-fun res!487774 () Bool)

(assert (=> b!726696 (=> (not res!487774) (not e!406859))))

(assert (=> b!726696 (= res!487774 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20052 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20052 a!3186))))))

(declare-fun b!726697 () Bool)

(declare-fun res!487765 () Bool)

(assert (=> b!726697 (=> (not res!487765) (not e!406865))))

(assert (=> b!726697 (= res!487765 (validKeyInArray!0 k!2102))))

(declare-fun b!726698 () Bool)

(declare-fun res!487761 () Bool)

(assert (=> b!726698 (=> (not res!487761) (not e!406865))))

(assert (=> b!726698 (= res!487761 (and (= (size!20052 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20052 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20052 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64556 res!487770) b!726698))

(assert (= (and b!726698 res!487761) b!726692))

(assert (= (and b!726692 res!487773) b!726697))

(assert (= (and b!726697 res!487765) b!726690))

(assert (= (and b!726690 res!487767) b!726694))

(assert (= (and b!726694 res!487775) b!726693))

(assert (= (and b!726693 res!487766) b!726688))

(assert (= (and b!726688 res!487776) b!726696))

(assert (= (and b!726696 res!487774) b!726686))

(assert (= (and b!726686 res!487768) b!726689))

(assert (= (and b!726689 res!487762) b!726682))

(assert (= (and b!726682 c!79833) b!726685))

(assert (= (and b!726682 (not c!79833)) b!726687))

(assert (= (and b!726682 res!487771) b!726683))

(assert (= (and b!726683 res!487764) b!726695))

(assert (= (and b!726695 res!487772) b!726691))

(assert (= (and b!726691 res!487763) b!726681))

(assert (= (and b!726695 (not res!487769)) b!726684))

(declare-fun m!680803 () Bool)

(assert (=> b!726695 m!680803))

(declare-fun m!680805 () Bool)

(assert (=> b!726695 m!680805))

(declare-fun m!680807 () Bool)

(assert (=> b!726685 m!680807))

(assert (=> b!726685 m!680807))

(declare-fun m!680809 () Bool)

(assert (=> b!726685 m!680809))

(declare-fun m!680811 () Bool)

(assert (=> start!64556 m!680811))

(declare-fun m!680813 () Bool)

(assert (=> start!64556 m!680813))

(declare-fun m!680815 () Bool)

(assert (=> b!726690 m!680815))

(declare-fun m!680817 () Bool)

(assert (=> b!726683 m!680817))

(declare-fun m!680819 () Bool)

(assert (=> b!726683 m!680819))

(declare-fun m!680821 () Bool)

(assert (=> b!726683 m!680821))

(declare-fun m!680823 () Bool)

(assert (=> b!726683 m!680823))

(declare-fun m!680825 () Bool)

(assert (=> b!726683 m!680825))

(assert (=> b!726683 m!680817))

(declare-fun m!680827 () Bool)

(assert (=> b!726689 m!680827))

(assert (=> b!726681 m!680807))

(assert (=> b!726681 m!680807))

(declare-fun m!680829 () Bool)

(assert (=> b!726681 m!680829))

(assert (=> b!726691 m!680807))

(assert (=> b!726691 m!680807))

(declare-fun m!680831 () Bool)

(assert (=> b!726691 m!680831))

(declare-fun m!680833 () Bool)

(assert (=> b!726697 m!680833))

(assert (=> b!726686 m!680807))

(assert (=> b!726686 m!680807))

(declare-fun m!680835 () Bool)

(assert (=> b!726686 m!680835))

(assert (=> b!726686 m!680835))

(assert (=> b!726686 m!680807))

(declare-fun m!680837 () Bool)

(assert (=> b!726686 m!680837))

(declare-fun m!680839 () Bool)

(assert (=> b!726694 m!680839))

(assert (=> b!726687 m!680807))

(assert (=> b!726687 m!680807))

(declare-fun m!680841 () Bool)

(assert (=> b!726687 m!680841))

(declare-fun m!680843 () Bool)

(assert (=> b!726684 m!680843))

(declare-fun m!680845 () Bool)

(assert (=> b!726693 m!680845))

(declare-fun m!680847 () Bool)

(assert (=> b!726688 m!680847))

(assert (=> b!726692 m!680807))

(assert (=> b!726692 m!680807))

(declare-fun m!680849 () Bool)

(assert (=> b!726692 m!680849))

(push 1)

