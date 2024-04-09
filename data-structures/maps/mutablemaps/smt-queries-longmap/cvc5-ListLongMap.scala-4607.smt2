; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64294 () Bool)

(assert start!64294)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40828 0))(
  ( (array!40829 (arr!19533 (Array (_ BitVec 32) (_ BitVec 64))) (size!19954 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40828)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!404657 () Bool)

(declare-fun b!721684 () Bool)

(declare-datatypes ((SeekEntryResult!7140 0))(
  ( (MissingZero!7140 (index!30927 (_ BitVec 32))) (Found!7140 (index!30928 (_ BitVec 32))) (Intermediate!7140 (undefined!7952 Bool) (index!30929 (_ BitVec 32)) (x!61966 (_ BitVec 32))) (Undefined!7140) (MissingVacant!7140 (index!30930 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40828 (_ BitVec 32)) SeekEntryResult!7140)

(assert (=> b!721684 (= e!404657 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19533 a!3186) j!159) a!3186 mask!3328) (Found!7140 j!159)))))

(declare-fun b!721685 () Bool)

(declare-fun res!483628 () Bool)

(declare-fun e!404655 () Bool)

(assert (=> b!721685 (=> (not res!483628) (not e!404655))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721685 (= res!483628 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721686 () Bool)

(declare-fun res!483626 () Bool)

(declare-fun e!404654 () Bool)

(assert (=> b!721686 (=> (not res!483626) (not e!404654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40828 (_ BitVec 32)) Bool)

(assert (=> b!721686 (= res!483626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721687 () Bool)

(declare-fun res!483627 () Bool)

(assert (=> b!721687 (=> (not res!483627) (not e!404654))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721687 (= res!483627 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19954 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19954 a!3186))))))

(declare-fun b!721688 () Bool)

(declare-fun res!483635 () Bool)

(declare-fun e!404658 () Bool)

(assert (=> b!721688 (=> (not res!483635) (not e!404658))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721688 (= res!483635 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19533 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!483636 () Bool)

(assert (=> start!64294 (=> (not res!483636) (not e!404655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64294 (= res!483636 (validMask!0 mask!3328))))

(assert (=> start!64294 e!404655))

(assert (=> start!64294 true))

(declare-fun array_inv!15307 (array!40828) Bool)

(assert (=> start!64294 (array_inv!15307 a!3186)))

(declare-fun b!721689 () Bool)

(assert (=> b!721689 (= e!404658 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!721690 () Bool)

(declare-fun res!483633 () Bool)

(assert (=> b!721690 (=> (not res!483633) (not e!404654))))

(declare-datatypes ((List!13588 0))(
  ( (Nil!13585) (Cons!13584 (h!14638 (_ BitVec 64)) (t!19911 List!13588)) )
))
(declare-fun arrayNoDuplicates!0 (array!40828 (_ BitVec 32) List!13588) Bool)

(assert (=> b!721690 (= res!483633 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13585))))

(declare-fun lt!320123 () SeekEntryResult!7140)

(declare-fun b!721691 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40828 (_ BitVec 32)) SeekEntryResult!7140)

(assert (=> b!721691 (= e!404657 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19533 a!3186) j!159) a!3186 mask!3328) lt!320123))))

(declare-fun b!721692 () Bool)

(declare-fun res!483625 () Bool)

(assert (=> b!721692 (=> (not res!483625) (not e!404658))))

(assert (=> b!721692 (= res!483625 e!404657)))

(declare-fun c!79401 () Bool)

(assert (=> b!721692 (= c!79401 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721693 () Bool)

(assert (=> b!721693 (= e!404654 e!404658)))

(declare-fun res!483631 () Bool)

(assert (=> b!721693 (=> (not res!483631) (not e!404658))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721693 (= res!483631 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19533 a!3186) j!159) mask!3328) (select (arr!19533 a!3186) j!159) a!3186 mask!3328) lt!320123))))

(assert (=> b!721693 (= lt!320123 (Intermediate!7140 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721694 () Bool)

(assert (=> b!721694 (= e!404655 e!404654)))

(declare-fun res!483629 () Bool)

(assert (=> b!721694 (=> (not res!483629) (not e!404654))))

(declare-fun lt!320122 () SeekEntryResult!7140)

(assert (=> b!721694 (= res!483629 (or (= lt!320122 (MissingZero!7140 i!1173)) (= lt!320122 (MissingVacant!7140 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40828 (_ BitVec 32)) SeekEntryResult!7140)

(assert (=> b!721694 (= lt!320122 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721695 () Bool)

(declare-fun res!483634 () Bool)

(assert (=> b!721695 (=> (not res!483634) (not e!404655))))

(assert (=> b!721695 (= res!483634 (and (= (size!19954 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19954 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19954 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721696 () Bool)

(declare-fun res!483630 () Bool)

(assert (=> b!721696 (=> (not res!483630) (not e!404655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721696 (= res!483630 (validKeyInArray!0 (select (arr!19533 a!3186) j!159)))))

(declare-fun b!721697 () Bool)

(declare-fun res!483632 () Bool)

(assert (=> b!721697 (=> (not res!483632) (not e!404655))))

(assert (=> b!721697 (= res!483632 (validKeyInArray!0 k!2102))))

(assert (= (and start!64294 res!483636) b!721695))

(assert (= (and b!721695 res!483634) b!721696))

(assert (= (and b!721696 res!483630) b!721697))

(assert (= (and b!721697 res!483632) b!721685))

(assert (= (and b!721685 res!483628) b!721694))

(assert (= (and b!721694 res!483629) b!721686))

(assert (= (and b!721686 res!483626) b!721690))

(assert (= (and b!721690 res!483633) b!721687))

(assert (= (and b!721687 res!483627) b!721693))

(assert (= (and b!721693 res!483631) b!721688))

(assert (= (and b!721688 res!483635) b!721692))

(assert (= (and b!721692 c!79401) b!721691))

(assert (= (and b!721692 (not c!79401)) b!721684))

(assert (= (and b!721692 res!483625) b!721689))

(declare-fun m!676495 () Bool)

(assert (=> b!721690 m!676495))

(declare-fun m!676497 () Bool)

(assert (=> b!721685 m!676497))

(declare-fun m!676499 () Bool)

(assert (=> b!721686 m!676499))

(declare-fun m!676501 () Bool)

(assert (=> b!721693 m!676501))

(assert (=> b!721693 m!676501))

(declare-fun m!676503 () Bool)

(assert (=> b!721693 m!676503))

(assert (=> b!721693 m!676503))

(assert (=> b!721693 m!676501))

(declare-fun m!676505 () Bool)

(assert (=> b!721693 m!676505))

(declare-fun m!676507 () Bool)

(assert (=> b!721688 m!676507))

(assert (=> b!721696 m!676501))

(assert (=> b!721696 m!676501))

(declare-fun m!676509 () Bool)

(assert (=> b!721696 m!676509))

(declare-fun m!676511 () Bool)

(assert (=> start!64294 m!676511))

(declare-fun m!676513 () Bool)

(assert (=> start!64294 m!676513))

(declare-fun m!676515 () Bool)

(assert (=> b!721697 m!676515))

(assert (=> b!721691 m!676501))

(assert (=> b!721691 m!676501))

(declare-fun m!676517 () Bool)

(assert (=> b!721691 m!676517))

(declare-fun m!676519 () Bool)

(assert (=> b!721694 m!676519))

(assert (=> b!721684 m!676501))

(assert (=> b!721684 m!676501))

(declare-fun m!676521 () Bool)

(assert (=> b!721684 m!676521))

(push 1)

