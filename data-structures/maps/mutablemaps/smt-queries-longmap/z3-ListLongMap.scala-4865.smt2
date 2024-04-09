; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67122 () Bool)

(assert start!67122)

(declare-fun b!774426 () Bool)

(declare-fun e!431104 () Bool)

(declare-fun e!431099 () Bool)

(assert (=> b!774426 (= e!431104 e!431099)))

(declare-fun res!523744 () Bool)

(assert (=> b!774426 (=> (not res!523744) (not e!431099))))

(declare-datatypes ((array!42432 0))(
  ( (array!42433 (arr!20308 (Array (_ BitVec 32) (_ BitVec 64))) (size!20729 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42432)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7915 0))(
  ( (MissingZero!7915 (index!34027 (_ BitVec 32))) (Found!7915 (index!34028 (_ BitVec 32))) (Intermediate!7915 (undefined!8727 Bool) (index!34029 (_ BitVec 32)) (x!65003 (_ BitVec 32))) (Undefined!7915) (MissingVacant!7915 (index!34030 (_ BitVec 32))) )
))
(declare-fun lt!344913 () SeekEntryResult!7915)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42432 (_ BitVec 32)) SeekEntryResult!7915)

(assert (=> b!774426 (= res!523744 (= (seekEntryOrOpen!0 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344913))))

(assert (=> b!774426 (= lt!344913 (Found!7915 j!159))))

(declare-fun b!774427 () Bool)

(declare-fun e!431110 () Bool)

(declare-fun e!431102 () Bool)

(assert (=> b!774427 (= e!431110 e!431102)))

(declare-fun res!523747 () Bool)

(assert (=> b!774427 (=> (not res!523747) (not e!431102))))

(declare-fun lt!344912 () SeekEntryResult!7915)

(declare-fun lt!344923 () SeekEntryResult!7915)

(assert (=> b!774427 (= res!523747 (= lt!344912 lt!344923))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344920 () array!42432)

(declare-fun lt!344919 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42432 (_ BitVec 32)) SeekEntryResult!7915)

(assert (=> b!774427 (= lt!344923 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344919 lt!344920 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774427 (= lt!344912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344919 mask!3328) lt!344919 lt!344920 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!774427 (= lt!344919 (select (store (arr!20308 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!774427 (= lt!344920 (array!42433 (store (arr!20308 a!3186) i!1173 k0!2102) (size!20729 a!3186)))))

(declare-fun b!774428 () Bool)

(declare-fun res!523745 () Bool)

(declare-fun e!431103 () Bool)

(assert (=> b!774428 (=> res!523745 e!431103)))

(declare-fun e!431108 () Bool)

(assert (=> b!774428 (= res!523745 e!431108)))

(declare-fun c!85747 () Bool)

(declare-fun lt!344911 () Bool)

(assert (=> b!774428 (= c!85747 lt!344911)))

(declare-fun b!774429 () Bool)

(declare-datatypes ((Unit!26696 0))(
  ( (Unit!26697) )
))
(declare-fun e!431100 () Unit!26696)

(declare-fun Unit!26698 () Unit!26696)

(assert (=> b!774429 (= e!431100 Unit!26698)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!344918 () SeekEntryResult!7915)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42432 (_ BitVec 32)) SeekEntryResult!7915)

(assert (=> b!774429 (= lt!344918 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20308 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344921 () (_ BitVec 32))

(declare-fun lt!344915 () SeekEntryResult!7915)

(assert (=> b!774429 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344921 resIntermediateIndex!5 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344915)))

(declare-fun b!774430 () Bool)

(declare-fun Unit!26699 () Unit!26696)

(assert (=> b!774430 (= e!431100 Unit!26699)))

(declare-fun lt!344922 () SeekEntryResult!7915)

(assert (=> b!774430 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344921 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344922)))

(declare-fun b!774431 () Bool)

(declare-fun res!523736 () Bool)

(declare-fun e!431105 () Bool)

(assert (=> b!774431 (=> (not res!523736) (not e!431105))))

(assert (=> b!774431 (= res!523736 (and (= (size!20729 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20729 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20729 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774432 () Bool)

(assert (=> b!774432 (= e!431103 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1131)) (bvsub #b01111111111111111111111111111110 x!1131)))))

(declare-fun b!774433 () Bool)

(declare-fun e!431106 () Bool)

(assert (=> b!774433 (= e!431105 e!431106)))

(declare-fun res!523740 () Bool)

(assert (=> b!774433 (=> (not res!523740) (not e!431106))))

(declare-fun lt!344914 () SeekEntryResult!7915)

(assert (=> b!774433 (= res!523740 (or (= lt!344914 (MissingZero!7915 i!1173)) (= lt!344914 (MissingVacant!7915 i!1173))))))

(assert (=> b!774433 (= lt!344914 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!774434 () Bool)

(declare-fun res!523738 () Bool)

(assert (=> b!774434 (=> (not res!523738) (not e!431110))))

(assert (=> b!774434 (= res!523738 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20308 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774435 () Bool)

(declare-fun e!431107 () Bool)

(assert (=> b!774435 (= e!431107 e!431103)))

(declare-fun res!523743 () Bool)

(assert (=> b!774435 (=> res!523743 e!431103)))

(assert (=> b!774435 (= res!523743 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344921 #b00000000000000000000000000000000) (bvsge lt!344921 (size!20729 a!3186))))))

(declare-fun lt!344916 () Unit!26696)

(assert (=> b!774435 (= lt!344916 e!431100)))

(declare-fun c!85748 () Bool)

(assert (=> b!774435 (= c!85748 lt!344911)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774435 (= lt!344911 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774435 (= lt!344921 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774436 () Bool)

(assert (=> b!774436 (= e!431108 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344921 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344922)))))

(declare-fun b!774437 () Bool)

(declare-fun res!523737 () Bool)

(assert (=> b!774437 (=> (not res!523737) (not e!431106))))

(assert (=> b!774437 (= res!523737 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20729 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20729 a!3186))))))

(declare-fun b!774438 () Bool)

(declare-fun e!431101 () Bool)

(assert (=> b!774438 (= e!431101 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344922))))

(declare-fun b!774439 () Bool)

(declare-fun res!523742 () Bool)

(assert (=> b!774439 (=> (not res!523742) (not e!431106))))

(declare-datatypes ((List!14363 0))(
  ( (Nil!14360) (Cons!14359 (h!15467 (_ BitVec 64)) (t!20686 List!14363)) )
))
(declare-fun arrayNoDuplicates!0 (array!42432 (_ BitVec 32) List!14363) Bool)

(assert (=> b!774439 (= res!523742 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14360))))

(declare-fun res!523741 () Bool)

(assert (=> start!67122 (=> (not res!523741) (not e!431105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67122 (= res!523741 (validMask!0 mask!3328))))

(assert (=> start!67122 e!431105))

(assert (=> start!67122 true))

(declare-fun array_inv!16082 (array!42432) Bool)

(assert (=> start!67122 (array_inv!16082 a!3186)))

(declare-fun b!774440 () Bool)

(assert (=> b!774440 (= e!431099 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344913))))

(declare-fun b!774441 () Bool)

(declare-fun res!523734 () Bool)

(assert (=> b!774441 (=> (not res!523734) (not e!431105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774441 (= res!523734 (validKeyInArray!0 k0!2102))))

(declare-fun b!774442 () Bool)

(assert (=> b!774442 (= e!431108 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344921 resIntermediateIndex!5 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344915)))))

(declare-fun b!774443 () Bool)

(declare-fun res!523746 () Bool)

(assert (=> b!774443 (=> (not res!523746) (not e!431106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42432 (_ BitVec 32)) Bool)

(assert (=> b!774443 (= res!523746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774444 () Bool)

(declare-fun res!523732 () Bool)

(assert (=> b!774444 (=> res!523732 e!431103)))

(assert (=> b!774444 (= res!523732 (not (= lt!344912 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344921 lt!344919 lt!344920 mask!3328))))))

(declare-fun b!774445 () Bool)

(declare-fun res!523733 () Bool)

(assert (=> b!774445 (=> (not res!523733) (not e!431110))))

(assert (=> b!774445 (= res!523733 e!431101)))

(declare-fun c!85749 () Bool)

(assert (=> b!774445 (= c!85749 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774446 () Bool)

(assert (=> b!774446 (= e!431102 (not e!431107))))

(declare-fun res!523739 () Bool)

(assert (=> b!774446 (=> res!523739 e!431107)))

(get-info :version)

(assert (=> b!774446 (= res!523739 (or (not ((_ is Intermediate!7915) lt!344923)) (bvsge x!1131 (x!65003 lt!344923))))))

(assert (=> b!774446 (= lt!344915 (Found!7915 j!159))))

(assert (=> b!774446 e!431104))

(declare-fun res!523749 () Bool)

(assert (=> b!774446 (=> (not res!523749) (not e!431104))))

(assert (=> b!774446 (= res!523749 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344917 () Unit!26696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26696)

(assert (=> b!774446 (= lt!344917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774447 () Bool)

(assert (=> b!774447 (= e!431106 e!431110)))

(declare-fun res!523748 () Bool)

(assert (=> b!774447 (=> (not res!523748) (not e!431110))))

(assert (=> b!774447 (= res!523748 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20308 a!3186) j!159) mask!3328) (select (arr!20308 a!3186) j!159) a!3186 mask!3328) lt!344922))))

(assert (=> b!774447 (= lt!344922 (Intermediate!7915 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774448 () Bool)

(declare-fun res!523735 () Bool)

(assert (=> b!774448 (=> (not res!523735) (not e!431105))))

(declare-fun arrayContainsKey!0 (array!42432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774448 (= res!523735 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774449 () Bool)

(declare-fun res!523750 () Bool)

(assert (=> b!774449 (=> (not res!523750) (not e!431105))))

(assert (=> b!774449 (= res!523750 (validKeyInArray!0 (select (arr!20308 a!3186) j!159)))))

(declare-fun b!774450 () Bool)

(assert (=> b!774450 (= e!431101 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20308 a!3186) j!159) a!3186 mask!3328) (Found!7915 j!159)))))

(assert (= (and start!67122 res!523741) b!774431))

(assert (= (and b!774431 res!523736) b!774449))

(assert (= (and b!774449 res!523750) b!774441))

(assert (= (and b!774441 res!523734) b!774448))

(assert (= (and b!774448 res!523735) b!774433))

(assert (= (and b!774433 res!523740) b!774443))

(assert (= (and b!774443 res!523746) b!774439))

(assert (= (and b!774439 res!523742) b!774437))

(assert (= (and b!774437 res!523737) b!774447))

(assert (= (and b!774447 res!523748) b!774434))

(assert (= (and b!774434 res!523738) b!774445))

(assert (= (and b!774445 c!85749) b!774438))

(assert (= (and b!774445 (not c!85749)) b!774450))

(assert (= (and b!774445 res!523733) b!774427))

(assert (= (and b!774427 res!523747) b!774446))

(assert (= (and b!774446 res!523749) b!774426))

(assert (= (and b!774426 res!523744) b!774440))

(assert (= (and b!774446 (not res!523739)) b!774435))

(assert (= (and b!774435 c!85748) b!774430))

(assert (= (and b!774435 (not c!85748)) b!774429))

(assert (= (and b!774435 (not res!523743)) b!774428))

(assert (= (and b!774428 c!85747) b!774436))

(assert (= (and b!774428 (not c!85747)) b!774442))

(assert (= (and b!774428 (not res!523745)) b!774444))

(assert (= (and b!774444 (not res!523732)) b!774432))

(declare-fun m!718933 () Bool)

(assert (=> b!774444 m!718933))

(declare-fun m!718935 () Bool)

(assert (=> b!774439 m!718935))

(declare-fun m!718937 () Bool)

(assert (=> b!774434 m!718937))

(declare-fun m!718939 () Bool)

(assert (=> b!774440 m!718939))

(assert (=> b!774440 m!718939))

(declare-fun m!718941 () Bool)

(assert (=> b!774440 m!718941))

(assert (=> b!774436 m!718939))

(assert (=> b!774436 m!718939))

(declare-fun m!718943 () Bool)

(assert (=> b!774436 m!718943))

(assert (=> b!774449 m!718939))

(assert (=> b!774449 m!718939))

(declare-fun m!718945 () Bool)

(assert (=> b!774449 m!718945))

(assert (=> b!774430 m!718939))

(assert (=> b!774430 m!718939))

(assert (=> b!774430 m!718943))

(declare-fun m!718947 () Bool)

(assert (=> b!774446 m!718947))

(declare-fun m!718949 () Bool)

(assert (=> b!774446 m!718949))

(declare-fun m!718951 () Bool)

(assert (=> start!67122 m!718951))

(declare-fun m!718953 () Bool)

(assert (=> start!67122 m!718953))

(assert (=> b!774438 m!718939))

(assert (=> b!774438 m!718939))

(declare-fun m!718955 () Bool)

(assert (=> b!774438 m!718955))

(declare-fun m!718957 () Bool)

(assert (=> b!774448 m!718957))

(declare-fun m!718959 () Bool)

(assert (=> b!774433 m!718959))

(assert (=> b!774426 m!718939))

(assert (=> b!774426 m!718939))

(declare-fun m!718961 () Bool)

(assert (=> b!774426 m!718961))

(declare-fun m!718963 () Bool)

(assert (=> b!774441 m!718963))

(declare-fun m!718965 () Bool)

(assert (=> b!774427 m!718965))

(declare-fun m!718967 () Bool)

(assert (=> b!774427 m!718967))

(declare-fun m!718969 () Bool)

(assert (=> b!774427 m!718969))

(declare-fun m!718971 () Bool)

(assert (=> b!774427 m!718971))

(declare-fun m!718973 () Bool)

(assert (=> b!774427 m!718973))

(assert (=> b!774427 m!718965))

(assert (=> b!774450 m!718939))

(assert (=> b!774450 m!718939))

(declare-fun m!718975 () Bool)

(assert (=> b!774450 m!718975))

(assert (=> b!774429 m!718939))

(assert (=> b!774429 m!718939))

(assert (=> b!774429 m!718975))

(assert (=> b!774429 m!718939))

(declare-fun m!718977 () Bool)

(assert (=> b!774429 m!718977))

(assert (=> b!774442 m!718939))

(assert (=> b!774442 m!718939))

(assert (=> b!774442 m!718977))

(declare-fun m!718979 () Bool)

(assert (=> b!774435 m!718979))

(assert (=> b!774447 m!718939))

(assert (=> b!774447 m!718939))

(declare-fun m!718981 () Bool)

(assert (=> b!774447 m!718981))

(assert (=> b!774447 m!718981))

(assert (=> b!774447 m!718939))

(declare-fun m!718983 () Bool)

(assert (=> b!774447 m!718983))

(declare-fun m!718985 () Bool)

(assert (=> b!774443 m!718985))

(check-sat (not b!774450) (not b!774433) (not start!67122) (not b!774443) (not b!774442) (not b!774439) (not b!774446) (not b!774449) (not b!774444) (not b!774440) (not b!774436) (not b!774447) (not b!774426) (not b!774438) (not b!774429) (not b!774430) (not b!774435) (not b!774441) (not b!774427) (not b!774448))
(check-sat)
