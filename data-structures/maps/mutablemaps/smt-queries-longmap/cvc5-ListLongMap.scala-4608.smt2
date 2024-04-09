; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64300 () Bool)

(assert start!64300)

(declare-datatypes ((array!40834 0))(
  ( (array!40835 (arr!19536 (Array (_ BitVec 32) (_ BitVec 64))) (size!19957 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40834)

(declare-fun e!404701 () Bool)

(declare-datatypes ((SeekEntryResult!7143 0))(
  ( (MissingZero!7143 (index!30939 (_ BitVec 32))) (Found!7143 (index!30940 (_ BitVec 32))) (Intermediate!7143 (undefined!7955 Bool) (index!30941 (_ BitVec 32)) (x!61977 (_ BitVec 32))) (Undefined!7143) (MissingVacant!7143 (index!30942 (_ BitVec 32))) )
))
(declare-fun lt!320144 () SeekEntryResult!7143)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721808 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40834 (_ BitVec 32)) SeekEntryResult!7143)

(assert (=> b!721808 (= e!404701 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19536 a!3186) j!159) a!3186 mask!3328) lt!320144)))))

(declare-fun res!483738 () Bool)

(declare-fun e!404702 () Bool)

(assert (=> start!64300 (=> (not res!483738) (not e!404702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64300 (= res!483738 (validMask!0 mask!3328))))

(assert (=> start!64300 e!404702))

(assert (=> start!64300 true))

(declare-fun array_inv!15310 (array!40834) Bool)

(assert (=> start!64300 (array_inv!15310 a!3186)))

(declare-fun b!721809 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40834 (_ BitVec 32)) SeekEntryResult!7143)

(assert (=> b!721809 (= e!404701 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19536 a!3186) j!159) a!3186 mask!3328) (Found!7143 j!159))))))

(declare-fun b!721810 () Bool)

(declare-fun res!483731 () Bool)

(declare-fun e!404699 () Bool)

(assert (=> b!721810 (=> (not res!483731) (not e!404699))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721810 (= res!483731 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19957 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19957 a!3186))))))

(declare-fun b!721811 () Bool)

(declare-fun res!483737 () Bool)

(assert (=> b!721811 (=> (not res!483737) (not e!404699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40834 (_ BitVec 32)) Bool)

(assert (=> b!721811 (= res!483737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721812 () Bool)

(assert (=> b!721812 (= e!404702 e!404699)))

(declare-fun res!483733 () Bool)

(assert (=> b!721812 (=> (not res!483733) (not e!404699))))

(declare-fun lt!320142 () SeekEntryResult!7143)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721812 (= res!483733 (or (= lt!320142 (MissingZero!7143 i!1173)) (= lt!320142 (MissingVacant!7143 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40834 (_ BitVec 32)) SeekEntryResult!7143)

(assert (=> b!721812 (= lt!320142 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721813 () Bool)

(declare-fun res!483741 () Bool)

(assert (=> b!721813 (=> (not res!483741) (not e!404699))))

(declare-datatypes ((List!13591 0))(
  ( (Nil!13588) (Cons!13587 (h!14641 (_ BitVec 64)) (t!19914 List!13591)) )
))
(declare-fun arrayNoDuplicates!0 (array!40834 (_ BitVec 32) List!13591) Bool)

(assert (=> b!721813 (= res!483741 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13588))))

(declare-fun b!721814 () Bool)

(declare-fun res!483732 () Bool)

(declare-fun e!404700 () Bool)

(assert (=> b!721814 (=> (not res!483732) (not e!404700))))

(assert (=> b!721814 (= res!483732 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19536 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721815 () Bool)

(declare-fun res!483740 () Bool)

(assert (=> b!721815 (=> (not res!483740) (not e!404702))))

(assert (=> b!721815 (= res!483740 (and (= (size!19957 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19957 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19957 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721816 () Bool)

(declare-fun res!483739 () Bool)

(assert (=> b!721816 (=> (not res!483739) (not e!404702))))

(declare-fun arrayContainsKey!0 (array!40834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721816 (= res!483739 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721817 () Bool)

(declare-fun res!483736 () Bool)

(assert (=> b!721817 (=> (not res!483736) (not e!404702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721817 (= res!483736 (validKeyInArray!0 (select (arr!19536 a!3186) j!159)))))

(declare-fun b!721818 () Bool)

(assert (=> b!721818 (= e!404699 e!404700)))

(declare-fun res!483735 () Bool)

(assert (=> b!721818 (=> (not res!483735) (not e!404700))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721818 (= res!483735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19536 a!3186) j!159) mask!3328) (select (arr!19536 a!3186) j!159) a!3186 mask!3328) lt!320144))))

(assert (=> b!721818 (= lt!320144 (Intermediate!7143 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721819 () Bool)

(declare-fun res!483734 () Bool)

(assert (=> b!721819 (=> (not res!483734) (not e!404702))))

(assert (=> b!721819 (= res!483734 (validKeyInArray!0 k!2102))))

(declare-fun b!721820 () Bool)

(assert (=> b!721820 (= e!404700 false)))

(declare-fun lt!320143 () Bool)

(assert (=> b!721820 (= lt!320143 e!404701)))

(declare-fun c!79410 () Bool)

(assert (=> b!721820 (= c!79410 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64300 res!483738) b!721815))

(assert (= (and b!721815 res!483740) b!721817))

(assert (= (and b!721817 res!483736) b!721819))

(assert (= (and b!721819 res!483734) b!721816))

(assert (= (and b!721816 res!483739) b!721812))

(assert (= (and b!721812 res!483733) b!721811))

(assert (= (and b!721811 res!483737) b!721813))

(assert (= (and b!721813 res!483741) b!721810))

(assert (= (and b!721810 res!483731) b!721818))

(assert (= (and b!721818 res!483735) b!721814))

(assert (= (and b!721814 res!483732) b!721820))

(assert (= (and b!721820 c!79410) b!721808))

(assert (= (and b!721820 (not c!79410)) b!721809))

(declare-fun m!676579 () Bool)

(assert (=> b!721809 m!676579))

(assert (=> b!721809 m!676579))

(declare-fun m!676581 () Bool)

(assert (=> b!721809 m!676581))

(declare-fun m!676583 () Bool)

(assert (=> b!721816 m!676583))

(assert (=> b!721808 m!676579))

(assert (=> b!721808 m!676579))

(declare-fun m!676585 () Bool)

(assert (=> b!721808 m!676585))

(declare-fun m!676587 () Bool)

(assert (=> b!721814 m!676587))

(declare-fun m!676589 () Bool)

(assert (=> b!721811 m!676589))

(assert (=> b!721817 m!676579))

(assert (=> b!721817 m!676579))

(declare-fun m!676591 () Bool)

(assert (=> b!721817 m!676591))

(declare-fun m!676593 () Bool)

(assert (=> start!64300 m!676593))

(declare-fun m!676595 () Bool)

(assert (=> start!64300 m!676595))

(declare-fun m!676597 () Bool)

(assert (=> b!721813 m!676597))

(assert (=> b!721818 m!676579))

(assert (=> b!721818 m!676579))

(declare-fun m!676599 () Bool)

(assert (=> b!721818 m!676599))

(assert (=> b!721818 m!676599))

(assert (=> b!721818 m!676579))

(declare-fun m!676601 () Bool)

(assert (=> b!721818 m!676601))

(declare-fun m!676603 () Bool)

(assert (=> b!721812 m!676603))

(declare-fun m!676605 () Bool)

(assert (=> b!721819 m!676605))

(push 1)

