; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64194 () Bool)

(assert start!64194)

(declare-fun b!720529 () Bool)

(declare-fun e!404153 () Bool)

(declare-fun e!404150 () Bool)

(assert (=> b!720529 (= e!404153 e!404150)))

(declare-fun res!482804 () Bool)

(assert (=> b!720529 (=> (not res!482804) (not e!404150))))

(declare-datatypes ((SeekEntryResult!7120 0))(
  ( (MissingZero!7120 (index!30847 (_ BitVec 32))) (Found!7120 (index!30848 (_ BitVec 32))) (Intermediate!7120 (undefined!7932 Bool) (index!30849 (_ BitVec 32)) (x!61881 (_ BitVec 32))) (Undefined!7120) (MissingVacant!7120 (index!30850 (_ BitVec 32))) )
))
(declare-fun lt!319825 () SeekEntryResult!7120)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40785 0))(
  ( (array!40786 (arr!19513 (Array (_ BitVec 32) (_ BitVec 64))) (size!19934 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40785)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40785 (_ BitVec 32)) SeekEntryResult!7120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720529 (= res!482804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19513 a!3186) j!159) mask!3328) (select (arr!19513 a!3186) j!159) a!3186 mask!3328) lt!319825))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720529 (= lt!319825 (Intermediate!7120 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720530 () Bool)

(declare-fun res!482811 () Bool)

(assert (=> b!720530 (=> (not res!482811) (not e!404153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40785 (_ BitVec 32)) Bool)

(assert (=> b!720530 (= res!482811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720531 () Bool)

(declare-fun res!482808 () Bool)

(declare-fun e!404152 () Bool)

(assert (=> b!720531 (=> (not res!482808) (not e!404152))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720531 (= res!482808 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720532 () Bool)

(declare-fun e!404151 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!720532 (= e!404151 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19513 a!3186) j!159) a!3186 mask!3328) lt!319825))))

(declare-fun b!720533 () Bool)

(declare-fun res!482806 () Bool)

(assert (=> b!720533 (=> (not res!482806) (not e!404153))))

(assert (=> b!720533 (= res!482806 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19934 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19934 a!3186))))))

(declare-fun b!720534 () Bool)

(declare-fun res!482812 () Bool)

(assert (=> b!720534 (=> (not res!482812) (not e!404152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720534 (= res!482812 (validKeyInArray!0 k0!2102))))

(declare-fun b!720535 () Bool)

(declare-fun res!482814 () Bool)

(assert (=> b!720535 (=> (not res!482814) (not e!404152))))

(assert (=> b!720535 (= res!482814 (validKeyInArray!0 (select (arr!19513 a!3186) j!159)))))

(declare-fun b!720536 () Bool)

(declare-fun res!482810 () Bool)

(assert (=> b!720536 (=> (not res!482810) (not e!404152))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720536 (= res!482810 (and (= (size!19934 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19934 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19934 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720537 () Bool)

(declare-fun res!482807 () Bool)

(assert (=> b!720537 (=> (not res!482807) (not e!404150))))

(assert (=> b!720537 (= res!482807 e!404151)))

(declare-fun c!79233 () Bool)

(assert (=> b!720537 (= c!79233 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720538 () Bool)

(declare-fun res!482809 () Bool)

(assert (=> b!720538 (=> (not res!482809) (not e!404150))))

(assert (=> b!720538 (= res!482809 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19513 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!482813 () Bool)

(assert (=> start!64194 (=> (not res!482813) (not e!404152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64194 (= res!482813 (validMask!0 mask!3328))))

(assert (=> start!64194 e!404152))

(assert (=> start!64194 true))

(declare-fun array_inv!15287 (array!40785) Bool)

(assert (=> start!64194 (array_inv!15287 a!3186)))

(declare-fun b!720539 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40785 (_ BitVec 32)) SeekEntryResult!7120)

(assert (=> b!720539 (= e!404151 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19513 a!3186) j!159) a!3186 mask!3328) (Found!7120 j!159)))))

(declare-fun b!720540 () Bool)

(assert (=> b!720540 (= e!404152 e!404153)))

(declare-fun res!482805 () Bool)

(assert (=> b!720540 (=> (not res!482805) (not e!404153))))

(declare-fun lt!319824 () SeekEntryResult!7120)

(assert (=> b!720540 (= res!482805 (or (= lt!319824 (MissingZero!7120 i!1173)) (= lt!319824 (MissingVacant!7120 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40785 (_ BitVec 32)) SeekEntryResult!7120)

(assert (=> b!720540 (= lt!319824 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!720541 () Bool)

(declare-fun res!482803 () Bool)

(assert (=> b!720541 (=> (not res!482803) (not e!404153))))

(declare-datatypes ((List!13568 0))(
  ( (Nil!13565) (Cons!13564 (h!14615 (_ BitVec 64)) (t!19891 List!13568)) )
))
(declare-fun arrayNoDuplicates!0 (array!40785 (_ BitVec 32) List!13568) Bool)

(assert (=> b!720541 (= res!482803 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13565))))

(declare-fun b!720542 () Bool)

(assert (=> b!720542 (= e!404150 false)))

(declare-fun lt!319826 () (_ BitVec 32))

(assert (=> b!720542 (= lt!319826 (toIndex!0 (select (store (arr!19513 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(assert (= (and start!64194 res!482813) b!720536))

(assert (= (and b!720536 res!482810) b!720535))

(assert (= (and b!720535 res!482814) b!720534))

(assert (= (and b!720534 res!482812) b!720531))

(assert (= (and b!720531 res!482808) b!720540))

(assert (= (and b!720540 res!482805) b!720530))

(assert (= (and b!720530 res!482811) b!720541))

(assert (= (and b!720541 res!482803) b!720533))

(assert (= (and b!720533 res!482806) b!720529))

(assert (= (and b!720529 res!482804) b!720538))

(assert (= (and b!720538 res!482809) b!720537))

(assert (= (and b!720537 c!79233) b!720532))

(assert (= (and b!720537 (not c!79233)) b!720539))

(assert (= (and b!720537 res!482807) b!720542))

(declare-fun m!675665 () Bool)

(assert (=> b!720538 m!675665))

(declare-fun m!675667 () Bool)

(assert (=> b!720535 m!675667))

(assert (=> b!720535 m!675667))

(declare-fun m!675669 () Bool)

(assert (=> b!720535 m!675669))

(declare-fun m!675671 () Bool)

(assert (=> b!720531 m!675671))

(assert (=> b!720539 m!675667))

(assert (=> b!720539 m!675667))

(declare-fun m!675673 () Bool)

(assert (=> b!720539 m!675673))

(declare-fun m!675675 () Bool)

(assert (=> b!720540 m!675675))

(declare-fun m!675677 () Bool)

(assert (=> start!64194 m!675677))

(declare-fun m!675679 () Bool)

(assert (=> start!64194 m!675679))

(assert (=> b!720529 m!675667))

(assert (=> b!720529 m!675667))

(declare-fun m!675681 () Bool)

(assert (=> b!720529 m!675681))

(assert (=> b!720529 m!675681))

(assert (=> b!720529 m!675667))

(declare-fun m!675683 () Bool)

(assert (=> b!720529 m!675683))

(assert (=> b!720532 m!675667))

(assert (=> b!720532 m!675667))

(declare-fun m!675685 () Bool)

(assert (=> b!720532 m!675685))

(declare-fun m!675687 () Bool)

(assert (=> b!720542 m!675687))

(declare-fun m!675689 () Bool)

(assert (=> b!720542 m!675689))

(assert (=> b!720542 m!675689))

(declare-fun m!675691 () Bool)

(assert (=> b!720542 m!675691))

(declare-fun m!675693 () Bool)

(assert (=> b!720534 m!675693))

(declare-fun m!675695 () Bool)

(assert (=> b!720530 m!675695))

(declare-fun m!675697 () Bool)

(assert (=> b!720541 m!675697))

(check-sat (not start!64194) (not b!720535) (not b!720530) (not b!720541) (not b!720534) (not b!720529) (not b!720539) (not b!720540) (not b!720531) (not b!720542) (not b!720532))
(check-sat)
