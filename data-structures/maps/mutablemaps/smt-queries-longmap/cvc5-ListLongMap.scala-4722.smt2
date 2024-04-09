; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65410 () Bool)

(assert start!65410)

(declare-fun b!743886 () Bool)

(declare-fun res!501072 () Bool)

(declare-fun e!415597 () Bool)

(assert (=> b!743886 (=> (not res!501072) (not e!415597))))

(declare-datatypes ((array!41536 0))(
  ( (array!41537 (arr!19878 (Array (_ BitVec 32) (_ BitVec 64))) (size!20299 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41536)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!743886 (= res!501072 (and (= (size!20299 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20299 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20299 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743887 () Bool)

(declare-fun res!501057 () Bool)

(declare-fun e!415599 () Bool)

(assert (=> b!743887 (=> (not res!501057) (not e!415599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41536 (_ BitVec 32)) Bool)

(assert (=> b!743887 (= res!501057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7485 0))(
  ( (MissingZero!7485 (index!32307 (_ BitVec 32))) (Found!7485 (index!32308 (_ BitVec 32))) (Intermediate!7485 (undefined!8297 Bool) (index!32309 (_ BitVec 32)) (x!63300 (_ BitVec 32))) (Undefined!7485) (MissingVacant!7485 (index!32310 (_ BitVec 32))) )
))
(declare-fun lt!330464 () SeekEntryResult!7485)

(declare-fun e!415602 () Bool)

(declare-fun b!743888 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41536 (_ BitVec 32)) SeekEntryResult!7485)

(assert (=> b!743888 (= e!415602 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19878 a!3186) j!159) a!3186 mask!3328) lt!330464))))

(declare-fun b!743889 () Bool)

(declare-fun res!501062 () Bool)

(assert (=> b!743889 (=> (not res!501062) (not e!415599))))

(declare-datatypes ((List!13933 0))(
  ( (Nil!13930) (Cons!13929 (h!15001 (_ BitVec 64)) (t!20256 List!13933)) )
))
(declare-fun arrayNoDuplicates!0 (array!41536 (_ BitVec 32) List!13933) Bool)

(assert (=> b!743889 (= res!501062 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13930))))

(declare-fun res!501067 () Bool)

(assert (=> start!65410 (=> (not res!501067) (not e!415597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65410 (= res!501067 (validMask!0 mask!3328))))

(assert (=> start!65410 e!415597))

(assert (=> start!65410 true))

(declare-fun array_inv!15652 (array!41536) Bool)

(assert (=> start!65410 (array_inv!15652 a!3186)))

(declare-fun b!743890 () Bool)

(declare-fun res!501071 () Bool)

(declare-fun e!415605 () Bool)

(assert (=> b!743890 (=> (not res!501071) (not e!415605))))

(assert (=> b!743890 (= res!501071 e!415602)))

(declare-fun c!81795 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743890 (= c!81795 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743891 () Bool)

(declare-fun e!415603 () Bool)

(assert (=> b!743891 (= e!415603 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!330462 () SeekEntryResult!7485)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41536 (_ BitVec 32)) SeekEntryResult!7485)

(assert (=> b!743891 (= lt!330462 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19878 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!743892 () Bool)

(assert (=> b!743892 (= e!415599 e!415605)))

(declare-fun res!501069 () Bool)

(assert (=> b!743892 (=> (not res!501069) (not e!415605))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743892 (= res!501069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19878 a!3186) j!159) mask!3328) (select (arr!19878 a!3186) j!159) a!3186 mask!3328) lt!330464))))

(assert (=> b!743892 (= lt!330464 (Intermediate!7485 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743893 () Bool)

(declare-fun res!501063 () Bool)

(assert (=> b!743893 (=> (not res!501063) (not e!415597))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743893 (= res!501063 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743894 () Bool)

(declare-fun res!501060 () Bool)

(assert (=> b!743894 (=> (not res!501060) (not e!415605))))

(assert (=> b!743894 (= res!501060 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19878 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743895 () Bool)

(declare-fun res!501066 () Bool)

(assert (=> b!743895 (=> (not res!501066) (not e!415599))))

(assert (=> b!743895 (= res!501066 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20299 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20299 a!3186))))))

(declare-fun b!743896 () Bool)

(declare-fun e!415604 () Bool)

(assert (=> b!743896 (= e!415604 (not e!415603))))

(declare-fun res!501065 () Bool)

(assert (=> b!743896 (=> res!501065 e!415603)))

(declare-fun lt!330468 () SeekEntryResult!7485)

(assert (=> b!743896 (= res!501065 (or (not (is-Intermediate!7485 lt!330468)) (bvslt x!1131 (x!63300 lt!330468)) (not (= x!1131 (x!63300 lt!330468))) (not (= index!1321 (index!32309 lt!330468)))))))

(declare-fun e!415598 () Bool)

(assert (=> b!743896 e!415598))

(declare-fun res!501061 () Bool)

(assert (=> b!743896 (=> (not res!501061) (not e!415598))))

(assert (=> b!743896 (= res!501061 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25450 0))(
  ( (Unit!25451) )
))
(declare-fun lt!330463 () Unit!25450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25450)

(assert (=> b!743896 (= lt!330463 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743897 () Bool)

(assert (=> b!743897 (= e!415605 e!415604)))

(declare-fun res!501068 () Bool)

(assert (=> b!743897 (=> (not res!501068) (not e!415604))))

(declare-fun lt!330466 () SeekEntryResult!7485)

(assert (=> b!743897 (= res!501068 (= lt!330466 lt!330468))))

(declare-fun lt!330470 () (_ BitVec 64))

(declare-fun lt!330465 () array!41536)

(assert (=> b!743897 (= lt!330468 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330470 lt!330465 mask!3328))))

(assert (=> b!743897 (= lt!330466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330470 mask!3328) lt!330470 lt!330465 mask!3328))))

(assert (=> b!743897 (= lt!330470 (select (store (arr!19878 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743897 (= lt!330465 (array!41537 (store (arr!19878 a!3186) i!1173 k!2102) (size!20299 a!3186)))))

(declare-fun b!743898 () Bool)

(declare-fun res!501059 () Bool)

(assert (=> b!743898 (=> (not res!501059) (not e!415597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743898 (= res!501059 (validKeyInArray!0 (select (arr!19878 a!3186) j!159)))))

(declare-fun b!743899 () Bool)

(assert (=> b!743899 (= e!415602 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19878 a!3186) j!159) a!3186 mask!3328) (Found!7485 j!159)))))

(declare-fun b!743900 () Bool)

(declare-fun res!501058 () Bool)

(assert (=> b!743900 (=> (not res!501058) (not e!415597))))

(assert (=> b!743900 (= res!501058 (validKeyInArray!0 k!2102))))

(declare-fun b!743901 () Bool)

(declare-fun e!415601 () Bool)

(assert (=> b!743901 (= e!415598 e!415601)))

(declare-fun res!501070 () Bool)

(assert (=> b!743901 (=> (not res!501070) (not e!415601))))

(declare-fun lt!330469 () SeekEntryResult!7485)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41536 (_ BitVec 32)) SeekEntryResult!7485)

(assert (=> b!743901 (= res!501070 (= (seekEntryOrOpen!0 (select (arr!19878 a!3186) j!159) a!3186 mask!3328) lt!330469))))

(assert (=> b!743901 (= lt!330469 (Found!7485 j!159))))

(declare-fun b!743902 () Bool)

(assert (=> b!743902 (= e!415601 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19878 a!3186) j!159) a!3186 mask!3328) lt!330469))))

(declare-fun b!743903 () Bool)

(assert (=> b!743903 (= e!415597 e!415599)))

(declare-fun res!501064 () Bool)

(assert (=> b!743903 (=> (not res!501064) (not e!415599))))

(declare-fun lt!330467 () SeekEntryResult!7485)

(assert (=> b!743903 (= res!501064 (or (= lt!330467 (MissingZero!7485 i!1173)) (= lt!330467 (MissingVacant!7485 i!1173))))))

(assert (=> b!743903 (= lt!330467 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65410 res!501067) b!743886))

(assert (= (and b!743886 res!501072) b!743898))

(assert (= (and b!743898 res!501059) b!743900))

(assert (= (and b!743900 res!501058) b!743893))

(assert (= (and b!743893 res!501063) b!743903))

(assert (= (and b!743903 res!501064) b!743887))

(assert (= (and b!743887 res!501057) b!743889))

(assert (= (and b!743889 res!501062) b!743895))

(assert (= (and b!743895 res!501066) b!743892))

(assert (= (and b!743892 res!501069) b!743894))

(assert (= (and b!743894 res!501060) b!743890))

(assert (= (and b!743890 c!81795) b!743888))

(assert (= (and b!743890 (not c!81795)) b!743899))

(assert (= (and b!743890 res!501071) b!743897))

(assert (= (and b!743897 res!501068) b!743896))

(assert (= (and b!743896 res!501061) b!743901))

(assert (= (and b!743901 res!501070) b!743902))

(assert (= (and b!743896 (not res!501065)) b!743891))

(declare-fun m!694579 () Bool)

(assert (=> b!743889 m!694579))

(declare-fun m!694581 () Bool)

(assert (=> b!743893 m!694581))

(declare-fun m!694583 () Bool)

(assert (=> b!743900 m!694583))

(declare-fun m!694585 () Bool)

(assert (=> b!743901 m!694585))

(assert (=> b!743901 m!694585))

(declare-fun m!694587 () Bool)

(assert (=> b!743901 m!694587))

(declare-fun m!694589 () Bool)

(assert (=> start!65410 m!694589))

(declare-fun m!694591 () Bool)

(assert (=> start!65410 m!694591))

(assert (=> b!743891 m!694585))

(assert (=> b!743891 m!694585))

(declare-fun m!694593 () Bool)

(assert (=> b!743891 m!694593))

(declare-fun m!694595 () Bool)

(assert (=> b!743894 m!694595))

(declare-fun m!694597 () Bool)

(assert (=> b!743896 m!694597))

(declare-fun m!694599 () Bool)

(assert (=> b!743896 m!694599))

(assert (=> b!743888 m!694585))

(assert (=> b!743888 m!694585))

(declare-fun m!694601 () Bool)

(assert (=> b!743888 m!694601))

(declare-fun m!694603 () Bool)

(assert (=> b!743903 m!694603))

(assert (=> b!743902 m!694585))

(assert (=> b!743902 m!694585))

(declare-fun m!694605 () Bool)

(assert (=> b!743902 m!694605))

(assert (=> b!743892 m!694585))

(assert (=> b!743892 m!694585))

(declare-fun m!694607 () Bool)

(assert (=> b!743892 m!694607))

(assert (=> b!743892 m!694607))

(assert (=> b!743892 m!694585))

(declare-fun m!694609 () Bool)

(assert (=> b!743892 m!694609))

(assert (=> b!743899 m!694585))

(assert (=> b!743899 m!694585))

(assert (=> b!743899 m!694593))

(assert (=> b!743898 m!694585))

(assert (=> b!743898 m!694585))

(declare-fun m!694611 () Bool)

(assert (=> b!743898 m!694611))

(declare-fun m!694613 () Bool)

(assert (=> b!743897 m!694613))

(declare-fun m!694615 () Bool)

(assert (=> b!743897 m!694615))

(assert (=> b!743897 m!694613))

(declare-fun m!694617 () Bool)

(assert (=> b!743897 m!694617))

(declare-fun m!694619 () Bool)

(assert (=> b!743897 m!694619))

(declare-fun m!694621 () Bool)

(assert (=> b!743897 m!694621))

(declare-fun m!694623 () Bool)

(assert (=> b!743887 m!694623))

(push 1)

