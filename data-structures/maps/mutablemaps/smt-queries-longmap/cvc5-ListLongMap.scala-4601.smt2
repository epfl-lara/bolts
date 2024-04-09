; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64198 () Bool)

(assert start!64198)

(declare-fun b!720613 () Bool)

(declare-fun res!482877 () Bool)

(declare-fun e!404184 () Bool)

(assert (=> b!720613 (=> (not res!482877) (not e!404184))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40789 0))(
  ( (array!40790 (arr!19515 (Array (_ BitVec 32) (_ BitVec 64))) (size!19936 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40789)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720613 (= res!482877 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19936 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19936 a!3186))))))

(declare-datatypes ((SeekEntryResult!7122 0))(
  ( (MissingZero!7122 (index!30855 (_ BitVec 32))) (Found!7122 (index!30856 (_ BitVec 32))) (Intermediate!7122 (undefined!7934 Bool) (index!30857 (_ BitVec 32)) (x!61891 (_ BitVec 32))) (Undefined!7122) (MissingVacant!7122 (index!30858 (_ BitVec 32))) )
))
(declare-fun lt!319844 () SeekEntryResult!7122)

(declare-fun b!720614 () Bool)

(declare-fun e!404180 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40789 (_ BitVec 32)) SeekEntryResult!7122)

(assert (=> b!720614 (= e!404180 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19515 a!3186) j!159) a!3186 mask!3328) lt!319844))))

(declare-fun b!720615 () Bool)

(declare-fun e!404182 () Bool)

(assert (=> b!720615 (= e!404182 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!319842 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720615 (= lt!319842 (toIndex!0 (select (store (arr!19515 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720616 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40789 (_ BitVec 32)) SeekEntryResult!7122)

(assert (=> b!720616 (= e!404180 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19515 a!3186) j!159) a!3186 mask!3328) (Found!7122 j!159)))))

(declare-fun b!720617 () Bool)

(declare-fun res!482875 () Bool)

(assert (=> b!720617 (=> (not res!482875) (not e!404182))))

(assert (=> b!720617 (= res!482875 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19515 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720618 () Bool)

(assert (=> b!720618 (= e!404184 e!404182)))

(declare-fun res!482882 () Bool)

(assert (=> b!720618 (=> (not res!482882) (not e!404182))))

(assert (=> b!720618 (= res!482882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19515 a!3186) j!159) mask!3328) (select (arr!19515 a!3186) j!159) a!3186 mask!3328) lt!319844))))

(assert (=> b!720618 (= lt!319844 (Intermediate!7122 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!482886 () Bool)

(declare-fun e!404183 () Bool)

(assert (=> start!64198 (=> (not res!482886) (not e!404183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64198 (= res!482886 (validMask!0 mask!3328))))

(assert (=> start!64198 e!404183))

(assert (=> start!64198 true))

(declare-fun array_inv!15289 (array!40789) Bool)

(assert (=> start!64198 (array_inv!15289 a!3186)))

(declare-fun b!720619 () Bool)

(declare-fun res!482880 () Bool)

(assert (=> b!720619 (=> (not res!482880) (not e!404183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720619 (= res!482880 (validKeyInArray!0 k!2102))))

(declare-fun b!720620 () Bool)

(declare-fun res!482878 () Bool)

(assert (=> b!720620 (=> (not res!482878) (not e!404183))))

(assert (=> b!720620 (= res!482878 (validKeyInArray!0 (select (arr!19515 a!3186) j!159)))))

(declare-fun b!720621 () Bool)

(assert (=> b!720621 (= e!404183 e!404184)))

(declare-fun res!482879 () Bool)

(assert (=> b!720621 (=> (not res!482879) (not e!404184))))

(declare-fun lt!319843 () SeekEntryResult!7122)

(assert (=> b!720621 (= res!482879 (or (= lt!319843 (MissingZero!7122 i!1173)) (= lt!319843 (MissingVacant!7122 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40789 (_ BitVec 32)) SeekEntryResult!7122)

(assert (=> b!720621 (= lt!319843 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720622 () Bool)

(declare-fun res!482876 () Bool)

(assert (=> b!720622 (=> (not res!482876) (not e!404183))))

(assert (=> b!720622 (= res!482876 (and (= (size!19936 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19936 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19936 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720623 () Bool)

(declare-fun res!482883 () Bool)

(assert (=> b!720623 (=> (not res!482883) (not e!404182))))

(assert (=> b!720623 (= res!482883 e!404180)))

(declare-fun c!79239 () Bool)

(assert (=> b!720623 (= c!79239 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720624 () Bool)

(declare-fun res!482881 () Bool)

(assert (=> b!720624 (=> (not res!482881) (not e!404184))))

(declare-datatypes ((List!13570 0))(
  ( (Nil!13567) (Cons!13566 (h!14617 (_ BitVec 64)) (t!19893 List!13570)) )
))
(declare-fun arrayNoDuplicates!0 (array!40789 (_ BitVec 32) List!13570) Bool)

(assert (=> b!720624 (= res!482881 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13567))))

(declare-fun b!720625 () Bool)

(declare-fun res!482884 () Bool)

(assert (=> b!720625 (=> (not res!482884) (not e!404184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40789 (_ BitVec 32)) Bool)

(assert (=> b!720625 (= res!482884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720626 () Bool)

(declare-fun res!482885 () Bool)

(assert (=> b!720626 (=> (not res!482885) (not e!404183))))

(declare-fun arrayContainsKey!0 (array!40789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720626 (= res!482885 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64198 res!482886) b!720622))

(assert (= (and b!720622 res!482876) b!720620))

(assert (= (and b!720620 res!482878) b!720619))

(assert (= (and b!720619 res!482880) b!720626))

(assert (= (and b!720626 res!482885) b!720621))

(assert (= (and b!720621 res!482879) b!720625))

(assert (= (and b!720625 res!482884) b!720624))

(assert (= (and b!720624 res!482881) b!720613))

(assert (= (and b!720613 res!482877) b!720618))

(assert (= (and b!720618 res!482882) b!720617))

(assert (= (and b!720617 res!482875) b!720623))

(assert (= (and b!720623 c!79239) b!720614))

(assert (= (and b!720623 (not c!79239)) b!720616))

(assert (= (and b!720623 res!482883) b!720615))

(declare-fun m!675733 () Bool)

(assert (=> b!720615 m!675733))

(declare-fun m!675735 () Bool)

(assert (=> b!720615 m!675735))

(assert (=> b!720615 m!675735))

(declare-fun m!675737 () Bool)

(assert (=> b!720615 m!675737))

(declare-fun m!675739 () Bool)

(assert (=> b!720616 m!675739))

(assert (=> b!720616 m!675739))

(declare-fun m!675741 () Bool)

(assert (=> b!720616 m!675741))

(declare-fun m!675743 () Bool)

(assert (=> b!720619 m!675743))

(declare-fun m!675745 () Bool)

(assert (=> b!720625 m!675745))

(declare-fun m!675747 () Bool)

(assert (=> b!720624 m!675747))

(declare-fun m!675749 () Bool)

(assert (=> b!720621 m!675749))

(assert (=> b!720614 m!675739))

(assert (=> b!720614 m!675739))

(declare-fun m!675751 () Bool)

(assert (=> b!720614 m!675751))

(assert (=> b!720618 m!675739))

(assert (=> b!720618 m!675739))

(declare-fun m!675753 () Bool)

(assert (=> b!720618 m!675753))

(assert (=> b!720618 m!675753))

(assert (=> b!720618 m!675739))

(declare-fun m!675755 () Bool)

(assert (=> b!720618 m!675755))

(declare-fun m!675757 () Bool)

(assert (=> b!720626 m!675757))

(assert (=> b!720620 m!675739))

(assert (=> b!720620 m!675739))

(declare-fun m!675759 () Bool)

(assert (=> b!720620 m!675759))

(declare-fun m!675761 () Bool)

(assert (=> b!720617 m!675761))

(declare-fun m!675763 () Bool)

(assert (=> start!64198 m!675763))

(declare-fun m!675765 () Bool)

(assert (=> start!64198 m!675765))

(push 1)

