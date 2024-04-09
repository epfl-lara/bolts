; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65672 () Bool)

(assert start!65672)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41798 0))(
  ( (array!41799 (arr!20009 (Array (_ BitVec 32) (_ BitVec 64))) (size!20430 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41798)

(declare-fun e!419427 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!751846 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7616 0))(
  ( (MissingZero!7616 (index!32831 (_ BitVec 32))) (Found!7616 (index!32832 (_ BitVec 32))) (Intermediate!7616 (undefined!8428 Bool) (index!32833 (_ BitVec 32)) (x!63775 (_ BitVec 32))) (Undefined!7616) (MissingVacant!7616 (index!32834 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41798 (_ BitVec 32)) SeekEntryResult!7616)

(assert (=> b!751846 (= e!419427 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20009 a!3186) j!159) a!3186 mask!3328) (Found!7616 j!159)))))

(declare-fun b!751847 () Bool)

(declare-fun res!507774 () Bool)

(declare-fun e!419429 () Bool)

(assert (=> b!751847 (=> (not res!507774) (not e!419429))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751847 (= res!507774 (and (= (size!20430 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20430 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20430 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751848 () Bool)

(declare-fun e!419420 () Bool)

(declare-fun e!419419 () Bool)

(assert (=> b!751848 (= e!419420 e!419419)))

(declare-fun res!507783 () Bool)

(assert (=> b!751848 (=> (not res!507783) (not e!419419))))

(declare-fun lt!334420 () SeekEntryResult!7616)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41798 (_ BitVec 32)) SeekEntryResult!7616)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751848 (= res!507783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20009 a!3186) j!159) mask!3328) (select (arr!20009 a!3186) j!159) a!3186 mask!3328) lt!334420))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751848 (= lt!334420 (Intermediate!7616 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751849 () Bool)

(declare-fun e!419422 () Bool)

(declare-fun e!419426 () Bool)

(assert (=> b!751849 (= e!419422 e!419426)))

(declare-fun res!507766 () Bool)

(assert (=> b!751849 (=> res!507766 e!419426)))

(declare-fun lt!334427 () SeekEntryResult!7616)

(declare-fun lt!334424 () SeekEntryResult!7616)

(assert (=> b!751849 (= res!507766 (not (= lt!334427 lt!334424)))))

(assert (=> b!751849 (= lt!334427 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20009 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751850 () Bool)

(declare-fun e!419428 () Bool)

(assert (=> b!751850 (= e!419428 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun e!419430 () Bool)

(assert (=> b!751850 e!419430))

(declare-fun res!507777 () Bool)

(assert (=> b!751850 (=> (not res!507777) (not e!419430))))

(declare-fun lt!334422 () (_ BitVec 64))

(assert (=> b!751850 (= res!507777 (= lt!334422 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25866 0))(
  ( (Unit!25867) )
))
(declare-fun lt!334423 () Unit!25866)

(declare-fun e!419423 () Unit!25866)

(assert (=> b!751850 (= lt!334423 e!419423)))

(declare-fun c!82422 () Bool)

(assert (=> b!751850 (= c!82422 (= lt!334422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751851 () Bool)

(declare-fun res!507767 () Bool)

(assert (=> b!751851 (=> (not res!507767) (not e!419429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751851 (= res!507767 (validKeyInArray!0 (select (arr!20009 a!3186) j!159)))))

(declare-fun b!751852 () Bool)

(declare-fun e!419424 () Bool)

(assert (=> b!751852 (= e!419419 e!419424)))

(declare-fun res!507768 () Bool)

(assert (=> b!751852 (=> (not res!507768) (not e!419424))))

(declare-fun lt!334419 () SeekEntryResult!7616)

(declare-fun lt!334430 () SeekEntryResult!7616)

(assert (=> b!751852 (= res!507768 (= lt!334419 lt!334430))))

(declare-fun lt!334425 () array!41798)

(declare-fun lt!334421 () (_ BitVec 64))

(assert (=> b!751852 (= lt!334430 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334421 lt!334425 mask!3328))))

(assert (=> b!751852 (= lt!334419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334421 mask!3328) lt!334421 lt!334425 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751852 (= lt!334421 (select (store (arr!20009 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751852 (= lt!334425 (array!41799 (store (arr!20009 a!3186) i!1173 k!2102) (size!20430 a!3186)))))

(declare-fun b!751853 () Bool)

(declare-fun res!507778 () Bool)

(assert (=> b!751853 (=> (not res!507778) (not e!419429))))

(declare-fun arrayContainsKey!0 (array!41798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751853 (= res!507778 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751854 () Bool)

(assert (=> b!751854 (= e!419429 e!419420)))

(declare-fun res!507772 () Bool)

(assert (=> b!751854 (=> (not res!507772) (not e!419420))))

(declare-fun lt!334426 () SeekEntryResult!7616)

(assert (=> b!751854 (= res!507772 (or (= lt!334426 (MissingZero!7616 i!1173)) (= lt!334426 (MissingVacant!7616 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41798 (_ BitVec 32)) SeekEntryResult!7616)

(assert (=> b!751854 (= lt!334426 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751855 () Bool)

(declare-fun res!507779 () Bool)

(assert (=> b!751855 (=> (not res!507779) (not e!419420))))

(declare-datatypes ((List!14064 0))(
  ( (Nil!14061) (Cons!14060 (h!15132 (_ BitVec 64)) (t!20387 List!14064)) )
))
(declare-fun arrayNoDuplicates!0 (array!41798 (_ BitVec 32) List!14064) Bool)

(assert (=> b!751855 (= res!507779 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14061))))

(declare-fun res!507773 () Bool)

(assert (=> start!65672 (=> (not res!507773) (not e!419429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65672 (= res!507773 (validMask!0 mask!3328))))

(assert (=> start!65672 e!419429))

(assert (=> start!65672 true))

(declare-fun array_inv!15783 (array!41798) Bool)

(assert (=> start!65672 (array_inv!15783 a!3186)))

(declare-fun b!751856 () Bool)

(declare-fun res!507765 () Bool)

(assert (=> b!751856 (=> (not res!507765) (not e!419429))))

(assert (=> b!751856 (= res!507765 (validKeyInArray!0 k!2102))))

(declare-fun b!751857 () Bool)

(assert (=> b!751857 (= e!419424 (not e!419422))))

(declare-fun res!507776 () Bool)

(assert (=> b!751857 (=> res!507776 e!419422)))

(assert (=> b!751857 (= res!507776 (or (not (is-Intermediate!7616 lt!334430)) (bvslt x!1131 (x!63775 lt!334430)) (not (= x!1131 (x!63775 lt!334430))) (not (= index!1321 (index!32833 lt!334430)))))))

(declare-fun e!419425 () Bool)

(assert (=> b!751857 e!419425))

(declare-fun res!507769 () Bool)

(assert (=> b!751857 (=> (not res!507769) (not e!419425))))

(declare-fun lt!334428 () SeekEntryResult!7616)

(assert (=> b!751857 (= res!507769 (= lt!334428 lt!334424))))

(assert (=> b!751857 (= lt!334424 (Found!7616 j!159))))

(assert (=> b!751857 (= lt!334428 (seekEntryOrOpen!0 (select (arr!20009 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41798 (_ BitVec 32)) Bool)

(assert (=> b!751857 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334429 () Unit!25866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41798 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25866)

(assert (=> b!751857 (= lt!334429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751858 () Bool)

(assert (=> b!751858 (= e!419425 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20009 a!3186) j!159) a!3186 mask!3328) lt!334424))))

(declare-fun b!751859 () Bool)

(assert (=> b!751859 (= e!419426 e!419428)))

(declare-fun res!507782 () Bool)

(assert (=> b!751859 (=> res!507782 e!419428)))

(assert (=> b!751859 (= res!507782 (= lt!334422 lt!334421))))

(assert (=> b!751859 (= lt!334422 (select (store (arr!20009 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751860 () Bool)

(declare-fun res!507770 () Bool)

(assert (=> b!751860 (=> (not res!507770) (not e!419420))))

(assert (=> b!751860 (= res!507770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751861 () Bool)

(declare-fun Unit!25868 () Unit!25866)

(assert (=> b!751861 (= e!419423 Unit!25868)))

(assert (=> b!751861 false))

(declare-fun b!751862 () Bool)

(declare-fun res!507780 () Bool)

(assert (=> b!751862 (=> (not res!507780) (not e!419430))))

(assert (=> b!751862 (= res!507780 (= (seekEntryOrOpen!0 lt!334421 lt!334425 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334421 lt!334425 mask!3328)))))

(declare-fun b!751863 () Bool)

(assert (=> b!751863 (= e!419430 (= lt!334428 lt!334427))))

(declare-fun b!751864 () Bool)

(assert (=> b!751864 (= e!419427 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20009 a!3186) j!159) a!3186 mask!3328) lt!334420))))

(declare-fun b!751865 () Bool)

(declare-fun res!507771 () Bool)

(assert (=> b!751865 (=> (not res!507771) (not e!419419))))

(assert (=> b!751865 (= res!507771 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20009 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751866 () Bool)

(declare-fun res!507781 () Bool)

(assert (=> b!751866 (=> (not res!507781) (not e!419420))))

(assert (=> b!751866 (= res!507781 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20430 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20430 a!3186))))))

(declare-fun b!751867 () Bool)

(declare-fun Unit!25869 () Unit!25866)

(assert (=> b!751867 (= e!419423 Unit!25869)))

(declare-fun b!751868 () Bool)

(declare-fun res!507775 () Bool)

(assert (=> b!751868 (=> (not res!507775) (not e!419419))))

(assert (=> b!751868 (= res!507775 e!419427)))

(declare-fun c!82421 () Bool)

(assert (=> b!751868 (= c!82421 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65672 res!507773) b!751847))

(assert (= (and b!751847 res!507774) b!751851))

(assert (= (and b!751851 res!507767) b!751856))

(assert (= (and b!751856 res!507765) b!751853))

(assert (= (and b!751853 res!507778) b!751854))

(assert (= (and b!751854 res!507772) b!751860))

(assert (= (and b!751860 res!507770) b!751855))

(assert (= (and b!751855 res!507779) b!751866))

(assert (= (and b!751866 res!507781) b!751848))

(assert (= (and b!751848 res!507783) b!751865))

(assert (= (and b!751865 res!507771) b!751868))

(assert (= (and b!751868 c!82421) b!751864))

(assert (= (and b!751868 (not c!82421)) b!751846))

(assert (= (and b!751868 res!507775) b!751852))

(assert (= (and b!751852 res!507768) b!751857))

(assert (= (and b!751857 res!507769) b!751858))

(assert (= (and b!751857 (not res!507776)) b!751849))

(assert (= (and b!751849 (not res!507766)) b!751859))

(assert (= (and b!751859 (not res!507782)) b!751850))

(assert (= (and b!751850 c!82422) b!751861))

(assert (= (and b!751850 (not c!82422)) b!751867))

(assert (= (and b!751850 res!507777) b!751862))

(assert (= (and b!751862 res!507780) b!751863))

(declare-fun m!701001 () Bool)

(assert (=> b!751852 m!701001))

(declare-fun m!701003 () Bool)

(assert (=> b!751852 m!701003))

(assert (=> b!751852 m!701001))

(declare-fun m!701005 () Bool)

(assert (=> b!751852 m!701005))

(declare-fun m!701007 () Bool)

(assert (=> b!751852 m!701007))

(declare-fun m!701009 () Bool)

(assert (=> b!751852 m!701009))

(declare-fun m!701011 () Bool)

(assert (=> b!751854 m!701011))

(declare-fun m!701013 () Bool)

(assert (=> b!751855 m!701013))

(declare-fun m!701015 () Bool)

(assert (=> b!751862 m!701015))

(declare-fun m!701017 () Bool)

(assert (=> b!751862 m!701017))

(declare-fun m!701019 () Bool)

(assert (=> b!751865 m!701019))

(declare-fun m!701021 () Bool)

(assert (=> b!751858 m!701021))

(assert (=> b!751858 m!701021))

(declare-fun m!701023 () Bool)

(assert (=> b!751858 m!701023))

(assert (=> b!751859 m!701007))

(declare-fun m!701025 () Bool)

(assert (=> b!751859 m!701025))

(declare-fun m!701027 () Bool)

(assert (=> start!65672 m!701027))

(declare-fun m!701029 () Bool)

(assert (=> start!65672 m!701029))

(assert (=> b!751857 m!701021))

(assert (=> b!751857 m!701021))

(declare-fun m!701031 () Bool)

(assert (=> b!751857 m!701031))

(declare-fun m!701033 () Bool)

(assert (=> b!751857 m!701033))

(declare-fun m!701035 () Bool)

(assert (=> b!751857 m!701035))

(assert (=> b!751849 m!701021))

(assert (=> b!751849 m!701021))

(declare-fun m!701037 () Bool)

(assert (=> b!751849 m!701037))

(assert (=> b!751846 m!701021))

(assert (=> b!751846 m!701021))

(assert (=> b!751846 m!701037))

(assert (=> b!751864 m!701021))

(assert (=> b!751864 m!701021))

(declare-fun m!701039 () Bool)

(assert (=> b!751864 m!701039))

(assert (=> b!751851 m!701021))

(assert (=> b!751851 m!701021))

(declare-fun m!701041 () Bool)

(assert (=> b!751851 m!701041))

(declare-fun m!701043 () Bool)

(assert (=> b!751860 m!701043))

(declare-fun m!701045 () Bool)

(assert (=> b!751856 m!701045))

(declare-fun m!701047 () Bool)

(assert (=> b!751853 m!701047))

(assert (=> b!751848 m!701021))

(assert (=> b!751848 m!701021))

(declare-fun m!701049 () Bool)

(assert (=> b!751848 m!701049))

(assert (=> b!751848 m!701049))

(assert (=> b!751848 m!701021))

(declare-fun m!701051 () Bool)

(assert (=> b!751848 m!701051))

(push 1)

