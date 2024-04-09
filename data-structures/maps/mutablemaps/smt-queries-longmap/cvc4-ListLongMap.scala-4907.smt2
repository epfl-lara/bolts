; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67706 () Bool)

(assert start!67706)

(declare-fun b!784346 () Bool)

(declare-datatypes ((Unit!27078 0))(
  ( (Unit!27079) )
))
(declare-fun e!436112 () Unit!27078)

(declare-fun Unit!27080 () Unit!27078)

(assert (=> b!784346 (= e!436112 Unit!27080)))

(declare-fun b!784347 () Bool)

(declare-fun res!530905 () Bool)

(declare-fun e!436109 () Bool)

(assert (=> b!784347 (=> (not res!530905) (not e!436109))))

(declare-datatypes ((array!42701 0))(
  ( (array!42702 (arr!20435 (Array (_ BitVec 32) (_ BitVec 64))) (size!20856 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42701)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42701 (_ BitVec 32)) Bool)

(assert (=> b!784347 (= res!530905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784349 () Bool)

(declare-fun e!436114 () Bool)

(assert (=> b!784349 (= e!436109 e!436114)))

(declare-fun res!530910 () Bool)

(assert (=> b!784349 (=> (not res!530910) (not e!436114))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8042 0))(
  ( (MissingZero!8042 (index!34535 (_ BitVec 32))) (Found!8042 (index!34536 (_ BitVec 32))) (Intermediate!8042 (undefined!8854 Bool) (index!34537 (_ BitVec 32)) (x!65511 (_ BitVec 32))) (Undefined!8042) (MissingVacant!8042 (index!34538 (_ BitVec 32))) )
))
(declare-fun lt!349679 () SeekEntryResult!8042)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42701 (_ BitVec 32)) SeekEntryResult!8042)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784349 (= res!530910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20435 a!3186) j!159) mask!3328) (select (arr!20435 a!3186) j!159) a!3186 mask!3328) lt!349679))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784349 (= lt!349679 (Intermediate!8042 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784350 () Bool)

(declare-fun e!436111 () Bool)

(declare-fun e!436108 () Bool)

(assert (=> b!784350 (= e!436111 e!436108)))

(declare-fun res!530908 () Bool)

(assert (=> b!784350 (=> res!530908 e!436108)))

(declare-fun lt!349678 () (_ BitVec 64))

(declare-fun lt!349670 () (_ BitVec 64))

(assert (=> b!784350 (= res!530908 (= lt!349678 lt!349670))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!784350 (= lt!349678 (select (store (arr!20435 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784351 () Bool)

(declare-fun res!530913 () Bool)

(assert (=> b!784351 (=> (not res!530913) (not e!436109))))

(declare-datatypes ((List!14490 0))(
  ( (Nil!14487) (Cons!14486 (h!15609 (_ BitVec 64)) (t!20813 List!14490)) )
))
(declare-fun arrayNoDuplicates!0 (array!42701 (_ BitVec 32) List!14490) Bool)

(assert (=> b!784351 (= res!530913 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14487))))

(declare-fun b!784352 () Bool)

(declare-fun e!436113 () Bool)

(assert (=> b!784352 (= e!436113 e!436111)))

(declare-fun res!530903 () Bool)

(assert (=> b!784352 (=> res!530903 e!436111)))

(declare-fun lt!349681 () SeekEntryResult!8042)

(declare-fun lt!349676 () SeekEntryResult!8042)

(assert (=> b!784352 (= res!530903 (not (= lt!349681 lt!349676)))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42701 (_ BitVec 32)) SeekEntryResult!8042)

(assert (=> b!784352 (= lt!349681 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20435 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784353 () Bool)

(declare-fun res!530916 () Bool)

(declare-fun e!436103 () Bool)

(assert (=> b!784353 (=> (not res!530916) (not e!436103))))

(declare-fun arrayContainsKey!0 (array!42701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784353 (= res!530916 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784354 () Bool)

(declare-fun e!436110 () Bool)

(assert (=> b!784354 (= e!436110 (not e!436113))))

(declare-fun res!530902 () Bool)

(assert (=> b!784354 (=> res!530902 e!436113)))

(declare-fun lt!349677 () SeekEntryResult!8042)

(assert (=> b!784354 (= res!530902 (or (not (is-Intermediate!8042 lt!349677)) (bvslt x!1131 (x!65511 lt!349677)) (not (= x!1131 (x!65511 lt!349677))) (not (= index!1321 (index!34537 lt!349677)))))))

(declare-fun e!436104 () Bool)

(assert (=> b!784354 e!436104))

(declare-fun res!530899 () Bool)

(assert (=> b!784354 (=> (not res!530899) (not e!436104))))

(declare-fun lt!349671 () SeekEntryResult!8042)

(assert (=> b!784354 (= res!530899 (= lt!349671 lt!349676))))

(assert (=> b!784354 (= lt!349676 (Found!8042 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42701 (_ BitVec 32)) SeekEntryResult!8042)

(assert (=> b!784354 (= lt!349671 (seekEntryOrOpen!0 (select (arr!20435 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784354 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349675 () Unit!27078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27078)

(assert (=> b!784354 (= lt!349675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784355 () Bool)

(declare-fun Unit!27081 () Unit!27078)

(assert (=> b!784355 (= e!436112 Unit!27081)))

(assert (=> b!784355 false))

(declare-fun b!784356 () Bool)

(assert (=> b!784356 (= e!436103 e!436109)))

(declare-fun res!530917 () Bool)

(assert (=> b!784356 (=> (not res!530917) (not e!436109))))

(declare-fun lt!349674 () SeekEntryResult!8042)

(assert (=> b!784356 (= res!530917 (or (= lt!349674 (MissingZero!8042 i!1173)) (= lt!349674 (MissingVacant!8042 i!1173))))))

(assert (=> b!784356 (= lt!349674 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784357 () Bool)

(declare-fun res!530907 () Bool)

(assert (=> b!784357 (=> (not res!530907) (not e!436103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784357 (= res!530907 (validKeyInArray!0 (select (arr!20435 a!3186) j!159)))))

(declare-fun b!784358 () Bool)

(declare-fun res!530904 () Bool)

(assert (=> b!784358 (=> (not res!530904) (not e!436114))))

(declare-fun e!436107 () Bool)

(assert (=> b!784358 (= res!530904 e!436107)))

(declare-fun c!87131 () Bool)

(assert (=> b!784358 (= c!87131 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784359 () Bool)

(declare-fun res!530906 () Bool)

(assert (=> b!784359 (=> (not res!530906) (not e!436103))))

(assert (=> b!784359 (= res!530906 (validKeyInArray!0 k!2102))))

(declare-fun b!784360 () Bool)

(declare-fun res!530914 () Bool)

(assert (=> b!784360 (=> (not res!530914) (not e!436103))))

(assert (=> b!784360 (= res!530914 (and (= (size!20856 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20856 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20856 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784361 () Bool)

(assert (=> b!784361 (= e!436108 true)))

(declare-fun e!436106 () Bool)

(assert (=> b!784361 e!436106))

(declare-fun res!530900 () Bool)

(assert (=> b!784361 (=> (not res!530900) (not e!436106))))

(assert (=> b!784361 (= res!530900 (= lt!349678 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349680 () Unit!27078)

(assert (=> b!784361 (= lt!349680 e!436112)))

(declare-fun c!87132 () Bool)

(assert (=> b!784361 (= c!87132 (= lt!349678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784362 () Bool)

(assert (=> b!784362 (= e!436104 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20435 a!3186) j!159) a!3186 mask!3328) lt!349676))))

(declare-fun b!784363 () Bool)

(assert (=> b!784363 (= e!436107 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20435 a!3186) j!159) a!3186 mask!3328) lt!349679))))

(declare-fun b!784364 () Bool)

(assert (=> b!784364 (= e!436107 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20435 a!3186) j!159) a!3186 mask!3328) (Found!8042 j!159)))))

(declare-fun b!784348 () Bool)

(declare-fun res!530912 () Bool)

(assert (=> b!784348 (=> (not res!530912) (not e!436109))))

(assert (=> b!784348 (= res!530912 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20856 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20856 a!3186))))))

(declare-fun res!530901 () Bool)

(assert (=> start!67706 (=> (not res!530901) (not e!436103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67706 (= res!530901 (validMask!0 mask!3328))))

(assert (=> start!67706 e!436103))

(assert (=> start!67706 true))

(declare-fun array_inv!16209 (array!42701) Bool)

(assert (=> start!67706 (array_inv!16209 a!3186)))

(declare-fun b!784365 () Bool)

(assert (=> b!784365 (= e!436106 (= lt!349671 lt!349681))))

(declare-fun b!784366 () Bool)

(assert (=> b!784366 (= e!436114 e!436110)))

(declare-fun res!530909 () Bool)

(assert (=> b!784366 (=> (not res!530909) (not e!436110))))

(declare-fun lt!349673 () SeekEntryResult!8042)

(assert (=> b!784366 (= res!530909 (= lt!349673 lt!349677))))

(declare-fun lt!349672 () array!42701)

(assert (=> b!784366 (= lt!349677 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349670 lt!349672 mask!3328))))

(assert (=> b!784366 (= lt!349673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349670 mask!3328) lt!349670 lt!349672 mask!3328))))

(assert (=> b!784366 (= lt!349670 (select (store (arr!20435 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784366 (= lt!349672 (array!42702 (store (arr!20435 a!3186) i!1173 k!2102) (size!20856 a!3186)))))

(declare-fun b!784367 () Bool)

(declare-fun res!530915 () Bool)

(assert (=> b!784367 (=> (not res!530915) (not e!436106))))

(assert (=> b!784367 (= res!530915 (= (seekEntryOrOpen!0 lt!349670 lt!349672 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349670 lt!349672 mask!3328)))))

(declare-fun b!784368 () Bool)

(declare-fun res!530911 () Bool)

(assert (=> b!784368 (=> (not res!530911) (not e!436114))))

(assert (=> b!784368 (= res!530911 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20435 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67706 res!530901) b!784360))

(assert (= (and b!784360 res!530914) b!784357))

(assert (= (and b!784357 res!530907) b!784359))

(assert (= (and b!784359 res!530906) b!784353))

(assert (= (and b!784353 res!530916) b!784356))

(assert (= (and b!784356 res!530917) b!784347))

(assert (= (and b!784347 res!530905) b!784351))

(assert (= (and b!784351 res!530913) b!784348))

(assert (= (and b!784348 res!530912) b!784349))

(assert (= (and b!784349 res!530910) b!784368))

(assert (= (and b!784368 res!530911) b!784358))

(assert (= (and b!784358 c!87131) b!784363))

(assert (= (and b!784358 (not c!87131)) b!784364))

(assert (= (and b!784358 res!530904) b!784366))

(assert (= (and b!784366 res!530909) b!784354))

(assert (= (and b!784354 res!530899) b!784362))

(assert (= (and b!784354 (not res!530902)) b!784352))

(assert (= (and b!784352 (not res!530903)) b!784350))

(assert (= (and b!784350 (not res!530908)) b!784361))

(assert (= (and b!784361 c!87132) b!784355))

(assert (= (and b!784361 (not c!87132)) b!784346))

(assert (= (and b!784361 res!530900) b!784367))

(assert (= (and b!784367 res!530915) b!784365))

(declare-fun m!726729 () Bool)

(assert (=> b!784359 m!726729))

(declare-fun m!726731 () Bool)

(assert (=> b!784353 m!726731))

(declare-fun m!726733 () Bool)

(assert (=> b!784347 m!726733))

(declare-fun m!726735 () Bool)

(assert (=> b!784368 m!726735))

(declare-fun m!726737 () Bool)

(assert (=> b!784350 m!726737))

(declare-fun m!726739 () Bool)

(assert (=> b!784350 m!726739))

(declare-fun m!726741 () Bool)

(assert (=> b!784363 m!726741))

(assert (=> b!784363 m!726741))

(declare-fun m!726743 () Bool)

(assert (=> b!784363 m!726743))

(assert (=> b!784354 m!726741))

(assert (=> b!784354 m!726741))

(declare-fun m!726745 () Bool)

(assert (=> b!784354 m!726745))

(declare-fun m!726747 () Bool)

(assert (=> b!784354 m!726747))

(declare-fun m!726749 () Bool)

(assert (=> b!784354 m!726749))

(assert (=> b!784349 m!726741))

(assert (=> b!784349 m!726741))

(declare-fun m!726751 () Bool)

(assert (=> b!784349 m!726751))

(assert (=> b!784349 m!726751))

(assert (=> b!784349 m!726741))

(declare-fun m!726753 () Bool)

(assert (=> b!784349 m!726753))

(declare-fun m!726755 () Bool)

(assert (=> b!784356 m!726755))

(declare-fun m!726757 () Bool)

(assert (=> b!784351 m!726757))

(assert (=> b!784362 m!726741))

(assert (=> b!784362 m!726741))

(declare-fun m!726759 () Bool)

(assert (=> b!784362 m!726759))

(declare-fun m!726761 () Bool)

(assert (=> start!67706 m!726761))

(declare-fun m!726763 () Bool)

(assert (=> start!67706 m!726763))

(declare-fun m!726765 () Bool)

(assert (=> b!784366 m!726765))

(declare-fun m!726767 () Bool)

(assert (=> b!784366 m!726767))

(declare-fun m!726769 () Bool)

(assert (=> b!784366 m!726769))

(assert (=> b!784366 m!726737))

(assert (=> b!784366 m!726765))

(declare-fun m!726771 () Bool)

(assert (=> b!784366 m!726771))

(assert (=> b!784357 m!726741))

(assert (=> b!784357 m!726741))

(declare-fun m!726773 () Bool)

(assert (=> b!784357 m!726773))

(assert (=> b!784352 m!726741))

(assert (=> b!784352 m!726741))

(declare-fun m!726775 () Bool)

(assert (=> b!784352 m!726775))

(declare-fun m!726777 () Bool)

(assert (=> b!784367 m!726777))

(declare-fun m!726779 () Bool)

(assert (=> b!784367 m!726779))

(assert (=> b!784364 m!726741))

(assert (=> b!784364 m!726741))

(assert (=> b!784364 m!726775))

(push 1)

