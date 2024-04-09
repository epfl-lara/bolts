; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65462 () Bool)

(assert start!65462)

(declare-fun b!745317 () Bool)

(declare-fun res!502346 () Bool)

(declare-fun e!416302 () Bool)

(assert (=> b!745317 (=> (not res!502346) (not e!416302))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41588 0))(
  ( (array!41589 (arr!19904 (Array (_ BitVec 32) (_ BitVec 64))) (size!20325 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41588)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745317 (= res!502346 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19904 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!502347 () Bool)

(declare-fun e!416304 () Bool)

(assert (=> start!65462 (=> (not res!502347) (not e!416304))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65462 (= res!502347 (validMask!0 mask!3328))))

(assert (=> start!65462 e!416304))

(assert (=> start!65462 true))

(declare-fun array_inv!15678 (array!41588) Bool)

(assert (=> start!65462 (array_inv!15678 a!3186)))

(declare-fun b!745318 () Bool)

(declare-fun res!502345 () Bool)

(assert (=> b!745318 (=> (not res!502345) (not e!416304))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!745318 (= res!502345 (and (= (size!20325 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20325 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20325 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745319 () Bool)

(declare-fun res!502336 () Bool)

(declare-fun e!416303 () Bool)

(assert (=> b!745319 (=> (not res!502336) (not e!416303))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745319 (= res!502336 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20325 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20325 a!3186))))))

(declare-fun b!745320 () Bool)

(declare-datatypes ((SeekEntryResult!7511 0))(
  ( (MissingZero!7511 (index!32411 (_ BitVec 32))) (Found!7511 (index!32412 (_ BitVec 32))) (Intermediate!7511 (undefined!8323 Bool) (index!32413 (_ BitVec 32)) (x!63390 (_ BitVec 32))) (Undefined!7511) (MissingVacant!7511 (index!32414 (_ BitVec 32))) )
))
(declare-fun lt!331140 () SeekEntryResult!7511)

(declare-fun e!416299 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41588 (_ BitVec 32)) SeekEntryResult!7511)

(assert (=> b!745320 (= e!416299 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19904 a!3186) j!159) a!3186 mask!3328) lt!331140))))

(declare-fun e!416305 () Bool)

(declare-fun lt!331137 () SeekEntryResult!7511)

(declare-fun b!745321 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41588 (_ BitVec 32)) SeekEntryResult!7511)

(assert (=> b!745321 (= e!416305 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19904 a!3186) j!159) a!3186 mask!3328) lt!331137))))

(declare-fun b!745322 () Bool)

(declare-fun res!502339 () Bool)

(assert (=> b!745322 (=> (not res!502339) (not e!416303))))

(declare-datatypes ((List!13959 0))(
  ( (Nil!13956) (Cons!13955 (h!15027 (_ BitVec 64)) (t!20282 List!13959)) )
))
(declare-fun arrayNoDuplicates!0 (array!41588 (_ BitVec 32) List!13959) Bool)

(assert (=> b!745322 (= res!502339 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13956))))

(declare-fun b!745323 () Bool)

(declare-fun res!502344 () Bool)

(assert (=> b!745323 (=> (not res!502344) (not e!416302))))

(assert (=> b!745323 (= res!502344 e!416299)))

(declare-fun c!81873 () Bool)

(assert (=> b!745323 (= c!81873 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745324 () Bool)

(assert (=> b!745324 (= e!416303 e!416302)))

(declare-fun res!502342 () Bool)

(assert (=> b!745324 (=> (not res!502342) (not e!416302))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745324 (= res!502342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19904 a!3186) j!159) mask!3328) (select (arr!19904 a!3186) j!159) a!3186 mask!3328) lt!331140))))

(assert (=> b!745324 (= lt!331140 (Intermediate!7511 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745325 () Bool)

(assert (=> b!745325 (= e!416304 e!416303)))

(declare-fun res!502332 () Bool)

(assert (=> b!745325 (=> (not res!502332) (not e!416303))))

(declare-fun lt!331139 () SeekEntryResult!7511)

(assert (=> b!745325 (= res!502332 (or (= lt!331139 (MissingZero!7511 i!1173)) (= lt!331139 (MissingVacant!7511 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41588 (_ BitVec 32)) SeekEntryResult!7511)

(assert (=> b!745325 (= lt!331139 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745326 () Bool)

(declare-fun res!502341 () Bool)

(assert (=> b!745326 (=> (not res!502341) (not e!416304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745326 (= res!502341 (validKeyInArray!0 (select (arr!19904 a!3186) j!159)))))

(declare-fun b!745327 () Bool)

(declare-fun e!416307 () Bool)

(assert (=> b!745327 (= e!416302 e!416307)))

(declare-fun res!502338 () Bool)

(assert (=> b!745327 (=> (not res!502338) (not e!416307))))

(declare-fun lt!331145 () SeekEntryResult!7511)

(declare-fun lt!331142 () SeekEntryResult!7511)

(assert (=> b!745327 (= res!502338 (= lt!331145 lt!331142))))

(declare-fun lt!331143 () array!41588)

(declare-fun lt!331141 () (_ BitVec 64))

(assert (=> b!745327 (= lt!331142 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331141 lt!331143 mask!3328))))

(assert (=> b!745327 (= lt!331145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331141 mask!3328) lt!331141 lt!331143 mask!3328))))

(assert (=> b!745327 (= lt!331141 (select (store (arr!19904 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745327 (= lt!331143 (array!41589 (store (arr!19904 a!3186) i!1173 k!2102) (size!20325 a!3186)))))

(declare-fun b!745328 () Bool)

(declare-fun res!502340 () Bool)

(assert (=> b!745328 (=> (not res!502340) (not e!416304))))

(assert (=> b!745328 (= res!502340 (validKeyInArray!0 k!2102))))

(declare-fun b!745329 () Bool)

(declare-fun e!416300 () Bool)

(assert (=> b!745329 (= e!416300 true)))

(declare-fun lt!331144 () SeekEntryResult!7511)

(assert (=> b!745329 (= lt!331144 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19904 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745330 () Bool)

(assert (=> b!745330 (= e!416307 (not e!416300))))

(declare-fun res!502334 () Bool)

(assert (=> b!745330 (=> res!502334 e!416300)))

(assert (=> b!745330 (= res!502334 (or (not (is-Intermediate!7511 lt!331142)) (bvslt x!1131 (x!63390 lt!331142)) (not (= x!1131 (x!63390 lt!331142))) (not (= index!1321 (index!32413 lt!331142)))))))

(declare-fun e!416306 () Bool)

(assert (=> b!745330 e!416306))

(declare-fun res!502333 () Bool)

(assert (=> b!745330 (=> (not res!502333) (not e!416306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41588 (_ BitVec 32)) Bool)

(assert (=> b!745330 (= res!502333 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25502 0))(
  ( (Unit!25503) )
))
(declare-fun lt!331138 () Unit!25502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25502)

(assert (=> b!745330 (= lt!331138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745331 () Bool)

(declare-fun res!502337 () Bool)

(assert (=> b!745331 (=> (not res!502337) (not e!416304))))

(declare-fun arrayContainsKey!0 (array!41588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745331 (= res!502337 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745332 () Bool)

(declare-fun res!502343 () Bool)

(assert (=> b!745332 (=> (not res!502343) (not e!416303))))

(assert (=> b!745332 (= res!502343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745333 () Bool)

(assert (=> b!745333 (= e!416306 e!416305)))

(declare-fun res!502335 () Bool)

(assert (=> b!745333 (=> (not res!502335) (not e!416305))))

(assert (=> b!745333 (= res!502335 (= (seekEntryOrOpen!0 (select (arr!19904 a!3186) j!159) a!3186 mask!3328) lt!331137))))

(assert (=> b!745333 (= lt!331137 (Found!7511 j!159))))

(declare-fun b!745334 () Bool)

(assert (=> b!745334 (= e!416299 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19904 a!3186) j!159) a!3186 mask!3328) (Found!7511 j!159)))))

(assert (= (and start!65462 res!502347) b!745318))

(assert (= (and b!745318 res!502345) b!745326))

(assert (= (and b!745326 res!502341) b!745328))

(assert (= (and b!745328 res!502340) b!745331))

(assert (= (and b!745331 res!502337) b!745325))

(assert (= (and b!745325 res!502332) b!745332))

(assert (= (and b!745332 res!502343) b!745322))

(assert (= (and b!745322 res!502339) b!745319))

(assert (= (and b!745319 res!502336) b!745324))

(assert (= (and b!745324 res!502342) b!745317))

(assert (= (and b!745317 res!502346) b!745323))

(assert (= (and b!745323 c!81873) b!745320))

(assert (= (and b!745323 (not c!81873)) b!745334))

(assert (= (and b!745323 res!502344) b!745327))

(assert (= (and b!745327 res!502338) b!745330))

(assert (= (and b!745330 res!502333) b!745333))

(assert (= (and b!745333 res!502335) b!745321))

(assert (= (and b!745330 (not res!502334)) b!745329))

(declare-fun m!695793 () Bool)

(assert (=> b!745328 m!695793))

(declare-fun m!695795 () Bool)

(assert (=> b!745322 m!695795))

(declare-fun m!695797 () Bool)

(assert (=> b!745330 m!695797))

(declare-fun m!695799 () Bool)

(assert (=> b!745330 m!695799))

(declare-fun m!695801 () Bool)

(assert (=> b!745329 m!695801))

(assert (=> b!745329 m!695801))

(declare-fun m!695803 () Bool)

(assert (=> b!745329 m!695803))

(assert (=> b!745326 m!695801))

(assert (=> b!745326 m!695801))

(declare-fun m!695805 () Bool)

(assert (=> b!745326 m!695805))

(declare-fun m!695807 () Bool)

(assert (=> b!745317 m!695807))

(assert (=> b!745334 m!695801))

(assert (=> b!745334 m!695801))

(assert (=> b!745334 m!695803))

(declare-fun m!695809 () Bool)

(assert (=> b!745325 m!695809))

(assert (=> b!745333 m!695801))

(assert (=> b!745333 m!695801))

(declare-fun m!695811 () Bool)

(assert (=> b!745333 m!695811))

(assert (=> b!745321 m!695801))

(assert (=> b!745321 m!695801))

(declare-fun m!695813 () Bool)

(assert (=> b!745321 m!695813))

(assert (=> b!745320 m!695801))

(assert (=> b!745320 m!695801))

(declare-fun m!695815 () Bool)

(assert (=> b!745320 m!695815))

(declare-fun m!695817 () Bool)

(assert (=> b!745331 m!695817))

(declare-fun m!695819 () Bool)

(assert (=> start!65462 m!695819))

(declare-fun m!695821 () Bool)

(assert (=> start!65462 m!695821))

(assert (=> b!745324 m!695801))

(assert (=> b!745324 m!695801))

(declare-fun m!695823 () Bool)

(assert (=> b!745324 m!695823))

(assert (=> b!745324 m!695823))

(assert (=> b!745324 m!695801))

(declare-fun m!695825 () Bool)

(assert (=> b!745324 m!695825))

(declare-fun m!695827 () Bool)

(assert (=> b!745332 m!695827))

(declare-fun m!695829 () Bool)

(assert (=> b!745327 m!695829))

(declare-fun m!695831 () Bool)

(assert (=> b!745327 m!695831))

(declare-fun m!695833 () Bool)

(assert (=> b!745327 m!695833))

(declare-fun m!695835 () Bool)

(assert (=> b!745327 m!695835))

(assert (=> b!745327 m!695829))

(declare-fun m!695837 () Bool)

(assert (=> b!745327 m!695837))

(push 1)

