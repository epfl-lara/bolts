; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67906 () Bool)

(assert start!67906)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42838 0))(
  ( (array!42839 (arr!20502 (Array (_ BitVec 32) (_ BitVec 64))) (size!20923 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42838)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!789420 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!438795 () Bool)

(declare-datatypes ((SeekEntryResult!8109 0))(
  ( (MissingZero!8109 (index!34803 (_ BitVec 32))) (Found!8109 (index!34804 (_ BitVec 32))) (Intermediate!8109 (undefined!8921 Bool) (index!34805 (_ BitVec 32)) (x!65771 (_ BitVec 32))) (Undefined!8109) (MissingVacant!8109 (index!34806 (_ BitVec 32))) )
))
(declare-fun lt!352271 () SeekEntryResult!8109)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42838 (_ BitVec 32)) SeekEntryResult!8109)

(assert (=> b!789420 (= e!438795 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20502 a!3186) j!159) a!3186 mask!3328) lt!352271))))

(declare-fun res!534856 () Bool)

(declare-fun e!438789 () Bool)

(assert (=> start!67906 (=> (not res!534856) (not e!438789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67906 (= res!534856 (validMask!0 mask!3328))))

(assert (=> start!67906 e!438789))

(assert (=> start!67906 true))

(declare-fun array_inv!16276 (array!42838) Bool)

(assert (=> start!67906 (array_inv!16276 a!3186)))

(declare-fun b!789421 () Bool)

(declare-datatypes ((Unit!27346 0))(
  ( (Unit!27347) )
))
(declare-fun e!438792 () Unit!27346)

(declare-fun Unit!27348 () Unit!27346)

(assert (=> b!789421 (= e!438792 Unit!27348)))

(declare-fun b!789422 () Bool)

(declare-fun e!438791 () Bool)

(declare-fun e!438793 () Bool)

(assert (=> b!789422 (= e!438791 e!438793)))

(declare-fun res!534858 () Bool)

(assert (=> b!789422 (=> res!534858 e!438793)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!789422 (= res!534858 (or (not (= (select (arr!20502 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352275 () SeekEntryResult!8109)

(declare-fun lt!352269 () SeekEntryResult!8109)

(declare-fun lt!352278 () SeekEntryResult!8109)

(declare-fun lt!352277 () SeekEntryResult!8109)

(assert (=> b!789422 (and (= lt!352277 lt!352278) (= lt!352275 lt!352269))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!352270 () (_ BitVec 64))

(declare-fun lt!352276 () array!42838)

(assert (=> b!789422 (= lt!352278 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352270 lt!352276 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42838 (_ BitVec 32)) SeekEntryResult!8109)

(assert (=> b!789422 (= lt!352277 (seekEntryOrOpen!0 lt!352270 lt!352276 mask!3328))))

(declare-fun lt!352273 () (_ BitVec 64))

(assert (=> b!789422 (= lt!352273 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352281 () Unit!27346)

(assert (=> b!789422 (= lt!352281 e!438792)))

(declare-fun c!87698 () Bool)

(assert (=> b!789422 (= c!87698 (= lt!352273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352272 () SeekEntryResult!8109)

(declare-fun e!438796 () Bool)

(declare-fun b!789423 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42838 (_ BitVec 32)) SeekEntryResult!8109)

(assert (=> b!789423 (= e!438796 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20502 a!3186) j!159) a!3186 mask!3328) lt!352272))))

(declare-fun b!789424 () Bool)

(declare-fun e!438790 () Bool)

(declare-fun e!438787 () Bool)

(assert (=> b!789424 (= e!438790 (not e!438787))))

(declare-fun res!534845 () Bool)

(assert (=> b!789424 (=> res!534845 e!438787)))

(declare-fun lt!352280 () SeekEntryResult!8109)

(assert (=> b!789424 (= res!534845 (or (not (is-Intermediate!8109 lt!352280)) (bvslt x!1131 (x!65771 lt!352280)) (not (= x!1131 (x!65771 lt!352280))) (not (= index!1321 (index!34805 lt!352280)))))))

(assert (=> b!789424 e!438795))

(declare-fun res!534853 () Bool)

(assert (=> b!789424 (=> (not res!534853) (not e!438795))))

(assert (=> b!789424 (= res!534853 (= lt!352275 lt!352271))))

(assert (=> b!789424 (= lt!352271 (Found!8109 j!159))))

(assert (=> b!789424 (= lt!352275 (seekEntryOrOpen!0 (select (arr!20502 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42838 (_ BitVec 32)) Bool)

(assert (=> b!789424 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352268 () Unit!27346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27346)

(assert (=> b!789424 (= lt!352268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789425 () Bool)

(declare-fun e!438785 () Bool)

(assert (=> b!789425 (= e!438785 e!438790)))

(declare-fun res!534852 () Bool)

(assert (=> b!789425 (=> (not res!534852) (not e!438790))))

(declare-fun lt!352282 () SeekEntryResult!8109)

(assert (=> b!789425 (= res!534852 (= lt!352282 lt!352280))))

(assert (=> b!789425 (= lt!352280 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352270 lt!352276 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789425 (= lt!352282 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352270 mask!3328) lt!352270 lt!352276 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789425 (= lt!352270 (select (store (arr!20502 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789425 (= lt!352276 (array!42839 (store (arr!20502 a!3186) i!1173 k!2102) (size!20923 a!3186)))))

(declare-fun b!789426 () Bool)

(declare-fun res!534855 () Bool)

(declare-fun e!438788 () Bool)

(assert (=> b!789426 (=> (not res!534855) (not e!438788))))

(assert (=> b!789426 (= res!534855 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20923 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20923 a!3186))))))

(declare-fun b!789427 () Bool)

(declare-fun res!534849 () Bool)

(assert (=> b!789427 (=> (not res!534849) (not e!438788))))

(assert (=> b!789427 (= res!534849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789428 () Bool)

(declare-fun res!534850 () Bool)

(assert (=> b!789428 (=> (not res!534850) (not e!438789))))

(declare-fun arrayContainsKey!0 (array!42838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789428 (= res!534850 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789429 () Bool)

(assert (=> b!789429 (= e!438796 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20502 a!3186) j!159) a!3186 mask!3328) (Found!8109 j!159)))))

(declare-fun b!789430 () Bool)

(declare-fun res!534857 () Bool)

(assert (=> b!789430 (=> (not res!534857) (not e!438789))))

(assert (=> b!789430 (= res!534857 (and (= (size!20923 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20923 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20923 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789431 () Bool)

(declare-fun res!534851 () Bool)

(assert (=> b!789431 (=> (not res!534851) (not e!438788))))

(declare-datatypes ((List!14557 0))(
  ( (Nil!14554) (Cons!14553 (h!15679 (_ BitVec 64)) (t!20880 List!14557)) )
))
(declare-fun arrayNoDuplicates!0 (array!42838 (_ BitVec 32) List!14557) Bool)

(assert (=> b!789431 (= res!534851 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14554))))

(declare-fun b!789432 () Bool)

(declare-fun Unit!27349 () Unit!27346)

(assert (=> b!789432 (= e!438792 Unit!27349)))

(assert (=> b!789432 false))

(declare-fun b!789433 () Bool)

(assert (=> b!789433 (= e!438789 e!438788)))

(declare-fun res!534843 () Bool)

(assert (=> b!789433 (=> (not res!534843) (not e!438788))))

(declare-fun lt!352279 () SeekEntryResult!8109)

(assert (=> b!789433 (= res!534843 (or (= lt!352279 (MissingZero!8109 i!1173)) (= lt!352279 (MissingVacant!8109 i!1173))))))

(assert (=> b!789433 (= lt!352279 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789434 () Bool)

(declare-fun res!534848 () Bool)

(assert (=> b!789434 (=> (not res!534848) (not e!438785))))

(assert (=> b!789434 (= res!534848 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20502 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789435 () Bool)

(declare-fun res!534844 () Bool)

(assert (=> b!789435 (=> (not res!534844) (not e!438785))))

(assert (=> b!789435 (= res!534844 e!438796)))

(declare-fun c!87699 () Bool)

(assert (=> b!789435 (= c!87699 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789436 () Bool)

(declare-fun res!534846 () Bool)

(assert (=> b!789436 (=> (not res!534846) (not e!438789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789436 (= res!534846 (validKeyInArray!0 (select (arr!20502 a!3186) j!159)))))

(declare-fun b!789437 () Bool)

(assert (=> b!789437 (= e!438788 e!438785)))

(declare-fun res!534847 () Bool)

(assert (=> b!789437 (=> (not res!534847) (not e!438785))))

(assert (=> b!789437 (= res!534847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20502 a!3186) j!159) mask!3328) (select (arr!20502 a!3186) j!159) a!3186 mask!3328) lt!352272))))

(assert (=> b!789437 (= lt!352272 (Intermediate!8109 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789438 () Bool)

(assert (=> b!789438 (= e!438793 true)))

(assert (=> b!789438 (= lt!352278 lt!352269)))

(declare-fun lt!352274 () Unit!27346)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42838 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27346)

(assert (=> b!789438 (= lt!352274 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789439 () Bool)

(declare-fun e!438794 () Bool)

(assert (=> b!789439 (= e!438787 e!438794)))

(declare-fun res!534859 () Bool)

(assert (=> b!789439 (=> res!534859 e!438794)))

(assert (=> b!789439 (= res!534859 (not (= lt!352269 lt!352271)))))

(assert (=> b!789439 (= lt!352269 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20502 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789440 () Bool)

(declare-fun res!534842 () Bool)

(assert (=> b!789440 (=> (not res!534842) (not e!438789))))

(assert (=> b!789440 (= res!534842 (validKeyInArray!0 k!2102))))

(declare-fun b!789441 () Bool)

(assert (=> b!789441 (= e!438794 e!438791)))

(declare-fun res!534854 () Bool)

(assert (=> b!789441 (=> res!534854 e!438791)))

(assert (=> b!789441 (= res!534854 (= lt!352273 lt!352270))))

(assert (=> b!789441 (= lt!352273 (select (store (arr!20502 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!67906 res!534856) b!789430))

(assert (= (and b!789430 res!534857) b!789436))

(assert (= (and b!789436 res!534846) b!789440))

(assert (= (and b!789440 res!534842) b!789428))

(assert (= (and b!789428 res!534850) b!789433))

(assert (= (and b!789433 res!534843) b!789427))

(assert (= (and b!789427 res!534849) b!789431))

(assert (= (and b!789431 res!534851) b!789426))

(assert (= (and b!789426 res!534855) b!789437))

(assert (= (and b!789437 res!534847) b!789434))

(assert (= (and b!789434 res!534848) b!789435))

(assert (= (and b!789435 c!87699) b!789423))

(assert (= (and b!789435 (not c!87699)) b!789429))

(assert (= (and b!789435 res!534844) b!789425))

(assert (= (and b!789425 res!534852) b!789424))

(assert (= (and b!789424 res!534853) b!789420))

(assert (= (and b!789424 (not res!534845)) b!789439))

(assert (= (and b!789439 (not res!534859)) b!789441))

(assert (= (and b!789441 (not res!534854)) b!789422))

(assert (= (and b!789422 c!87698) b!789432))

(assert (= (and b!789422 (not c!87698)) b!789421))

(assert (= (and b!789422 (not res!534858)) b!789438))

(declare-fun m!730549 () Bool)

(assert (=> b!789424 m!730549))

(assert (=> b!789424 m!730549))

(declare-fun m!730551 () Bool)

(assert (=> b!789424 m!730551))

(declare-fun m!730553 () Bool)

(assert (=> b!789424 m!730553))

(declare-fun m!730555 () Bool)

(assert (=> b!789424 m!730555))

(assert (=> b!789420 m!730549))

(assert (=> b!789420 m!730549))

(declare-fun m!730557 () Bool)

(assert (=> b!789420 m!730557))

(assert (=> b!789439 m!730549))

(assert (=> b!789439 m!730549))

(declare-fun m!730559 () Bool)

(assert (=> b!789439 m!730559))

(declare-fun m!730561 () Bool)

(assert (=> b!789438 m!730561))

(declare-fun m!730563 () Bool)

(assert (=> b!789440 m!730563))

(declare-fun m!730565 () Bool)

(assert (=> b!789433 m!730565))

(declare-fun m!730567 () Bool)

(assert (=> b!789422 m!730567))

(declare-fun m!730569 () Bool)

(assert (=> b!789422 m!730569))

(declare-fun m!730571 () Bool)

(assert (=> b!789422 m!730571))

(declare-fun m!730573 () Bool)

(assert (=> b!789425 m!730573))

(declare-fun m!730575 () Bool)

(assert (=> b!789425 m!730575))

(declare-fun m!730577 () Bool)

(assert (=> b!789425 m!730577))

(declare-fun m!730579 () Bool)

(assert (=> b!789425 m!730579))

(declare-fun m!730581 () Bool)

(assert (=> b!789425 m!730581))

(assert (=> b!789425 m!730579))

(assert (=> b!789441 m!730575))

(declare-fun m!730583 () Bool)

(assert (=> b!789441 m!730583))

(declare-fun m!730585 () Bool)

(assert (=> b!789434 m!730585))

(assert (=> b!789429 m!730549))

(assert (=> b!789429 m!730549))

(assert (=> b!789429 m!730559))

(declare-fun m!730587 () Bool)

(assert (=> b!789431 m!730587))

(assert (=> b!789437 m!730549))

(assert (=> b!789437 m!730549))

(declare-fun m!730589 () Bool)

(assert (=> b!789437 m!730589))

(assert (=> b!789437 m!730589))

(assert (=> b!789437 m!730549))

(declare-fun m!730591 () Bool)

(assert (=> b!789437 m!730591))

(declare-fun m!730593 () Bool)

(assert (=> b!789428 m!730593))

(assert (=> b!789423 m!730549))

(assert (=> b!789423 m!730549))

(declare-fun m!730595 () Bool)

(assert (=> b!789423 m!730595))

(declare-fun m!730597 () Bool)

(assert (=> b!789427 m!730597))

(assert (=> b!789436 m!730549))

(assert (=> b!789436 m!730549))

(declare-fun m!730599 () Bool)

(assert (=> b!789436 m!730599))

(declare-fun m!730601 () Bool)

(assert (=> start!67906 m!730601))

(declare-fun m!730603 () Bool)

(assert (=> start!67906 m!730603))

(push 1)

