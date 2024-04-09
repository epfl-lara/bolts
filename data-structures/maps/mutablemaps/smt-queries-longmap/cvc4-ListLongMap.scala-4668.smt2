; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64946 () Bool)

(assert start!64946)

(declare-fun b!732737 () Bool)

(declare-fun res!492434 () Bool)

(declare-fun e!410036 () Bool)

(assert (=> b!732737 (=> (not res!492434) (not e!410036))))

(declare-datatypes ((array!41210 0))(
  ( (array!41211 (arr!19718 (Array (_ BitVec 32) (_ BitVec 64))) (size!20139 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41210)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732737 (= res!492434 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732739 () Bool)

(declare-fun res!492426 () Bool)

(declare-fun e!410041 () Bool)

(assert (=> b!732739 (=> (not res!492426) (not e!410041))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732739 (= res!492426 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20139 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20139 a!3186))))))

(declare-fun b!732740 () Bool)

(declare-fun res!492431 () Bool)

(assert (=> b!732740 (=> (not res!492431) (not e!410036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732740 (= res!492431 (validKeyInArray!0 k!2102))))

(declare-fun b!732741 () Bool)

(declare-fun res!492423 () Bool)

(assert (=> b!732741 (=> (not res!492423) (not e!410041))))

(declare-datatypes ((List!13773 0))(
  ( (Nil!13770) (Cons!13769 (h!14835 (_ BitVec 64)) (t!20096 List!13773)) )
))
(declare-fun arrayNoDuplicates!0 (array!41210 (_ BitVec 32) List!13773) Bool)

(assert (=> b!732741 (= res!492423 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13770))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!410042 () Bool)

(declare-datatypes ((SeekEntryResult!7325 0))(
  ( (MissingZero!7325 (index!31667 (_ BitVec 32))) (Found!7325 (index!31668 (_ BitVec 32))) (Intermediate!7325 (undefined!8137 Bool) (index!31669 (_ BitVec 32)) (x!62684 (_ BitVec 32))) (Undefined!7325) (MissingVacant!7325 (index!31670 (_ BitVec 32))) )
))
(declare-fun lt!324751 () SeekEntryResult!7325)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!732742 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41210 (_ BitVec 32)) SeekEntryResult!7325)

(assert (=> b!732742 (= e!410042 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19718 a!3186) j!159) a!3186 mask!3328) lt!324751))))

(declare-fun b!732743 () Bool)

(assert (=> b!732743 (= e!410036 e!410041)))

(declare-fun res!492433 () Bool)

(assert (=> b!732743 (=> (not res!492433) (not e!410041))))

(declare-fun lt!324753 () SeekEntryResult!7325)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732743 (= res!492433 (or (= lt!324753 (MissingZero!7325 i!1173)) (= lt!324753 (MissingVacant!7325 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41210 (_ BitVec 32)) SeekEntryResult!7325)

(assert (=> b!732743 (= lt!324753 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732744 () Bool)

(declare-fun e!410043 () Bool)

(declare-fun lt!324752 () SeekEntryResult!7325)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41210 (_ BitVec 32)) SeekEntryResult!7325)

(assert (=> b!732744 (= e!410043 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19718 a!3186) j!159) a!3186 mask!3328) lt!324752))))

(declare-fun b!732745 () Bool)

(declare-fun res!492422 () Bool)

(declare-fun e!410039 () Bool)

(assert (=> b!732745 (=> (not res!492422) (not e!410039))))

(assert (=> b!732745 (= res!492422 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19718 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732746 () Bool)

(assert (=> b!732746 (= e!410041 e!410039)))

(declare-fun res!492424 () Bool)

(assert (=> b!732746 (=> (not res!492424) (not e!410039))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732746 (= res!492424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19718 a!3186) j!159) mask!3328) (select (arr!19718 a!3186) j!159) a!3186 mask!3328) lt!324752))))

(assert (=> b!732746 (= lt!324752 (Intermediate!7325 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732747 () Bool)

(declare-fun res!492435 () Bool)

(assert (=> b!732747 (=> (not res!492435) (not e!410036))))

(assert (=> b!732747 (= res!492435 (validKeyInArray!0 (select (arr!19718 a!3186) j!159)))))

(declare-fun b!732748 () Bool)

(declare-fun res!492430 () Bool)

(assert (=> b!732748 (=> (not res!492430) (not e!410036))))

(assert (=> b!732748 (= res!492430 (and (= (size!20139 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20139 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20139 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732749 () Bool)

(declare-fun e!410040 () Bool)

(assert (=> b!732749 (= e!410040 true)))

(declare-fun lt!324754 () SeekEntryResult!7325)

(assert (=> b!732749 (= lt!324754 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19718 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732750 () Bool)

(declare-fun res!492432 () Bool)

(assert (=> b!732750 (=> (not res!492432) (not e!410039))))

(assert (=> b!732750 (= res!492432 e!410043)))

(declare-fun c!80535 () Bool)

(assert (=> b!732750 (= c!80535 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732751 () Bool)

(declare-fun e!410038 () Bool)

(declare-fun e!410037 () Bool)

(assert (=> b!732751 (= e!410038 (not e!410037))))

(declare-fun res!492425 () Bool)

(assert (=> b!732751 (=> res!492425 e!410037)))

(declare-fun lt!324750 () SeekEntryResult!7325)

(assert (=> b!732751 (= res!492425 (or (not (is-Intermediate!7325 lt!324750)) (bvsge x!1131 (x!62684 lt!324750))))))

(declare-fun e!410034 () Bool)

(assert (=> b!732751 e!410034))

(declare-fun res!492436 () Bool)

(assert (=> b!732751 (=> (not res!492436) (not e!410034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41210 (_ BitVec 32)) Bool)

(assert (=> b!732751 (= res!492436 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24968 0))(
  ( (Unit!24969) )
))
(declare-fun lt!324755 () Unit!24968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41210 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24968)

(assert (=> b!732751 (= lt!324755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732752 () Bool)

(assert (=> b!732752 (= e!410034 e!410042)))

(declare-fun res!492428 () Bool)

(assert (=> b!732752 (=> (not res!492428) (not e!410042))))

(assert (=> b!732752 (= res!492428 (= (seekEntryOrOpen!0 (select (arr!19718 a!3186) j!159) a!3186 mask!3328) lt!324751))))

(assert (=> b!732752 (= lt!324751 (Found!7325 j!159))))

(declare-fun b!732753 () Bool)

(declare-fun res!492438 () Bool)

(assert (=> b!732753 (=> (not res!492438) (not e!410041))))

(assert (=> b!732753 (= res!492438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!492429 () Bool)

(assert (=> start!64946 (=> (not res!492429) (not e!410036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64946 (= res!492429 (validMask!0 mask!3328))))

(assert (=> start!64946 e!410036))

(assert (=> start!64946 true))

(declare-fun array_inv!15492 (array!41210) Bool)

(assert (=> start!64946 (array_inv!15492 a!3186)))

(declare-fun b!732738 () Bool)

(assert (=> b!732738 (= e!410043 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19718 a!3186) j!159) a!3186 mask!3328) (Found!7325 j!159)))))

(declare-fun b!732754 () Bool)

(assert (=> b!732754 (= e!410037 e!410040)))

(declare-fun res!492437 () Bool)

(assert (=> b!732754 (=> res!492437 e!410040)))

(assert (=> b!732754 (= res!492437 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324758 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732754 (= lt!324758 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732755 () Bool)

(assert (=> b!732755 (= e!410039 e!410038)))

(declare-fun res!492427 () Bool)

(assert (=> b!732755 (=> (not res!492427) (not e!410038))))

(declare-fun lt!324749 () SeekEntryResult!7325)

(assert (=> b!732755 (= res!492427 (= lt!324749 lt!324750))))

(declare-fun lt!324756 () (_ BitVec 64))

(declare-fun lt!324757 () array!41210)

(assert (=> b!732755 (= lt!324750 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324756 lt!324757 mask!3328))))

(assert (=> b!732755 (= lt!324749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324756 mask!3328) lt!324756 lt!324757 mask!3328))))

(assert (=> b!732755 (= lt!324756 (select (store (arr!19718 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732755 (= lt!324757 (array!41211 (store (arr!19718 a!3186) i!1173 k!2102) (size!20139 a!3186)))))

(assert (= (and start!64946 res!492429) b!732748))

(assert (= (and b!732748 res!492430) b!732747))

(assert (= (and b!732747 res!492435) b!732740))

(assert (= (and b!732740 res!492431) b!732737))

(assert (= (and b!732737 res!492434) b!732743))

(assert (= (and b!732743 res!492433) b!732753))

(assert (= (and b!732753 res!492438) b!732741))

(assert (= (and b!732741 res!492423) b!732739))

(assert (= (and b!732739 res!492426) b!732746))

(assert (= (and b!732746 res!492424) b!732745))

(assert (= (and b!732745 res!492422) b!732750))

(assert (= (and b!732750 c!80535) b!732744))

(assert (= (and b!732750 (not c!80535)) b!732738))

(assert (= (and b!732750 res!492432) b!732755))

(assert (= (and b!732755 res!492427) b!732751))

(assert (= (and b!732751 res!492436) b!732752))

(assert (= (and b!732752 res!492428) b!732742))

(assert (= (and b!732751 (not res!492425)) b!732754))

(assert (= (and b!732754 (not res!492437)) b!732749))

(declare-fun m!685825 () Bool)

(assert (=> b!732740 m!685825))

(declare-fun m!685827 () Bool)

(assert (=> b!732753 m!685827))

(declare-fun m!685829 () Bool)

(assert (=> b!732737 m!685829))

(declare-fun m!685831 () Bool)

(assert (=> b!732754 m!685831))

(declare-fun m!685833 () Bool)

(assert (=> b!732755 m!685833))

(declare-fun m!685835 () Bool)

(assert (=> b!732755 m!685835))

(declare-fun m!685837 () Bool)

(assert (=> b!732755 m!685837))

(assert (=> b!732755 m!685833))

(declare-fun m!685839 () Bool)

(assert (=> b!732755 m!685839))

(declare-fun m!685841 () Bool)

(assert (=> b!732755 m!685841))

(declare-fun m!685843 () Bool)

(assert (=> b!732742 m!685843))

(assert (=> b!732742 m!685843))

(declare-fun m!685845 () Bool)

(assert (=> b!732742 m!685845))

(declare-fun m!685847 () Bool)

(assert (=> start!64946 m!685847))

(declare-fun m!685849 () Bool)

(assert (=> start!64946 m!685849))

(assert (=> b!732746 m!685843))

(assert (=> b!732746 m!685843))

(declare-fun m!685851 () Bool)

(assert (=> b!732746 m!685851))

(assert (=> b!732746 m!685851))

(assert (=> b!732746 m!685843))

(declare-fun m!685853 () Bool)

(assert (=> b!732746 m!685853))

(assert (=> b!732749 m!685843))

(assert (=> b!732749 m!685843))

(declare-fun m!685855 () Bool)

(assert (=> b!732749 m!685855))

(declare-fun m!685857 () Bool)

(assert (=> b!732741 m!685857))

(assert (=> b!732738 m!685843))

(assert (=> b!732738 m!685843))

(assert (=> b!732738 m!685855))

(declare-fun m!685859 () Bool)

(assert (=> b!732745 m!685859))

(declare-fun m!685861 () Bool)

(assert (=> b!732743 m!685861))

(assert (=> b!732744 m!685843))

(assert (=> b!732744 m!685843))

(declare-fun m!685863 () Bool)

(assert (=> b!732744 m!685863))

(assert (=> b!732747 m!685843))

(assert (=> b!732747 m!685843))

(declare-fun m!685865 () Bool)

(assert (=> b!732747 m!685865))

(assert (=> b!732752 m!685843))

(assert (=> b!732752 m!685843))

(declare-fun m!685867 () Bool)

(assert (=> b!732752 m!685867))

(declare-fun m!685869 () Bool)

(assert (=> b!732751 m!685869))

(declare-fun m!685871 () Bool)

(assert (=> b!732751 m!685871))

(push 1)

