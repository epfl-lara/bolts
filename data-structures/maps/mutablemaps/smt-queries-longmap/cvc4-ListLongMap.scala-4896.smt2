; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67574 () Bool)

(assert start!67574)

(declare-fun b!781717 () Bool)

(declare-fun res!529002 () Bool)

(declare-fun e!434769 () Bool)

(assert (=> b!781717 (=> (not res!529002) (not e!434769))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42632 0))(
  ( (array!42633 (arr!20402 (Array (_ BitVec 32) (_ BitVec 64))) (size!20823 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42632)

(assert (=> b!781717 (= res!529002 (and (= (size!20823 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20823 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20823 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781718 () Bool)

(declare-fun res!529005 () Bool)

(declare-fun e!434771 () Bool)

(assert (=> b!781718 (=> (not res!529005) (not e!434771))))

(declare-datatypes ((List!14457 0))(
  ( (Nil!14454) (Cons!14453 (h!15573 (_ BitVec 64)) (t!20780 List!14457)) )
))
(declare-fun arrayNoDuplicates!0 (array!42632 (_ BitVec 32) List!14457) Bool)

(assert (=> b!781718 (= res!529005 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14454))))

(declare-fun b!781719 () Bool)

(declare-fun e!434765 () Bool)

(declare-fun e!434773 () Bool)

(assert (=> b!781719 (= e!434765 e!434773)))

(declare-fun res!529001 () Bool)

(assert (=> b!781719 (=> (not res!529001) (not e!434773))))

(declare-datatypes ((SeekEntryResult!8009 0))(
  ( (MissingZero!8009 (index!34403 (_ BitVec 32))) (Found!8009 (index!34404 (_ BitVec 32))) (Intermediate!8009 (undefined!8821 Bool) (index!34405 (_ BitVec 32)) (x!65381 (_ BitVec 32))) (Undefined!8009) (MissingVacant!8009 (index!34406 (_ BitVec 32))) )
))
(declare-fun lt!348388 () SeekEntryResult!8009)

(declare-fun lt!348394 () SeekEntryResult!8009)

(assert (=> b!781719 (= res!529001 (= lt!348388 lt!348394))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!348386 () (_ BitVec 64))

(declare-fun lt!348385 () array!42632)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42632 (_ BitVec 32)) SeekEntryResult!8009)

(assert (=> b!781719 (= lt!348394 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348386 lt!348385 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781719 (= lt!348388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348386 mask!3328) lt!348386 lt!348385 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!781719 (= lt!348386 (select (store (arr!20402 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781719 (= lt!348385 (array!42633 (store (arr!20402 a!3186) i!1173 k!2102) (size!20823 a!3186)))))

(declare-fun b!781720 () Bool)

(assert (=> b!781720 (= e!434771 e!434765)))

(declare-fun res!528997 () Bool)

(assert (=> b!781720 (=> (not res!528997) (not e!434765))))

(declare-fun lt!348387 () SeekEntryResult!8009)

(assert (=> b!781720 (= res!528997 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20402 a!3186) j!159) mask!3328) (select (arr!20402 a!3186) j!159) a!3186 mask!3328) lt!348387))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781720 (= lt!348387 (Intermediate!8009 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781721 () Bool)

(declare-fun e!434770 () Bool)

(assert (=> b!781721 (= e!434770 true)))

(assert (=> b!781721 (= (select (store (arr!20402 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26946 0))(
  ( (Unit!26947) )
))
(declare-fun lt!348393 () Unit!26946)

(declare-fun e!434772 () Unit!26946)

(assert (=> b!781721 (= lt!348393 e!434772)))

(declare-fun c!86768 () Bool)

(assert (=> b!781721 (= c!86768 (= (select (store (arr!20402 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781722 () Bool)

(assert (=> b!781722 (= e!434769 e!434771)))

(declare-fun res!528994 () Bool)

(assert (=> b!781722 (=> (not res!528994) (not e!434771))))

(declare-fun lt!348391 () SeekEntryResult!8009)

(assert (=> b!781722 (= res!528994 (or (= lt!348391 (MissingZero!8009 i!1173)) (= lt!348391 (MissingVacant!8009 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42632 (_ BitVec 32)) SeekEntryResult!8009)

(assert (=> b!781722 (= lt!348391 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!529007 () Bool)

(assert (=> start!67574 (=> (not res!529007) (not e!434769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67574 (= res!529007 (validMask!0 mask!3328))))

(assert (=> start!67574 e!434769))

(assert (=> start!67574 true))

(declare-fun array_inv!16176 (array!42632) Bool)

(assert (=> start!67574 (array_inv!16176 a!3186)))

(declare-fun e!434767 () Bool)

(declare-fun b!781723 () Bool)

(assert (=> b!781723 (= e!434767 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20402 a!3186) j!159) a!3186 mask!3328) lt!348387))))

(declare-fun b!781724 () Bool)

(declare-fun Unit!26948 () Unit!26946)

(assert (=> b!781724 (= e!434772 Unit!26948)))

(declare-fun b!781725 () Bool)

(declare-fun res!529009 () Bool)

(assert (=> b!781725 (=> (not res!529009) (not e!434769))))

(declare-fun arrayContainsKey!0 (array!42632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781725 (= res!529009 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781726 () Bool)

(declare-fun res!529006 () Bool)

(assert (=> b!781726 (=> (not res!529006) (not e!434769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781726 (= res!529006 (validKeyInArray!0 k!2102))))

(declare-fun e!434768 () Bool)

(declare-fun lt!348392 () SeekEntryResult!8009)

(declare-fun b!781727 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42632 (_ BitVec 32)) SeekEntryResult!8009)

(assert (=> b!781727 (= e!434768 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20402 a!3186) j!159) a!3186 mask!3328) lt!348392))))

(declare-fun b!781728 () Bool)

(assert (=> b!781728 (= e!434767 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20402 a!3186) j!159) a!3186 mask!3328) (Found!8009 j!159)))))

(declare-fun b!781729 () Bool)

(declare-fun res!528995 () Bool)

(assert (=> b!781729 (=> (not res!528995) (not e!434769))))

(assert (=> b!781729 (= res!528995 (validKeyInArray!0 (select (arr!20402 a!3186) j!159)))))

(declare-fun b!781730 () Bool)

(declare-fun res!528993 () Bool)

(assert (=> b!781730 (=> (not res!528993) (not e!434765))))

(assert (=> b!781730 (= res!528993 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20402 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781731 () Bool)

(declare-fun res!529003 () Bool)

(assert (=> b!781731 (=> res!529003 e!434770)))

(assert (=> b!781731 (= res!529003 (= (select (store (arr!20402 a!3186) i!1173 k!2102) index!1321) lt!348386))))

(declare-fun b!781732 () Bool)

(declare-fun Unit!26949 () Unit!26946)

(assert (=> b!781732 (= e!434772 Unit!26949)))

(assert (=> b!781732 false))

(declare-fun b!781733 () Bool)

(assert (=> b!781733 (= e!434773 (not e!434770))))

(declare-fun res!528996 () Bool)

(assert (=> b!781733 (=> res!528996 e!434770)))

(assert (=> b!781733 (= res!528996 (or (not (is-Intermediate!8009 lt!348394)) (bvslt x!1131 (x!65381 lt!348394)) (not (= x!1131 (x!65381 lt!348394))) (not (= index!1321 (index!34405 lt!348394)))))))

(assert (=> b!781733 e!434768))

(declare-fun res!528999 () Bool)

(assert (=> b!781733 (=> (not res!528999) (not e!434768))))

(declare-fun lt!348390 () SeekEntryResult!8009)

(assert (=> b!781733 (= res!528999 (= lt!348390 lt!348392))))

(assert (=> b!781733 (= lt!348392 (Found!8009 j!159))))

(assert (=> b!781733 (= lt!348390 (seekEntryOrOpen!0 (select (arr!20402 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42632 (_ BitVec 32)) Bool)

(assert (=> b!781733 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348389 () Unit!26946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26946)

(assert (=> b!781733 (= lt!348389 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781734 () Bool)

(declare-fun res!528998 () Bool)

(assert (=> b!781734 (=> res!528998 e!434770)))

(assert (=> b!781734 (= res!528998 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20402 a!3186) j!159) a!3186 mask!3328) lt!348392)))))

(declare-fun b!781735 () Bool)

(declare-fun res!529000 () Bool)

(assert (=> b!781735 (=> (not res!529000) (not e!434771))))

(assert (=> b!781735 (= res!529000 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20823 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20823 a!3186))))))

(declare-fun b!781736 () Bool)

(declare-fun res!529004 () Bool)

(assert (=> b!781736 (=> (not res!529004) (not e!434765))))

(assert (=> b!781736 (= res!529004 e!434767)))

(declare-fun c!86769 () Bool)

(assert (=> b!781736 (= c!86769 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781737 () Bool)

(declare-fun res!529008 () Bool)

(assert (=> b!781737 (=> (not res!529008) (not e!434771))))

(assert (=> b!781737 (= res!529008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67574 res!529007) b!781717))

(assert (= (and b!781717 res!529002) b!781729))

(assert (= (and b!781729 res!528995) b!781726))

(assert (= (and b!781726 res!529006) b!781725))

(assert (= (and b!781725 res!529009) b!781722))

(assert (= (and b!781722 res!528994) b!781737))

(assert (= (and b!781737 res!529008) b!781718))

(assert (= (and b!781718 res!529005) b!781735))

(assert (= (and b!781735 res!529000) b!781720))

(assert (= (and b!781720 res!528997) b!781730))

(assert (= (and b!781730 res!528993) b!781736))

(assert (= (and b!781736 c!86769) b!781723))

(assert (= (and b!781736 (not c!86769)) b!781728))

(assert (= (and b!781736 res!529004) b!781719))

(assert (= (and b!781719 res!529001) b!781733))

(assert (= (and b!781733 res!528999) b!781727))

(assert (= (and b!781733 (not res!528996)) b!781734))

(assert (= (and b!781734 (not res!528998)) b!781731))

(assert (= (and b!781731 (not res!529003)) b!781721))

(assert (= (and b!781721 c!86768) b!781732))

(assert (= (and b!781721 (not c!86768)) b!781724))

(declare-fun m!724723 () Bool)

(assert (=> b!781721 m!724723))

(declare-fun m!724725 () Bool)

(assert (=> b!781721 m!724725))

(declare-fun m!724727 () Bool)

(assert (=> b!781725 m!724727))

(declare-fun m!724729 () Bool)

(assert (=> b!781719 m!724729))

(assert (=> b!781719 m!724723))

(declare-fun m!724731 () Bool)

(assert (=> b!781719 m!724731))

(declare-fun m!724733 () Bool)

(assert (=> b!781719 m!724733))

(assert (=> b!781719 m!724733))

(declare-fun m!724735 () Bool)

(assert (=> b!781719 m!724735))

(declare-fun m!724737 () Bool)

(assert (=> b!781718 m!724737))

(declare-fun m!724739 () Bool)

(assert (=> b!781734 m!724739))

(assert (=> b!781734 m!724739))

(declare-fun m!724741 () Bool)

(assert (=> b!781734 m!724741))

(assert (=> b!781729 m!724739))

(assert (=> b!781729 m!724739))

(declare-fun m!724743 () Bool)

(assert (=> b!781729 m!724743))

(declare-fun m!724745 () Bool)

(assert (=> start!67574 m!724745))

(declare-fun m!724747 () Bool)

(assert (=> start!67574 m!724747))

(declare-fun m!724749 () Bool)

(assert (=> b!781730 m!724749))

(assert (=> b!781723 m!724739))

(assert (=> b!781723 m!724739))

(declare-fun m!724751 () Bool)

(assert (=> b!781723 m!724751))

(assert (=> b!781728 m!724739))

(assert (=> b!781728 m!724739))

(assert (=> b!781728 m!724741))

(declare-fun m!724753 () Bool)

(assert (=> b!781722 m!724753))

(assert (=> b!781720 m!724739))

(assert (=> b!781720 m!724739))

(declare-fun m!724755 () Bool)

(assert (=> b!781720 m!724755))

(assert (=> b!781720 m!724755))

(assert (=> b!781720 m!724739))

(declare-fun m!724757 () Bool)

(assert (=> b!781720 m!724757))

(assert (=> b!781727 m!724739))

(assert (=> b!781727 m!724739))

(declare-fun m!724759 () Bool)

(assert (=> b!781727 m!724759))

(assert (=> b!781733 m!724739))

(assert (=> b!781733 m!724739))

(declare-fun m!724761 () Bool)

(assert (=> b!781733 m!724761))

(declare-fun m!724763 () Bool)

(assert (=> b!781733 m!724763))

(declare-fun m!724765 () Bool)

(assert (=> b!781733 m!724765))

(declare-fun m!724767 () Bool)

(assert (=> b!781726 m!724767))

(assert (=> b!781731 m!724723))

(assert (=> b!781731 m!724725))

(declare-fun m!724769 () Bool)

(assert (=> b!781737 m!724769))

(push 1)

