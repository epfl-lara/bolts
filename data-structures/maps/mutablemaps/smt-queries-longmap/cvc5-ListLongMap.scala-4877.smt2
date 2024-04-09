; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67192 () Bool)

(assert start!67192)

(declare-fun b!776587 () Bool)

(declare-fun res!525523 () Bool)

(declare-fun e!432158 () Bool)

(assert (=> b!776587 (=> (not res!525523) (not e!432158))))

(declare-datatypes ((array!42502 0))(
  ( (array!42503 (arr!20343 (Array (_ BitVec 32) (_ BitVec 64))) (size!20764 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42502)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!776587 (= res!525523 (and (= (size!20764 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20764 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20764 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!525529 () Bool)

(assert (=> start!67192 (=> (not res!525529) (not e!432158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67192 (= res!525529 (validMask!0 mask!3328))))

(assert (=> start!67192 e!432158))

(assert (=> start!67192 true))

(declare-fun array_inv!16117 (array!42502) Bool)

(assert (=> start!67192 (array_inv!16117 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!432155 () Bool)

(declare-fun b!776588 () Bool)

(declare-datatypes ((SeekEntryResult!7950 0))(
  ( (MissingZero!7950 (index!34167 (_ BitVec 32))) (Found!7950 (index!34168 (_ BitVec 32))) (Intermediate!7950 (undefined!8762 Bool) (index!34169 (_ BitVec 32)) (x!65134 (_ BitVec 32))) (Undefined!7950) (MissingVacant!7950 (index!34170 (_ BitVec 32))) )
))
(declare-fun lt!346026 () SeekEntryResult!7950)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42502 (_ BitVec 32)) SeekEntryResult!7950)

(assert (=> b!776588 (= e!432155 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20343 a!3186) j!159) a!3186 mask!3328) lt!346026))))

(declare-fun b!776589 () Bool)

(declare-fun res!525538 () Bool)

(assert (=> b!776589 (=> (not res!525538) (not e!432158))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776589 (= res!525538 (validKeyInArray!0 k!2102))))

(declare-fun b!776590 () Bool)

(declare-fun e!432157 () Bool)

(declare-fun e!432161 () Bool)

(assert (=> b!776590 (= e!432157 (not e!432161))))

(declare-fun res!525526 () Bool)

(assert (=> b!776590 (=> res!525526 e!432161)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!346025 () SeekEntryResult!7950)

(assert (=> b!776590 (= res!525526 (or (not (is-Intermediate!7950 lt!346025)) (bvslt x!1131 (x!65134 lt!346025)) (not (= x!1131 (x!65134 lt!346025))) (not (= index!1321 (index!34169 lt!346025)))))))

(declare-fun e!432163 () Bool)

(assert (=> b!776590 e!432163))

(declare-fun res!525524 () Bool)

(assert (=> b!776590 (=> (not res!525524) (not e!432163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42502 (_ BitVec 32)) Bool)

(assert (=> b!776590 (= res!525524 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26794 0))(
  ( (Unit!26795) )
))
(declare-fun lt!346033 () Unit!26794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26794)

(assert (=> b!776590 (= lt!346033 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776591 () Bool)

(assert (=> b!776591 (= e!432163 e!432155)))

(declare-fun res!525527 () Bool)

(assert (=> b!776591 (=> (not res!525527) (not e!432155))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42502 (_ BitVec 32)) SeekEntryResult!7950)

(assert (=> b!776591 (= res!525527 (= (seekEntryOrOpen!0 (select (arr!20343 a!3186) j!159) a!3186 mask!3328) lt!346026))))

(assert (=> b!776591 (= lt!346026 (Found!7950 j!159))))

(declare-fun b!776592 () Bool)

(declare-fun res!525525 () Bool)

(declare-fun e!432160 () Bool)

(assert (=> b!776592 (=> (not res!525525) (not e!432160))))

(declare-fun e!432162 () Bool)

(assert (=> b!776592 (= res!525525 e!432162)))

(declare-fun c!85932 () Bool)

(assert (=> b!776592 (= c!85932 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776593 () Bool)

(assert (=> b!776593 (= e!432160 e!432157)))

(declare-fun res!525536 () Bool)

(assert (=> b!776593 (=> (not res!525536) (not e!432157))))

(declare-fun lt!346027 () SeekEntryResult!7950)

(assert (=> b!776593 (= res!525536 (= lt!346027 lt!346025))))

(declare-fun lt!346028 () array!42502)

(declare-fun lt!346032 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42502 (_ BitVec 32)) SeekEntryResult!7950)

(assert (=> b!776593 (= lt!346025 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346032 lt!346028 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776593 (= lt!346027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346032 mask!3328) lt!346032 lt!346028 mask!3328))))

(assert (=> b!776593 (= lt!346032 (select (store (arr!20343 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776593 (= lt!346028 (array!42503 (store (arr!20343 a!3186) i!1173 k!2102) (size!20764 a!3186)))))

(declare-fun b!776594 () Bool)

(declare-fun res!525533 () Bool)

(declare-fun e!432159 () Bool)

(assert (=> b!776594 (=> (not res!525533) (not e!432159))))

(declare-datatypes ((List!14398 0))(
  ( (Nil!14395) (Cons!14394 (h!15502 (_ BitVec 64)) (t!20721 List!14398)) )
))
(declare-fun arrayNoDuplicates!0 (array!42502 (_ BitVec 32) List!14398) Bool)

(assert (=> b!776594 (= res!525533 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14395))))

(declare-fun b!776595 () Bool)

(assert (=> b!776595 (= e!432158 e!432159)))

(declare-fun res!525534 () Bool)

(assert (=> b!776595 (=> (not res!525534) (not e!432159))))

(declare-fun lt!346030 () SeekEntryResult!7950)

(assert (=> b!776595 (= res!525534 (or (= lt!346030 (MissingZero!7950 i!1173)) (= lt!346030 (MissingVacant!7950 i!1173))))))

(assert (=> b!776595 (= lt!346030 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!776596 () Bool)

(declare-fun res!525530 () Bool)

(assert (=> b!776596 (=> (not res!525530) (not e!432160))))

(assert (=> b!776596 (= res!525530 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20343 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776597 () Bool)

(declare-fun res!525528 () Bool)

(assert (=> b!776597 (=> (not res!525528) (not e!432158))))

(declare-fun arrayContainsKey!0 (array!42502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776597 (= res!525528 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776598 () Bool)

(assert (=> b!776598 (= e!432162 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20343 a!3186) j!159) a!3186 mask!3328) (Found!7950 j!159)))))

(declare-fun b!776599 () Bool)

(declare-fun res!525537 () Bool)

(assert (=> b!776599 (=> (not res!525537) (not e!432159))))

(assert (=> b!776599 (= res!525537 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20764 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20764 a!3186))))))

(declare-fun b!776600 () Bool)

(assert (=> b!776600 (= e!432159 e!432160)))

(declare-fun res!525531 () Bool)

(assert (=> b!776600 (=> (not res!525531) (not e!432160))))

(declare-fun lt!346029 () SeekEntryResult!7950)

(assert (=> b!776600 (= res!525531 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20343 a!3186) j!159) mask!3328) (select (arr!20343 a!3186) j!159) a!3186 mask!3328) lt!346029))))

(assert (=> b!776600 (= lt!346029 (Intermediate!7950 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776601 () Bool)

(assert (=> b!776601 (= e!432161 true)))

(declare-fun lt!346031 () SeekEntryResult!7950)

(assert (=> b!776601 (= lt!346031 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20343 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776602 () Bool)

(declare-fun res!525535 () Bool)

(assert (=> b!776602 (=> (not res!525535) (not e!432159))))

(assert (=> b!776602 (= res!525535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776603 () Bool)

(declare-fun res!525532 () Bool)

(assert (=> b!776603 (=> (not res!525532) (not e!432158))))

(assert (=> b!776603 (= res!525532 (validKeyInArray!0 (select (arr!20343 a!3186) j!159)))))

(declare-fun b!776604 () Bool)

(assert (=> b!776604 (= e!432162 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20343 a!3186) j!159) a!3186 mask!3328) lt!346029))))

(assert (= (and start!67192 res!525529) b!776587))

(assert (= (and b!776587 res!525523) b!776603))

(assert (= (and b!776603 res!525532) b!776589))

(assert (= (and b!776589 res!525538) b!776597))

(assert (= (and b!776597 res!525528) b!776595))

(assert (= (and b!776595 res!525534) b!776602))

(assert (= (and b!776602 res!525535) b!776594))

(assert (= (and b!776594 res!525533) b!776599))

(assert (= (and b!776599 res!525537) b!776600))

(assert (= (and b!776600 res!525531) b!776596))

(assert (= (and b!776596 res!525530) b!776592))

(assert (= (and b!776592 c!85932) b!776604))

(assert (= (and b!776592 (not c!85932)) b!776598))

(assert (= (and b!776592 res!525525) b!776593))

(assert (= (and b!776593 res!525536) b!776590))

(assert (= (and b!776590 res!525524) b!776591))

(assert (= (and b!776591 res!525527) b!776588))

(assert (= (and b!776590 (not res!525526)) b!776601))

(declare-fun m!720703 () Bool)

(assert (=> b!776590 m!720703))

(declare-fun m!720705 () Bool)

(assert (=> b!776590 m!720705))

(declare-fun m!720707 () Bool)

(assert (=> b!776591 m!720707))

(assert (=> b!776591 m!720707))

(declare-fun m!720709 () Bool)

(assert (=> b!776591 m!720709))

(assert (=> b!776601 m!720707))

(assert (=> b!776601 m!720707))

(declare-fun m!720711 () Bool)

(assert (=> b!776601 m!720711))

(assert (=> b!776603 m!720707))

(assert (=> b!776603 m!720707))

(declare-fun m!720713 () Bool)

(assert (=> b!776603 m!720713))

(declare-fun m!720715 () Bool)

(assert (=> b!776602 m!720715))

(assert (=> b!776588 m!720707))

(assert (=> b!776588 m!720707))

(declare-fun m!720717 () Bool)

(assert (=> b!776588 m!720717))

(declare-fun m!720719 () Bool)

(assert (=> start!67192 m!720719))

(declare-fun m!720721 () Bool)

(assert (=> start!67192 m!720721))

(assert (=> b!776604 m!720707))

(assert (=> b!776604 m!720707))

(declare-fun m!720723 () Bool)

(assert (=> b!776604 m!720723))

(assert (=> b!776598 m!720707))

(assert (=> b!776598 m!720707))

(assert (=> b!776598 m!720711))

(declare-fun m!720725 () Bool)

(assert (=> b!776596 m!720725))

(declare-fun m!720727 () Bool)

(assert (=> b!776593 m!720727))

(declare-fun m!720729 () Bool)

(assert (=> b!776593 m!720729))

(declare-fun m!720731 () Bool)

(assert (=> b!776593 m!720731))

(assert (=> b!776593 m!720729))

(declare-fun m!720733 () Bool)

(assert (=> b!776593 m!720733))

(declare-fun m!720735 () Bool)

(assert (=> b!776593 m!720735))

(declare-fun m!720737 () Bool)

(assert (=> b!776589 m!720737))

(declare-fun m!720739 () Bool)

(assert (=> b!776594 m!720739))

(declare-fun m!720741 () Bool)

(assert (=> b!776597 m!720741))

(declare-fun m!720743 () Bool)

(assert (=> b!776595 m!720743))

(assert (=> b!776600 m!720707))

(assert (=> b!776600 m!720707))

(declare-fun m!720745 () Bool)

(assert (=> b!776600 m!720745))

(assert (=> b!776600 m!720745))

(assert (=> b!776600 m!720707))

(declare-fun m!720747 () Bool)

(assert (=> b!776600 m!720747))

(push 1)

