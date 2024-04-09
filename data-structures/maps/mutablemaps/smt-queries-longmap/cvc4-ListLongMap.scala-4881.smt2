; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67286 () Bool)

(assert start!67286)

(declare-fun b!777848 () Bool)

(declare-fun res!526391 () Bool)

(declare-fun e!432795 () Bool)

(assert (=> b!777848 (=> (not res!526391) (not e!432795))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42533 0))(
  ( (array!42534 (arr!20357 (Array (_ BitVec 32) (_ BitVec 64))) (size!20778 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42533)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777848 (= res!526391 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20778 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20778 a!3186))))))

(declare-fun b!777849 () Bool)

(declare-fun e!432794 () Bool)

(assert (=> b!777849 (= e!432794 true)))

(declare-datatypes ((SeekEntryResult!7964 0))(
  ( (MissingZero!7964 (index!34223 (_ BitVec 32))) (Found!7964 (index!34224 (_ BitVec 32))) (Intermediate!7964 (undefined!8776 Bool) (index!34225 (_ BitVec 32)) (x!65189 (_ BitVec 32))) (Undefined!7964) (MissingVacant!7964 (index!34226 (_ BitVec 32))) )
))
(declare-fun lt!346573 () SeekEntryResult!7964)

(declare-fun lt!346574 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!346571 () array!42533)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42533 (_ BitVec 32)) SeekEntryResult!7964)

(assert (=> b!777849 (= lt!346573 (seekEntryOrOpen!0 lt!346574 lt!346571 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!432800 () Bool)

(declare-fun b!777850 () Bool)

(declare-fun lt!346569 () SeekEntryResult!7964)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42533 (_ BitVec 32)) SeekEntryResult!7964)

(assert (=> b!777850 (= e!432800 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20357 a!3186) j!159) a!3186 mask!3328) lt!346569))))

(declare-fun b!777851 () Bool)

(declare-fun res!526402 () Bool)

(assert (=> b!777851 (=> (not res!526402) (not e!432795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42533 (_ BitVec 32)) Bool)

(assert (=> b!777851 (= res!526402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777852 () Bool)

(declare-fun e!432799 () Bool)

(assert (=> b!777852 (= e!432799 e!432795)))

(declare-fun res!526393 () Bool)

(assert (=> b!777852 (=> (not res!526393) (not e!432795))))

(declare-fun lt!346575 () SeekEntryResult!7964)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777852 (= res!526393 (or (= lt!346575 (MissingZero!7964 i!1173)) (= lt!346575 (MissingVacant!7964 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!777852 (= lt!346575 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777853 () Bool)

(declare-fun res!526400 () Bool)

(assert (=> b!777853 (=> (not res!526400) (not e!432799))))

(declare-fun arrayContainsKey!0 (array!42533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777853 (= res!526400 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777854 () Bool)

(declare-fun e!432796 () Bool)

(assert (=> b!777854 (= e!432796 (not e!432794))))

(declare-fun res!526407 () Bool)

(assert (=> b!777854 (=> res!526407 e!432794)))

(declare-fun lt!346572 () SeekEntryResult!7964)

(assert (=> b!777854 (= res!526407 (or (not (is-Intermediate!7964 lt!346572)) (bvslt x!1131 (x!65189 lt!346572)) (not (= x!1131 (x!65189 lt!346572))) (not (= index!1321 (index!34225 lt!346572)))))))

(declare-fun e!432802 () Bool)

(assert (=> b!777854 e!432802))

(declare-fun res!526404 () Bool)

(assert (=> b!777854 (=> (not res!526404) (not e!432802))))

(assert (=> b!777854 (= res!526404 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26822 0))(
  ( (Unit!26823) )
))
(declare-fun lt!346568 () Unit!26822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26822)

(assert (=> b!777854 (= lt!346568 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777855 () Bool)

(declare-fun res!526395 () Bool)

(assert (=> b!777855 (=> (not res!526395) (not e!432799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777855 (= res!526395 (validKeyInArray!0 (select (arr!20357 a!3186) j!159)))))

(declare-fun b!777856 () Bool)

(declare-fun res!526399 () Bool)

(assert (=> b!777856 (=> res!526399 e!432794)))

(assert (=> b!777856 (= res!526399 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20357 a!3186) j!159) a!3186 mask!3328) (Found!7964 j!159))))))

(declare-fun b!777857 () Bool)

(declare-fun res!526396 () Bool)

(assert (=> b!777857 (=> (not res!526396) (not e!432799))))

(assert (=> b!777857 (= res!526396 (validKeyInArray!0 k!2102))))

(declare-fun b!777858 () Bool)

(assert (=> b!777858 (= e!432802 e!432800)))

(declare-fun res!526397 () Bool)

(assert (=> b!777858 (=> (not res!526397) (not e!432800))))

(assert (=> b!777858 (= res!526397 (= (seekEntryOrOpen!0 (select (arr!20357 a!3186) j!159) a!3186 mask!3328) lt!346569))))

(assert (=> b!777858 (= lt!346569 (Found!7964 j!159))))

(declare-fun b!777859 () Bool)

(declare-fun res!526401 () Bool)

(declare-fun e!432798 () Bool)

(assert (=> b!777859 (=> (not res!526401) (not e!432798))))

(assert (=> b!777859 (= res!526401 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20357 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777860 () Bool)

(declare-fun res!526406 () Bool)

(assert (=> b!777860 (=> (not res!526406) (not e!432798))))

(declare-fun e!432801 () Bool)

(assert (=> b!777860 (= res!526406 e!432801)))

(declare-fun c!86130 () Bool)

(assert (=> b!777860 (= c!86130 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777861 () Bool)

(declare-fun res!526403 () Bool)

(assert (=> b!777861 (=> (not res!526403) (not e!432799))))

(assert (=> b!777861 (= res!526403 (and (= (size!20778 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20778 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20778 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777862 () Bool)

(assert (=> b!777862 (= e!432801 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20357 a!3186) j!159) a!3186 mask!3328) (Found!7964 j!159)))))

(declare-fun res!526405 () Bool)

(assert (=> start!67286 (=> (not res!526405) (not e!432799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67286 (= res!526405 (validMask!0 mask!3328))))

(assert (=> start!67286 e!432799))

(assert (=> start!67286 true))

(declare-fun array_inv!16131 (array!42533) Bool)

(assert (=> start!67286 (array_inv!16131 a!3186)))

(declare-fun b!777863 () Bool)

(assert (=> b!777863 (= e!432798 e!432796)))

(declare-fun res!526392 () Bool)

(assert (=> b!777863 (=> (not res!526392) (not e!432796))))

(declare-fun lt!346576 () SeekEntryResult!7964)

(assert (=> b!777863 (= res!526392 (= lt!346576 lt!346572))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42533 (_ BitVec 32)) SeekEntryResult!7964)

(assert (=> b!777863 (= lt!346572 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346574 lt!346571 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777863 (= lt!346576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346574 mask!3328) lt!346574 lt!346571 mask!3328))))

(assert (=> b!777863 (= lt!346574 (select (store (arr!20357 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777863 (= lt!346571 (array!42534 (store (arr!20357 a!3186) i!1173 k!2102) (size!20778 a!3186)))))

(declare-fun b!777864 () Bool)

(declare-fun res!526394 () Bool)

(assert (=> b!777864 (=> (not res!526394) (not e!432795))))

(declare-datatypes ((List!14412 0))(
  ( (Nil!14409) (Cons!14408 (h!15519 (_ BitVec 64)) (t!20735 List!14412)) )
))
(declare-fun arrayNoDuplicates!0 (array!42533 (_ BitVec 32) List!14412) Bool)

(assert (=> b!777864 (= res!526394 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14409))))

(declare-fun b!777865 () Bool)

(declare-fun res!526408 () Bool)

(assert (=> b!777865 (=> res!526408 e!432794)))

(assert (=> b!777865 (= res!526408 (or (not (= (select (store (arr!20357 a!3186) i!1173 k!2102) index!1321) lt!346574)) (undefined!8776 lt!346572)))))

(declare-fun b!777866 () Bool)

(declare-fun lt!346570 () SeekEntryResult!7964)

(assert (=> b!777866 (= e!432801 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20357 a!3186) j!159) a!3186 mask!3328) lt!346570))))

(declare-fun b!777867 () Bool)

(assert (=> b!777867 (= e!432795 e!432798)))

(declare-fun res!526398 () Bool)

(assert (=> b!777867 (=> (not res!526398) (not e!432798))))

(assert (=> b!777867 (= res!526398 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20357 a!3186) j!159) mask!3328) (select (arr!20357 a!3186) j!159) a!3186 mask!3328) lt!346570))))

(assert (=> b!777867 (= lt!346570 (Intermediate!7964 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67286 res!526405) b!777861))

(assert (= (and b!777861 res!526403) b!777855))

(assert (= (and b!777855 res!526395) b!777857))

(assert (= (and b!777857 res!526396) b!777853))

(assert (= (and b!777853 res!526400) b!777852))

(assert (= (and b!777852 res!526393) b!777851))

(assert (= (and b!777851 res!526402) b!777864))

(assert (= (and b!777864 res!526394) b!777848))

(assert (= (and b!777848 res!526391) b!777867))

(assert (= (and b!777867 res!526398) b!777859))

(assert (= (and b!777859 res!526401) b!777860))

(assert (= (and b!777860 c!86130) b!777866))

(assert (= (and b!777860 (not c!86130)) b!777862))

(assert (= (and b!777860 res!526406) b!777863))

(assert (= (and b!777863 res!526392) b!777854))

(assert (= (and b!777854 res!526404) b!777858))

(assert (= (and b!777858 res!526397) b!777850))

(assert (= (and b!777854 (not res!526407)) b!777856))

(assert (= (and b!777856 (not res!526399)) b!777865))

(assert (= (and b!777865 (not res!526408)) b!777849))

(declare-fun m!721703 () Bool)

(assert (=> b!777863 m!721703))

(declare-fun m!721705 () Bool)

(assert (=> b!777863 m!721705))

(declare-fun m!721707 () Bool)

(assert (=> b!777863 m!721707))

(declare-fun m!721709 () Bool)

(assert (=> b!777863 m!721709))

(declare-fun m!721711 () Bool)

(assert (=> b!777863 m!721711))

(assert (=> b!777863 m!721707))

(declare-fun m!721713 () Bool)

(assert (=> b!777854 m!721713))

(declare-fun m!721715 () Bool)

(assert (=> b!777854 m!721715))

(declare-fun m!721717 () Bool)

(assert (=> b!777853 m!721717))

(declare-fun m!721719 () Bool)

(assert (=> start!67286 m!721719))

(declare-fun m!721721 () Bool)

(assert (=> start!67286 m!721721))

(declare-fun m!721723 () Bool)

(assert (=> b!777859 m!721723))

(declare-fun m!721725 () Bool)

(assert (=> b!777857 m!721725))

(declare-fun m!721727 () Bool)

(assert (=> b!777864 m!721727))

(declare-fun m!721729 () Bool)

(assert (=> b!777850 m!721729))

(assert (=> b!777850 m!721729))

(declare-fun m!721731 () Bool)

(assert (=> b!777850 m!721731))

(declare-fun m!721733 () Bool)

(assert (=> b!777849 m!721733))

(assert (=> b!777865 m!721703))

(declare-fun m!721735 () Bool)

(assert (=> b!777865 m!721735))

(assert (=> b!777855 m!721729))

(assert (=> b!777855 m!721729))

(declare-fun m!721737 () Bool)

(assert (=> b!777855 m!721737))

(declare-fun m!721739 () Bool)

(assert (=> b!777852 m!721739))

(declare-fun m!721741 () Bool)

(assert (=> b!777851 m!721741))

(assert (=> b!777866 m!721729))

(assert (=> b!777866 m!721729))

(declare-fun m!721743 () Bool)

(assert (=> b!777866 m!721743))

(assert (=> b!777862 m!721729))

(assert (=> b!777862 m!721729))

(declare-fun m!721745 () Bool)

(assert (=> b!777862 m!721745))

(assert (=> b!777856 m!721729))

(assert (=> b!777856 m!721729))

(assert (=> b!777856 m!721745))

(assert (=> b!777867 m!721729))

(assert (=> b!777867 m!721729))

(declare-fun m!721747 () Bool)

(assert (=> b!777867 m!721747))

(assert (=> b!777867 m!721747))

(assert (=> b!777867 m!721729))

(declare-fun m!721749 () Bool)

(assert (=> b!777867 m!721749))

(assert (=> b!777858 m!721729))

(assert (=> b!777858 m!721729))

(declare-fun m!721751 () Bool)

(assert (=> b!777858 m!721751))

(push 1)

