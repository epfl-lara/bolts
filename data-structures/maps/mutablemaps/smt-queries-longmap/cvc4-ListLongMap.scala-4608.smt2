; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64304 () Bool)

(assert start!64304)

(declare-fun b!721886 () Bool)

(declare-fun e!404731 () Bool)

(declare-fun e!404730 () Bool)

(assert (=> b!721886 (= e!404731 e!404730)))

(declare-fun res!483805 () Bool)

(assert (=> b!721886 (=> (not res!483805) (not e!404730))))

(declare-datatypes ((array!40838 0))(
  ( (array!40839 (arr!19538 (Array (_ BitVec 32) (_ BitVec 64))) (size!19959 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40838)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7145 0))(
  ( (MissingZero!7145 (index!30947 (_ BitVec 32))) (Found!7145 (index!30948 (_ BitVec 32))) (Intermediate!7145 (undefined!7957 Bool) (index!30949 (_ BitVec 32)) (x!61979 (_ BitVec 32))) (Undefined!7145) (MissingVacant!7145 (index!30950 (_ BitVec 32))) )
))
(declare-fun lt!320160 () SeekEntryResult!7145)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40838 (_ BitVec 32)) SeekEntryResult!7145)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721886 (= res!483805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19538 a!3186) j!159) mask!3328) (select (arr!19538 a!3186) j!159) a!3186 mask!3328) lt!320160))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721886 (= lt!320160 (Intermediate!7145 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721887 () Bool)

(declare-fun res!483803 () Bool)

(declare-fun e!404729 () Bool)

(assert (=> b!721887 (=> (not res!483803) (not e!404729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721887 (= res!483803 (validKeyInArray!0 (select (arr!19538 a!3186) j!159)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404733 () Bool)

(declare-fun b!721888 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!721888 (= e!404733 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19538 a!3186) j!159) a!3186 mask!3328) lt!320160)))))

(declare-fun b!721889 () Bool)

(assert (=> b!721889 (= e!404730 false)))

(declare-fun lt!320162 () Bool)

(assert (=> b!721889 (= lt!320162 e!404733)))

(declare-fun c!79416 () Bool)

(assert (=> b!721889 (= c!79416 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721890 () Bool)

(declare-fun res!483802 () Bool)

(assert (=> b!721890 (=> (not res!483802) (not e!404731))))

(assert (=> b!721890 (= res!483802 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19959 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19959 a!3186))))))

(declare-fun res!483804 () Bool)

(assert (=> start!64304 (=> (not res!483804) (not e!404729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64304 (= res!483804 (validMask!0 mask!3328))))

(assert (=> start!64304 e!404729))

(assert (=> start!64304 true))

(declare-fun array_inv!15312 (array!40838) Bool)

(assert (=> start!64304 (array_inv!15312 a!3186)))

(declare-fun b!721891 () Bool)

(declare-fun res!483797 () Bool)

(assert (=> b!721891 (=> (not res!483797) (not e!404729))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721891 (= res!483797 (and (= (size!19959 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19959 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19959 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721892 () Bool)

(declare-fun res!483806 () Bool)

(assert (=> b!721892 (=> (not res!483806) (not e!404729))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!721892 (= res!483806 (validKeyInArray!0 k!2102))))

(declare-fun b!721893 () Bool)

(declare-fun res!483800 () Bool)

(assert (=> b!721893 (=> (not res!483800) (not e!404729))))

(declare-fun arrayContainsKey!0 (array!40838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721893 (= res!483800 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721894 () Bool)

(assert (=> b!721894 (= e!404729 e!404731)))

(declare-fun res!483807 () Bool)

(assert (=> b!721894 (=> (not res!483807) (not e!404731))))

(declare-fun lt!320161 () SeekEntryResult!7145)

(assert (=> b!721894 (= res!483807 (or (= lt!320161 (MissingZero!7145 i!1173)) (= lt!320161 (MissingVacant!7145 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40838 (_ BitVec 32)) SeekEntryResult!7145)

(assert (=> b!721894 (= lt!320161 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721895 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40838 (_ BitVec 32)) SeekEntryResult!7145)

(assert (=> b!721895 (= e!404733 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19538 a!3186) j!159) a!3186 mask!3328) (Found!7145 j!159))))))

(declare-fun b!721896 () Bool)

(declare-fun res!483801 () Bool)

(assert (=> b!721896 (=> (not res!483801) (not e!404731))))

(declare-datatypes ((List!13593 0))(
  ( (Nil!13590) (Cons!13589 (h!14643 (_ BitVec 64)) (t!19916 List!13593)) )
))
(declare-fun arrayNoDuplicates!0 (array!40838 (_ BitVec 32) List!13593) Bool)

(assert (=> b!721896 (= res!483801 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13590))))

(declare-fun b!721897 () Bool)

(declare-fun res!483798 () Bool)

(assert (=> b!721897 (=> (not res!483798) (not e!404730))))

(assert (=> b!721897 (= res!483798 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19538 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721898 () Bool)

(declare-fun res!483799 () Bool)

(assert (=> b!721898 (=> (not res!483799) (not e!404731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40838 (_ BitVec 32)) Bool)

(assert (=> b!721898 (= res!483799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64304 res!483804) b!721891))

(assert (= (and b!721891 res!483797) b!721887))

(assert (= (and b!721887 res!483803) b!721892))

(assert (= (and b!721892 res!483806) b!721893))

(assert (= (and b!721893 res!483800) b!721894))

(assert (= (and b!721894 res!483807) b!721898))

(assert (= (and b!721898 res!483799) b!721896))

(assert (= (and b!721896 res!483801) b!721890))

(assert (= (and b!721890 res!483802) b!721886))

(assert (= (and b!721886 res!483805) b!721897))

(assert (= (and b!721897 res!483798) b!721889))

(assert (= (and b!721889 c!79416) b!721888))

(assert (= (and b!721889 (not c!79416)) b!721895))

(declare-fun m!676635 () Bool)

(assert (=> start!64304 m!676635))

(declare-fun m!676637 () Bool)

(assert (=> start!64304 m!676637))

(declare-fun m!676639 () Bool)

(assert (=> b!721887 m!676639))

(assert (=> b!721887 m!676639))

(declare-fun m!676641 () Bool)

(assert (=> b!721887 m!676641))

(assert (=> b!721895 m!676639))

(assert (=> b!721895 m!676639))

(declare-fun m!676643 () Bool)

(assert (=> b!721895 m!676643))

(declare-fun m!676645 () Bool)

(assert (=> b!721896 m!676645))

(declare-fun m!676647 () Bool)

(assert (=> b!721892 m!676647))

(assert (=> b!721888 m!676639))

(assert (=> b!721888 m!676639))

(declare-fun m!676649 () Bool)

(assert (=> b!721888 m!676649))

(assert (=> b!721886 m!676639))

(assert (=> b!721886 m!676639))

(declare-fun m!676651 () Bool)

(assert (=> b!721886 m!676651))

(assert (=> b!721886 m!676651))

(assert (=> b!721886 m!676639))

(declare-fun m!676653 () Bool)

(assert (=> b!721886 m!676653))

(declare-fun m!676655 () Bool)

(assert (=> b!721897 m!676655))

(declare-fun m!676657 () Bool)

(assert (=> b!721893 m!676657))

(declare-fun m!676659 () Bool)

(assert (=> b!721894 m!676659))

(declare-fun m!676661 () Bool)

(assert (=> b!721898 m!676661))

(push 1)

