; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65330 () Bool)

(assert start!65330)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41456 0))(
  ( (array!41457 (arr!19838 (Array (_ BitVec 32) (_ BitVec 64))) (size!20259 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41456)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!741619 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!414545 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7445 0))(
  ( (MissingZero!7445 (index!32147 (_ BitVec 32))) (Found!7445 (index!32148 (_ BitVec 32))) (Intermediate!7445 (undefined!8257 Bool) (index!32149 (_ BitVec 32)) (x!63148 (_ BitVec 32))) (Undefined!7445) (MissingVacant!7445 (index!32150 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41456 (_ BitVec 32)) SeekEntryResult!7445)

(assert (=> b!741619 (= e!414545 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19838 a!3186) j!159) a!3186 mask!3328) (Found!7445 j!159)))))

(declare-fun b!741620 () Bool)

(declare-fun e!414550 () Bool)

(declare-fun e!414552 () Bool)

(assert (=> b!741620 (= e!414550 e!414552)))

(declare-fun res!499042 () Bool)

(assert (=> b!741620 (=> (not res!499042) (not e!414552))))

(declare-fun lt!329494 () SeekEntryResult!7445)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41456 (_ BitVec 32)) SeekEntryResult!7445)

(assert (=> b!741620 (= res!499042 (= (seekEntryOrOpen!0 (select (arr!19838 a!3186) j!159) a!3186 mask!3328) lt!329494))))

(assert (=> b!741620 (= lt!329494 (Found!7445 j!159))))

(declare-fun b!741621 () Bool)

(declare-fun res!499038 () Bool)

(declare-fun e!414547 () Bool)

(assert (=> b!741621 (=> (not res!499038) (not e!414547))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741621 (= res!499038 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20259 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20259 a!3186))))))

(declare-fun res!499034 () Bool)

(declare-fun e!414546 () Bool)

(assert (=> start!65330 (=> (not res!499034) (not e!414546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65330 (= res!499034 (validMask!0 mask!3328))))

(assert (=> start!65330 e!414546))

(assert (=> start!65330 true))

(declare-fun array_inv!15612 (array!41456) Bool)

(assert (=> start!65330 (array_inv!15612 a!3186)))

(declare-fun b!741622 () Bool)

(assert (=> b!741622 (= e!414552 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19838 a!3186) j!159) a!3186 mask!3328) lt!329494))))

(declare-fun b!741623 () Bool)

(declare-fun res!499043 () Bool)

(assert (=> b!741623 (=> (not res!499043) (not e!414546))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741623 (= res!499043 (validKeyInArray!0 k!2102))))

(declare-fun b!741624 () Bool)

(declare-fun e!414548 () Bool)

(assert (=> b!741624 (= e!414547 e!414548)))

(declare-fun res!499044 () Bool)

(assert (=> b!741624 (=> (not res!499044) (not e!414548))))

(declare-fun lt!329497 () SeekEntryResult!7445)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41456 (_ BitVec 32)) SeekEntryResult!7445)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741624 (= res!499044 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19838 a!3186) j!159) mask!3328) (select (arr!19838 a!3186) j!159) a!3186 mask!3328) lt!329497))))

(assert (=> b!741624 (= lt!329497 (Intermediate!7445 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741625 () Bool)

(declare-fun res!499035 () Bool)

(assert (=> b!741625 (=> (not res!499035) (not e!414548))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741625 (= res!499035 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19838 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741626 () Bool)

(declare-fun e!414549 () Bool)

(assert (=> b!741626 (= e!414548 e!414549)))

(declare-fun res!499039 () Bool)

(assert (=> b!741626 (=> (not res!499039) (not e!414549))))

(declare-fun lt!329493 () array!41456)

(declare-fun lt!329498 () (_ BitVec 64))

(assert (=> b!741626 (= res!499039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329498 mask!3328) lt!329498 lt!329493 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329498 lt!329493 mask!3328)))))

(assert (=> b!741626 (= lt!329498 (select (store (arr!19838 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741626 (= lt!329493 (array!41457 (store (arr!19838 a!3186) i!1173 k!2102) (size!20259 a!3186)))))

(declare-fun b!741627 () Bool)

(assert (=> b!741627 (= e!414546 e!414547)))

(declare-fun res!499032 () Bool)

(assert (=> b!741627 (=> (not res!499032) (not e!414547))))

(declare-fun lt!329496 () SeekEntryResult!7445)

(assert (=> b!741627 (= res!499032 (or (= lt!329496 (MissingZero!7445 i!1173)) (= lt!329496 (MissingVacant!7445 i!1173))))))

(assert (=> b!741627 (= lt!329496 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741628 () Bool)

(declare-fun res!499037 () Bool)

(assert (=> b!741628 (=> (not res!499037) (not e!414546))))

(assert (=> b!741628 (= res!499037 (validKeyInArray!0 (select (arr!19838 a!3186) j!159)))))

(declare-fun b!741629 () Bool)

(declare-fun res!499036 () Bool)

(assert (=> b!741629 (=> (not res!499036) (not e!414546))))

(assert (=> b!741629 (= res!499036 (and (= (size!20259 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20259 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20259 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741630 () Bool)

(declare-fun res!499041 () Bool)

(assert (=> b!741630 (=> (not res!499041) (not e!414547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41456 (_ BitVec 32)) Bool)

(assert (=> b!741630 (= res!499041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741631 () Bool)

(assert (=> b!741631 (= e!414549 (not true))))

(assert (=> b!741631 e!414550))

(declare-fun res!499030 () Bool)

(assert (=> b!741631 (=> (not res!499030) (not e!414550))))

(assert (=> b!741631 (= res!499030 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25370 0))(
  ( (Unit!25371) )
))
(declare-fun lt!329495 () Unit!25370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25370)

(assert (=> b!741631 (= lt!329495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741632 () Bool)

(declare-fun res!499033 () Bool)

(assert (=> b!741632 (=> (not res!499033) (not e!414547))))

(declare-datatypes ((List!13893 0))(
  ( (Nil!13890) (Cons!13889 (h!14961 (_ BitVec 64)) (t!20216 List!13893)) )
))
(declare-fun arrayNoDuplicates!0 (array!41456 (_ BitVec 32) List!13893) Bool)

(assert (=> b!741632 (= res!499033 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13890))))

(declare-fun b!741633 () Bool)

(assert (=> b!741633 (= e!414545 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19838 a!3186) j!159) a!3186 mask!3328) lt!329497))))

(declare-fun b!741634 () Bool)

(declare-fun res!499031 () Bool)

(assert (=> b!741634 (=> (not res!499031) (not e!414548))))

(assert (=> b!741634 (= res!499031 e!414545)))

(declare-fun c!81675 () Bool)

(assert (=> b!741634 (= c!81675 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741635 () Bool)

(declare-fun res!499040 () Bool)

(assert (=> b!741635 (=> (not res!499040) (not e!414546))))

(declare-fun arrayContainsKey!0 (array!41456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741635 (= res!499040 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65330 res!499034) b!741629))

(assert (= (and b!741629 res!499036) b!741628))

(assert (= (and b!741628 res!499037) b!741623))

(assert (= (and b!741623 res!499043) b!741635))

(assert (= (and b!741635 res!499040) b!741627))

(assert (= (and b!741627 res!499032) b!741630))

(assert (= (and b!741630 res!499041) b!741632))

(assert (= (and b!741632 res!499033) b!741621))

(assert (= (and b!741621 res!499038) b!741624))

(assert (= (and b!741624 res!499044) b!741625))

(assert (= (and b!741625 res!499035) b!741634))

(assert (= (and b!741634 c!81675) b!741633))

(assert (= (and b!741634 (not c!81675)) b!741619))

(assert (= (and b!741634 res!499031) b!741626))

(assert (= (and b!741626 res!499039) b!741631))

(assert (= (and b!741631 res!499030) b!741620))

(assert (= (and b!741620 res!499042) b!741622))

(declare-fun m!692661 () Bool)

(assert (=> b!741630 m!692661))

(declare-fun m!692663 () Bool)

(assert (=> b!741624 m!692663))

(assert (=> b!741624 m!692663))

(declare-fun m!692665 () Bool)

(assert (=> b!741624 m!692665))

(assert (=> b!741624 m!692665))

(assert (=> b!741624 m!692663))

(declare-fun m!692667 () Bool)

(assert (=> b!741624 m!692667))

(assert (=> b!741633 m!692663))

(assert (=> b!741633 m!692663))

(declare-fun m!692669 () Bool)

(assert (=> b!741633 m!692669))

(assert (=> b!741628 m!692663))

(assert (=> b!741628 m!692663))

(declare-fun m!692671 () Bool)

(assert (=> b!741628 m!692671))

(declare-fun m!692673 () Bool)

(assert (=> b!741626 m!692673))

(declare-fun m!692675 () Bool)

(assert (=> b!741626 m!692675))

(declare-fun m!692677 () Bool)

(assert (=> b!741626 m!692677))

(assert (=> b!741626 m!692673))

(declare-fun m!692679 () Bool)

(assert (=> b!741626 m!692679))

(declare-fun m!692681 () Bool)

(assert (=> b!741626 m!692681))

(declare-fun m!692683 () Bool)

(assert (=> b!741635 m!692683))

(declare-fun m!692685 () Bool)

(assert (=> b!741631 m!692685))

(declare-fun m!692687 () Bool)

(assert (=> b!741631 m!692687))

(assert (=> b!741619 m!692663))

(assert (=> b!741619 m!692663))

(declare-fun m!692689 () Bool)

(assert (=> b!741619 m!692689))

(declare-fun m!692691 () Bool)

(assert (=> start!65330 m!692691))

(declare-fun m!692693 () Bool)

(assert (=> start!65330 m!692693))

(declare-fun m!692695 () Bool)

(assert (=> b!741627 m!692695))

(declare-fun m!692697 () Bool)

(assert (=> b!741623 m!692697))

(declare-fun m!692699 () Bool)

(assert (=> b!741625 m!692699))

(assert (=> b!741622 m!692663))

(assert (=> b!741622 m!692663))

(declare-fun m!692701 () Bool)

(assert (=> b!741622 m!692701))

(assert (=> b!741620 m!692663))

(assert (=> b!741620 m!692663))

(declare-fun m!692703 () Bool)

(assert (=> b!741620 m!692703))

(declare-fun m!692705 () Bool)

(assert (=> b!741632 m!692705))

(push 1)

