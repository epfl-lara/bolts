; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64364 () Bool)

(assert start!64364)

(declare-fun b!723162 () Bool)

(declare-fun res!484905 () Bool)

(declare-fun e!405200 () Bool)

(assert (=> b!723162 (=> (not res!484905) (not e!405200))))

(declare-datatypes ((array!40898 0))(
  ( (array!40899 (arr!19568 (Array (_ BitVec 32) (_ BitVec 64))) (size!19989 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40898)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!723162 (= res!484905 (and (= (size!19989 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19989 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19989 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723163 () Bool)

(declare-fun e!405198 () Bool)

(declare-fun e!405201 () Bool)

(assert (=> b!723163 (= e!405198 e!405201)))

(declare-fun res!484894 () Bool)

(assert (=> b!723163 (=> (not res!484894) (not e!405201))))

(declare-datatypes ((SeekEntryResult!7175 0))(
  ( (MissingZero!7175 (index!31067 (_ BitVec 32))) (Found!7175 (index!31068 (_ BitVec 32))) (Intermediate!7175 (undefined!7987 Bool) (index!31069 (_ BitVec 32)) (x!62089 (_ BitVec 32))) (Undefined!7175) (MissingVacant!7175 (index!31070 (_ BitVec 32))) )
))
(declare-fun lt!320581 () SeekEntryResult!7175)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40898 (_ BitVec 32)) SeekEntryResult!7175)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723163 (= res!484894 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19568 a!3186) j!159) mask!3328) (select (arr!19568 a!3186) j!159) a!3186 mask!3328) lt!320581))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723163 (= lt!320581 (Intermediate!7175 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723164 () Bool)

(declare-fun res!484893 () Bool)

(assert (=> b!723164 (=> (not res!484893) (not e!405200))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723164 (= res!484893 (validKeyInArray!0 k!2102))))

(declare-fun b!723165 () Bool)

(declare-fun e!405199 () Bool)

(assert (=> b!723165 (= e!405199 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40898 (_ BitVec 32)) Bool)

(assert (=> b!723165 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24668 0))(
  ( (Unit!24669) )
))
(declare-fun lt!320584 () Unit!24668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40898 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24668)

(assert (=> b!723165 (= lt!320584 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723166 () Bool)

(declare-fun res!484899 () Bool)

(assert (=> b!723166 (=> (not res!484899) (not e!405200))))

(assert (=> b!723166 (= res!484899 (validKeyInArray!0 (select (arr!19568 a!3186) j!159)))))

(declare-fun b!723167 () Bool)

(declare-fun res!484897 () Bool)

(assert (=> b!723167 (=> (not res!484897) (not e!405198))))

(assert (=> b!723167 (= res!484897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!484898 () Bool)

(assert (=> start!64364 (=> (not res!484898) (not e!405200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64364 (= res!484898 (validMask!0 mask!3328))))

(assert (=> start!64364 e!405200))

(assert (=> start!64364 true))

(declare-fun array_inv!15342 (array!40898) Bool)

(assert (=> start!64364 (array_inv!15342 a!3186)))

(declare-fun b!723168 () Bool)

(assert (=> b!723168 (= e!405201 e!405199)))

(declare-fun res!484903 () Bool)

(assert (=> b!723168 (=> (not res!484903) (not e!405199))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!320585 () array!40898)

(declare-fun lt!320582 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!723168 (= res!484903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320582 mask!3328) lt!320582 lt!320585 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320582 lt!320585 mask!3328)))))

(assert (=> b!723168 (= lt!320582 (select (store (arr!19568 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723168 (= lt!320585 (array!40899 (store (arr!19568 a!3186) i!1173 k!2102) (size!19989 a!3186)))))

(declare-fun b!723169 () Bool)

(declare-fun res!484895 () Bool)

(assert (=> b!723169 (=> (not res!484895) (not e!405201))))

(assert (=> b!723169 (= res!484895 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19568 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723170 () Bool)

(assert (=> b!723170 (= e!405200 e!405198)))

(declare-fun res!484904 () Bool)

(assert (=> b!723170 (=> (not res!484904) (not e!405198))))

(declare-fun lt!320583 () SeekEntryResult!7175)

(assert (=> b!723170 (= res!484904 (or (= lt!320583 (MissingZero!7175 i!1173)) (= lt!320583 (MissingVacant!7175 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40898 (_ BitVec 32)) SeekEntryResult!7175)

(assert (=> b!723170 (= lt!320583 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723171 () Bool)

(declare-fun res!484902 () Bool)

(assert (=> b!723171 (=> (not res!484902) (not e!405198))))

(assert (=> b!723171 (= res!484902 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19989 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19989 a!3186))))))

(declare-fun e!405197 () Bool)

(declare-fun b!723172 () Bool)

(assert (=> b!723172 (= e!405197 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19568 a!3186) j!159) a!3186 mask!3328) lt!320581))))

(declare-fun b!723173 () Bool)

(declare-fun res!484901 () Bool)

(assert (=> b!723173 (=> (not res!484901) (not e!405201))))

(assert (=> b!723173 (= res!484901 e!405197)))

(declare-fun c!79506 () Bool)

(assert (=> b!723173 (= c!79506 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723174 () Bool)

(declare-fun res!484896 () Bool)

(assert (=> b!723174 (=> (not res!484896) (not e!405200))))

(declare-fun arrayContainsKey!0 (array!40898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723174 (= res!484896 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723175 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40898 (_ BitVec 32)) SeekEntryResult!7175)

(assert (=> b!723175 (= e!405197 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19568 a!3186) j!159) a!3186 mask!3328) (Found!7175 j!159)))))

(declare-fun b!723176 () Bool)

(declare-fun res!484900 () Bool)

(assert (=> b!723176 (=> (not res!484900) (not e!405198))))

(declare-datatypes ((List!13623 0))(
  ( (Nil!13620) (Cons!13619 (h!14673 (_ BitVec 64)) (t!19946 List!13623)) )
))
(declare-fun arrayNoDuplicates!0 (array!40898 (_ BitVec 32) List!13623) Bool)

(assert (=> b!723176 (= res!484900 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13620))))

(assert (= (and start!64364 res!484898) b!723162))

(assert (= (and b!723162 res!484905) b!723166))

(assert (= (and b!723166 res!484899) b!723164))

(assert (= (and b!723164 res!484893) b!723174))

(assert (= (and b!723174 res!484896) b!723170))

(assert (= (and b!723170 res!484904) b!723167))

(assert (= (and b!723167 res!484897) b!723176))

(assert (= (and b!723176 res!484900) b!723171))

(assert (= (and b!723171 res!484902) b!723163))

(assert (= (and b!723163 res!484894) b!723169))

(assert (= (and b!723169 res!484895) b!723173))

(assert (= (and b!723173 c!79506) b!723172))

(assert (= (and b!723173 (not c!79506)) b!723175))

(assert (= (and b!723173 res!484901) b!723168))

(assert (= (and b!723168 res!484903) b!723165))

(declare-fun m!677713 () Bool)

(assert (=> b!723176 m!677713))

(declare-fun m!677715 () Bool)

(assert (=> b!723165 m!677715))

(declare-fun m!677717 () Bool)

(assert (=> b!723165 m!677717))

(declare-fun m!677719 () Bool)

(assert (=> b!723175 m!677719))

(assert (=> b!723175 m!677719))

(declare-fun m!677721 () Bool)

(assert (=> b!723175 m!677721))

(assert (=> b!723163 m!677719))

(assert (=> b!723163 m!677719))

(declare-fun m!677723 () Bool)

(assert (=> b!723163 m!677723))

(assert (=> b!723163 m!677723))

(assert (=> b!723163 m!677719))

(declare-fun m!677725 () Bool)

(assert (=> b!723163 m!677725))

(declare-fun m!677727 () Bool)

(assert (=> b!723174 m!677727))

(assert (=> b!723166 m!677719))

(assert (=> b!723166 m!677719))

(declare-fun m!677729 () Bool)

(assert (=> b!723166 m!677729))

(declare-fun m!677731 () Bool)

(assert (=> b!723170 m!677731))

(assert (=> b!723172 m!677719))

(assert (=> b!723172 m!677719))

(declare-fun m!677733 () Bool)

(assert (=> b!723172 m!677733))

(declare-fun m!677735 () Bool)

(assert (=> b!723164 m!677735))

(declare-fun m!677737 () Bool)

(assert (=> b!723167 m!677737))

(declare-fun m!677739 () Bool)

(assert (=> start!64364 m!677739))

(declare-fun m!677741 () Bool)

(assert (=> start!64364 m!677741))

(declare-fun m!677743 () Bool)

(assert (=> b!723168 m!677743))

(declare-fun m!677745 () Bool)

(assert (=> b!723168 m!677745))

(declare-fun m!677747 () Bool)

(assert (=> b!723168 m!677747))

(declare-fun m!677749 () Bool)

(assert (=> b!723168 m!677749))

(assert (=> b!723168 m!677743))

(declare-fun m!677751 () Bool)

(assert (=> b!723168 m!677751))

(declare-fun m!677753 () Bool)

(assert (=> b!723169 m!677753))

(push 1)

