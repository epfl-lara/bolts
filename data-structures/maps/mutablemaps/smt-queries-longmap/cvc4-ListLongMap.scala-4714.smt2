; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65366 () Bool)

(assert start!65366)

(declare-datatypes ((SeekEntryResult!7463 0))(
  ( (MissingZero!7463 (index!32219 (_ BitVec 32))) (Found!7463 (index!32220 (_ BitVec 32))) (Intermediate!7463 (undefined!8275 Bool) (index!32221 (_ BitVec 32)) (x!63214 (_ BitVec 32))) (Undefined!7463) (MissingVacant!7463 (index!32222 (_ BitVec 32))) )
))
(declare-fun lt!329906 () SeekEntryResult!7463)

(declare-datatypes ((array!41492 0))(
  ( (array!41493 (arr!19856 (Array (_ BitVec 32) (_ BitVec 64))) (size!20277 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41492)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!742572 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!415007 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41492 (_ BitVec 32)) SeekEntryResult!7463)

(assert (=> b!742572 (= e!415007 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19856 a!3186) j!159) a!3186 mask!3328) lt!329906))))

(declare-fun b!742573 () Bool)

(declare-fun res!499879 () Bool)

(declare-fun e!415010 () Bool)

(assert (=> b!742573 (=> (not res!499879) (not e!415010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742573 (= res!499879 (validKeyInArray!0 (select (arr!19856 a!3186) j!159)))))

(declare-fun b!742574 () Bool)

(declare-fun e!415009 () Bool)

(assert (=> b!742574 (= e!415010 e!415009)))

(declare-fun res!499887 () Bool)

(assert (=> b!742574 (=> (not res!499887) (not e!415009))))

(declare-fun lt!329912 () SeekEntryResult!7463)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742574 (= res!499887 (or (= lt!329912 (MissingZero!7463 i!1173)) (= lt!329912 (MissingVacant!7463 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41492 (_ BitVec 32)) SeekEntryResult!7463)

(assert (=> b!742574 (= lt!329912 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!499889 () Bool)

(assert (=> start!65366 (=> (not res!499889) (not e!415010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65366 (= res!499889 (validMask!0 mask!3328))))

(assert (=> start!65366 e!415010))

(assert (=> start!65366 true))

(declare-fun array_inv!15630 (array!41492) Bool)

(assert (=> start!65366 (array_inv!15630 a!3186)))

(declare-fun b!742575 () Bool)

(declare-fun e!415008 () Bool)

(declare-fun e!415011 () Bool)

(assert (=> b!742575 (= e!415008 e!415011)))

(declare-fun res!499882 () Bool)

(assert (=> b!742575 (=> (not res!499882) (not e!415011))))

(declare-fun lt!329911 () SeekEntryResult!7463)

(declare-fun lt!329907 () SeekEntryResult!7463)

(assert (=> b!742575 (= res!499882 (= lt!329911 lt!329907))))

(declare-fun lt!329904 () array!41492)

(declare-fun lt!329909 () (_ BitVec 64))

(assert (=> b!742575 (= lt!329907 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329909 lt!329904 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742575 (= lt!329911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329909 mask!3328) lt!329909 lt!329904 mask!3328))))

(assert (=> b!742575 (= lt!329909 (select (store (arr!19856 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742575 (= lt!329904 (array!41493 (store (arr!19856 a!3186) i!1173 k!2102) (size!20277 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!742576 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41492 (_ BitVec 32)) SeekEntryResult!7463)

(assert (=> b!742576 (= e!415007 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19856 a!3186) j!159) a!3186 mask!3328) (Found!7463 j!159)))))

(declare-fun b!742577 () Bool)

(declare-fun res!499885 () Bool)

(assert (=> b!742577 (=> (not res!499885) (not e!415010))))

(assert (=> b!742577 (= res!499885 (validKeyInArray!0 k!2102))))

(declare-fun b!742578 () Bool)

(declare-fun res!499890 () Bool)

(assert (=> b!742578 (=> (not res!499890) (not e!415009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41492 (_ BitVec 32)) Bool)

(assert (=> b!742578 (= res!499890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742579 () Bool)

(declare-fun res!499883 () Bool)

(assert (=> b!742579 (=> (not res!499883) (not e!415008))))

(assert (=> b!742579 (= res!499883 e!415007)))

(declare-fun c!81729 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742579 (= c!81729 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742580 () Bool)

(declare-fun res!499875 () Bool)

(assert (=> b!742580 (=> (not res!499875) (not e!415008))))

(assert (=> b!742580 (= res!499875 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19856 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742581 () Bool)

(declare-fun e!415003 () Bool)

(declare-fun e!415004 () Bool)

(assert (=> b!742581 (= e!415003 e!415004)))

(declare-fun res!499880 () Bool)

(assert (=> b!742581 (=> (not res!499880) (not e!415004))))

(declare-fun lt!329908 () SeekEntryResult!7463)

(assert (=> b!742581 (= res!499880 (= (seekEntryOrOpen!0 (select (arr!19856 a!3186) j!159) a!3186 mask!3328) lt!329908))))

(assert (=> b!742581 (= lt!329908 (Found!7463 j!159))))

(declare-fun b!742582 () Bool)

(declare-fun res!499888 () Bool)

(assert (=> b!742582 (=> (not res!499888) (not e!415010))))

(declare-fun arrayContainsKey!0 (array!41492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742582 (= res!499888 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742583 () Bool)

(declare-fun e!415005 () Bool)

(assert (=> b!742583 (= e!415005 true)))

(declare-fun lt!329905 () SeekEntryResult!7463)

(assert (=> b!742583 (= lt!329905 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19856 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742584 () Bool)

(assert (=> b!742584 (= e!415011 (not e!415005))))

(declare-fun res!499884 () Bool)

(assert (=> b!742584 (=> res!499884 e!415005)))

(assert (=> b!742584 (= res!499884 (or (not (is-Intermediate!7463 lt!329907)) (bvslt x!1131 (x!63214 lt!329907)) (not (= x!1131 (x!63214 lt!329907))) (not (= index!1321 (index!32221 lt!329907)))))))

(assert (=> b!742584 e!415003))

(declare-fun res!499876 () Bool)

(assert (=> b!742584 (=> (not res!499876) (not e!415003))))

(assert (=> b!742584 (= res!499876 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25406 0))(
  ( (Unit!25407) )
))
(declare-fun lt!329910 () Unit!25406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25406)

(assert (=> b!742584 (= lt!329910 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742585 () Bool)

(declare-fun res!499877 () Bool)

(assert (=> b!742585 (=> (not res!499877) (not e!415009))))

(declare-datatypes ((List!13911 0))(
  ( (Nil!13908) (Cons!13907 (h!14979 (_ BitVec 64)) (t!20234 List!13911)) )
))
(declare-fun arrayNoDuplicates!0 (array!41492 (_ BitVec 32) List!13911) Bool)

(assert (=> b!742585 (= res!499877 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13908))))

(declare-fun b!742586 () Bool)

(assert (=> b!742586 (= e!415009 e!415008)))

(declare-fun res!499881 () Bool)

(assert (=> b!742586 (=> (not res!499881) (not e!415008))))

(assert (=> b!742586 (= res!499881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19856 a!3186) j!159) mask!3328) (select (arr!19856 a!3186) j!159) a!3186 mask!3328) lt!329906))))

(assert (=> b!742586 (= lt!329906 (Intermediate!7463 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742587 () Bool)

(declare-fun res!499886 () Bool)

(assert (=> b!742587 (=> (not res!499886) (not e!415009))))

(assert (=> b!742587 (= res!499886 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20277 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20277 a!3186))))))

(declare-fun b!742588 () Bool)

(assert (=> b!742588 (= e!415004 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19856 a!3186) j!159) a!3186 mask!3328) lt!329908))))

(declare-fun b!742589 () Bool)

(declare-fun res!499878 () Bool)

(assert (=> b!742589 (=> (not res!499878) (not e!415010))))

(assert (=> b!742589 (= res!499878 (and (= (size!20277 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20277 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20277 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65366 res!499889) b!742589))

(assert (= (and b!742589 res!499878) b!742573))

(assert (= (and b!742573 res!499879) b!742577))

(assert (= (and b!742577 res!499885) b!742582))

(assert (= (and b!742582 res!499888) b!742574))

(assert (= (and b!742574 res!499887) b!742578))

(assert (= (and b!742578 res!499890) b!742585))

(assert (= (and b!742585 res!499877) b!742587))

(assert (= (and b!742587 res!499886) b!742586))

(assert (= (and b!742586 res!499881) b!742580))

(assert (= (and b!742580 res!499875) b!742579))

(assert (= (and b!742579 c!81729) b!742572))

(assert (= (and b!742579 (not c!81729)) b!742576))

(assert (= (and b!742579 res!499883) b!742575))

(assert (= (and b!742575 res!499882) b!742584))

(assert (= (and b!742584 res!499876) b!742581))

(assert (= (and b!742581 res!499880) b!742588))

(assert (= (and b!742584 (not res!499884)) b!742583))

(declare-fun m!693495 () Bool)

(assert (=> b!742582 m!693495))

(declare-fun m!693497 () Bool)

(assert (=> b!742573 m!693497))

(assert (=> b!742573 m!693497))

(declare-fun m!693499 () Bool)

(assert (=> b!742573 m!693499))

(assert (=> b!742583 m!693497))

(assert (=> b!742583 m!693497))

(declare-fun m!693501 () Bool)

(assert (=> b!742583 m!693501))

(assert (=> b!742581 m!693497))

(assert (=> b!742581 m!693497))

(declare-fun m!693503 () Bool)

(assert (=> b!742581 m!693503))

(declare-fun m!693505 () Bool)

(assert (=> b!742580 m!693505))

(assert (=> b!742588 m!693497))

(assert (=> b!742588 m!693497))

(declare-fun m!693507 () Bool)

(assert (=> b!742588 m!693507))

(declare-fun m!693509 () Bool)

(assert (=> b!742584 m!693509))

(declare-fun m!693511 () Bool)

(assert (=> b!742584 m!693511))

(declare-fun m!693513 () Bool)

(assert (=> start!65366 m!693513))

(declare-fun m!693515 () Bool)

(assert (=> start!65366 m!693515))

(declare-fun m!693517 () Bool)

(assert (=> b!742578 m!693517))

(declare-fun m!693519 () Bool)

(assert (=> b!742585 m!693519))

(declare-fun m!693521 () Bool)

(assert (=> b!742577 m!693521))

(assert (=> b!742586 m!693497))

(assert (=> b!742586 m!693497))

(declare-fun m!693523 () Bool)

(assert (=> b!742586 m!693523))

(assert (=> b!742586 m!693523))

(assert (=> b!742586 m!693497))

(declare-fun m!693525 () Bool)

(assert (=> b!742586 m!693525))

(assert (=> b!742576 m!693497))

(assert (=> b!742576 m!693497))

(assert (=> b!742576 m!693501))

(declare-fun m!693527 () Bool)

(assert (=> b!742575 m!693527))

(declare-fun m!693529 () Bool)

(assert (=> b!742575 m!693529))

(assert (=> b!742575 m!693527))

(declare-fun m!693531 () Bool)

(assert (=> b!742575 m!693531))

(declare-fun m!693533 () Bool)

(assert (=> b!742575 m!693533))

(declare-fun m!693535 () Bool)

(assert (=> b!742575 m!693535))

(assert (=> b!742572 m!693497))

(assert (=> b!742572 m!693497))

(declare-fun m!693537 () Bool)

(assert (=> b!742572 m!693537))

(declare-fun m!693539 () Bool)

(assert (=> b!742574 m!693539))

(push 1)

