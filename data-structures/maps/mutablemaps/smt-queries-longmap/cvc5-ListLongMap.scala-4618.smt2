; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64360 () Bool)

(assert start!64360)

(declare-fun b!723072 () Bool)

(declare-fun res!484823 () Bool)

(declare-fun e!405162 () Bool)

(assert (=> b!723072 (=> (not res!484823) (not e!405162))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40894 0))(
  ( (array!40895 (arr!19566 (Array (_ BitVec 32) (_ BitVec 64))) (size!19987 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40894)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723072 (= res!484823 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19566 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!484826 () Bool)

(declare-fun e!405163 () Bool)

(assert (=> start!64360 (=> (not res!484826) (not e!405163))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64360 (= res!484826 (validMask!0 mask!3328))))

(assert (=> start!64360 e!405163))

(assert (=> start!64360 true))

(declare-fun array_inv!15340 (array!40894) Bool)

(assert (=> start!64360 (array_inv!15340 a!3186)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405164 () Bool)

(declare-fun b!723073 () Bool)

(declare-datatypes ((SeekEntryResult!7173 0))(
  ( (MissingZero!7173 (index!31059 (_ BitVec 32))) (Found!7173 (index!31060 (_ BitVec 32))) (Intermediate!7173 (undefined!7985 Bool) (index!31061 (_ BitVec 32)) (x!62087 (_ BitVec 32))) (Undefined!7173) (MissingVacant!7173 (index!31062 (_ BitVec 32))) )
))
(declare-fun lt!320553 () SeekEntryResult!7173)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40894 (_ BitVec 32)) SeekEntryResult!7173)

(assert (=> b!723073 (= e!405164 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19566 a!3186) j!159) a!3186 mask!3328) lt!320553))))

(declare-fun b!723074 () Bool)

(declare-fun res!484825 () Bool)

(assert (=> b!723074 (=> (not res!484825) (not e!405162))))

(assert (=> b!723074 (= res!484825 e!405164)))

(declare-fun c!79500 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723074 (= c!79500 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723075 () Bool)

(declare-fun res!484822 () Bool)

(assert (=> b!723075 (=> (not res!484822) (not e!405163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723075 (= res!484822 (validKeyInArray!0 (select (arr!19566 a!3186) j!159)))))

(declare-fun b!723076 () Bool)

(declare-fun e!405165 () Bool)

(assert (=> b!723076 (= e!405163 e!405165)))

(declare-fun res!484816 () Bool)

(assert (=> b!723076 (=> (not res!484816) (not e!405165))))

(declare-fun lt!320552 () SeekEntryResult!7173)

(assert (=> b!723076 (= res!484816 (or (= lt!320552 (MissingZero!7173 i!1173)) (= lt!320552 (MissingVacant!7173 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40894 (_ BitVec 32)) SeekEntryResult!7173)

(assert (=> b!723076 (= lt!320552 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723077 () Bool)

(declare-fun res!484819 () Bool)

(assert (=> b!723077 (=> (not res!484819) (not e!405163))))

(assert (=> b!723077 (= res!484819 (validKeyInArray!0 k!2102))))

(declare-fun b!723078 () Bool)

(declare-fun e!405160 () Bool)

(assert (=> b!723078 (= e!405160 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40894 (_ BitVec 32)) Bool)

(assert (=> b!723078 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24664 0))(
  ( (Unit!24665) )
))
(declare-fun lt!320551 () Unit!24664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24664)

(assert (=> b!723078 (= lt!320551 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723079 () Bool)

(declare-fun res!484824 () Bool)

(assert (=> b!723079 (=> (not res!484824) (not e!405165))))

(assert (=> b!723079 (= res!484824 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19987 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19987 a!3186))))))

(declare-fun b!723080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40894 (_ BitVec 32)) SeekEntryResult!7173)

(assert (=> b!723080 (= e!405164 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19566 a!3186) j!159) a!3186 mask!3328) (Found!7173 j!159)))))

(declare-fun b!723081 () Bool)

(declare-fun res!484817 () Bool)

(assert (=> b!723081 (=> (not res!484817) (not e!405165))))

(assert (=> b!723081 (= res!484817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723082 () Bool)

(assert (=> b!723082 (= e!405162 e!405160)))

(declare-fun res!484827 () Bool)

(assert (=> b!723082 (=> (not res!484827) (not e!405160))))

(declare-fun lt!320555 () (_ BitVec 64))

(declare-fun lt!320554 () array!40894)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723082 (= res!484827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320555 mask!3328) lt!320555 lt!320554 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320555 lt!320554 mask!3328)))))

(assert (=> b!723082 (= lt!320555 (select (store (arr!19566 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723082 (= lt!320554 (array!40895 (store (arr!19566 a!3186) i!1173 k!2102) (size!19987 a!3186)))))

(declare-fun b!723083 () Bool)

(assert (=> b!723083 (= e!405165 e!405162)))

(declare-fun res!484815 () Bool)

(assert (=> b!723083 (=> (not res!484815) (not e!405162))))

(assert (=> b!723083 (= res!484815 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19566 a!3186) j!159) mask!3328) (select (arr!19566 a!3186) j!159) a!3186 mask!3328) lt!320553))))

(assert (=> b!723083 (= lt!320553 (Intermediate!7173 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723084 () Bool)

(declare-fun res!484820 () Bool)

(assert (=> b!723084 (=> (not res!484820) (not e!405165))))

(declare-datatypes ((List!13621 0))(
  ( (Nil!13618) (Cons!13617 (h!14671 (_ BitVec 64)) (t!19944 List!13621)) )
))
(declare-fun arrayNoDuplicates!0 (array!40894 (_ BitVec 32) List!13621) Bool)

(assert (=> b!723084 (= res!484820 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13618))))

(declare-fun b!723085 () Bool)

(declare-fun res!484821 () Bool)

(assert (=> b!723085 (=> (not res!484821) (not e!405163))))

(assert (=> b!723085 (= res!484821 (and (= (size!19987 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19987 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19987 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723086 () Bool)

(declare-fun res!484818 () Bool)

(assert (=> b!723086 (=> (not res!484818) (not e!405163))))

(declare-fun arrayContainsKey!0 (array!40894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723086 (= res!484818 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64360 res!484826) b!723085))

(assert (= (and b!723085 res!484821) b!723075))

(assert (= (and b!723075 res!484822) b!723077))

(assert (= (and b!723077 res!484819) b!723086))

(assert (= (and b!723086 res!484818) b!723076))

(assert (= (and b!723076 res!484816) b!723081))

(assert (= (and b!723081 res!484817) b!723084))

(assert (= (and b!723084 res!484820) b!723079))

(assert (= (and b!723079 res!484824) b!723083))

(assert (= (and b!723083 res!484815) b!723072))

(assert (= (and b!723072 res!484823) b!723074))

(assert (= (and b!723074 c!79500) b!723073))

(assert (= (and b!723074 (not c!79500)) b!723080))

(assert (= (and b!723074 res!484825) b!723082))

(assert (= (and b!723082 res!484827) b!723078))

(declare-fun m!677629 () Bool)

(assert (=> b!723083 m!677629))

(assert (=> b!723083 m!677629))

(declare-fun m!677631 () Bool)

(assert (=> b!723083 m!677631))

(assert (=> b!723083 m!677631))

(assert (=> b!723083 m!677629))

(declare-fun m!677633 () Bool)

(assert (=> b!723083 m!677633))

(assert (=> b!723080 m!677629))

(assert (=> b!723080 m!677629))

(declare-fun m!677635 () Bool)

(assert (=> b!723080 m!677635))

(declare-fun m!677637 () Bool)

(assert (=> b!723086 m!677637))

(assert (=> b!723075 m!677629))

(assert (=> b!723075 m!677629))

(declare-fun m!677639 () Bool)

(assert (=> b!723075 m!677639))

(assert (=> b!723073 m!677629))

(assert (=> b!723073 m!677629))

(declare-fun m!677641 () Bool)

(assert (=> b!723073 m!677641))

(declare-fun m!677643 () Bool)

(assert (=> b!723076 m!677643))

(declare-fun m!677645 () Bool)

(assert (=> b!723072 m!677645))

(declare-fun m!677647 () Bool)

(assert (=> b!723081 m!677647))

(declare-fun m!677649 () Bool)

(assert (=> start!64360 m!677649))

(declare-fun m!677651 () Bool)

(assert (=> start!64360 m!677651))

(declare-fun m!677653 () Bool)

(assert (=> b!723084 m!677653))

(declare-fun m!677655 () Bool)

(assert (=> b!723082 m!677655))

(declare-fun m!677657 () Bool)

(assert (=> b!723082 m!677657))

(declare-fun m!677659 () Bool)

(assert (=> b!723082 m!677659))

(declare-fun m!677661 () Bool)

(assert (=> b!723082 m!677661))

(assert (=> b!723082 m!677657))

(declare-fun m!677663 () Bool)

(assert (=> b!723082 m!677663))

(declare-fun m!677665 () Bool)

(assert (=> b!723078 m!677665))

(declare-fun m!677667 () Bool)

(assert (=> b!723078 m!677667))

(declare-fun m!677669 () Bool)

(assert (=> b!723077 m!677669))

(push 1)

